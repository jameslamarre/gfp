-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 25, 2020 at 03:28 PM
-- Server version: 5.7.25
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `gfp`
--

-- --------------------------------------------------------

--
-- Table structure for table `craft_assetindexdata`
--

CREATE TABLE `craft_assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` varchar(36) NOT NULL DEFAULT '',
  `volumeId` int(11) NOT NULL,
  `uri` text,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `recordId` int(11) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `craft_assets`
--

CREATE TABLE `craft_assets` (
  `id` int(11) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `kind` varchar(50) NOT NULL DEFAULT 'unknown',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `focalPoint` varchar(13) DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_assets`
--

INSERT INTO `craft_assets` (`id`, `volumeId`, `folderId`, `filename`, `kind`, `width`, `height`, `size`, `focalPoint`, `deletedWithVolume`, `keptFile`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(16, 1, 1, 'Image2.png', 'image', 1440, 700, 1168614, NULL, NULL, NULL, '2019-11-23 20:23:43', '2019-11-23 20:23:43', '2019-11-23 20:23:48', '35da5cf1-c393-4385-9631-966ff11e13d5'),
(17, 1, 1, 'Image1_Duo.png', 'image', 1440, 700, 1800984, NULL, NULL, NULL, '2019-11-23 20:24:32', '2019-11-23 20:24:32', '2019-11-23 20:24:37', 'c99cbd00-1cd0-476b-90e6-034b80a8ee5f'),
(107, 1, 1, '2017_06_25_NYC_PRIDE_GENDER_AND_FAMILY_PROJECT_135.png', 'image', 1442, 700, 1926713, NULL, NULL, NULL, '2019-12-04 21:00:16', '2019-12-04 20:28:01', '2019-12-04 21:00:16', 'f931779b-ca67-4213-a5cc-a4d342be410d'),
(120, 1, 1, '2017_06_25_NYC_PRIDE_GENDER_AND_FAMILY_PROJECT_135_191204_205007.png', 'image', 1442, 700, 1779980, NULL, 0, 0, '2019-12-04 20:50:07', '2019-12-04 20:50:07', '2019-12-04 20:50:07', 'dd943497-5edb-45ea-ac6c-6ca83bf728a4'),
(125, 1, 1, '2017_06_25_NYC_PRIDE_GENDER_AND_FAMILY_PROJECT_135_191204_210012.png', 'image', 1442, 700, 1926713, NULL, 0, 0, '2019-12-04 21:00:13', '2019-12-04 21:00:13', '2019-12-04 21:00:13', '8fa39bbc-196e-4a14-9dcc-e7e97b013761'),
(130, 1, 1, '2017_06_25_NYC_PRIDE_GENDER_AND_FAMILY_PROJECT_135_2.png', 'image', 1442, 750, 1803540, NULL, NULL, NULL, '2019-12-04 21:08:46', '2019-12-04 21:08:46', '2019-12-04 21:08:46', '054c76ec-f9ba-41ed-acd1-5dce45bd8cc3'),
(135, 1, 1, '20190118_Ackerman_118.png', 'image', 1452, 600, 1094009, NULL, NULL, NULL, '2019-12-04 21:20:48', '2019-12-04 21:17:09', '2019-12-04 21:20:48', 'e67db94a-217a-4104-982a-eec1a4d6e3ac'),
(140, 1, 1, '20190118_Ackerman_118_191204_212044.png', 'image', 1452, 600, 1094009, NULL, 0, 0, '2019-12-04 21:20:45', '2019-12-04 21:20:45', '2019-12-04 21:20:45', 'a5910c96-7520-4531-9d9e-c5ef06d7b339'),
(143, 1, 1, 'GFP_Back_Heart3.png', 'image', 1440, 600, 1220101, NULL, NULL, NULL, '2019-12-04 21:25:06', '2019-12-04 21:25:06', '2019-12-04 21:25:06', '7773f8c8-7ecd-46f9-bfea-ac227d148ea3'),
(266, 2, 4, 'small.mp4', 'video', NULL, NULL, 383631, NULL, NULL, NULL, '2020-01-19 02:05:44', '2020-01-19 02:05:45', '2020-01-19 02:05:45', '919940d4-32dd-4d33-93d3-e65d1447acba'),
(303, 1, 1, 'phone.png', 'image', 15, 28, 1776, NULL, NULL, NULL, '2020-01-25 14:42:17', '2020-01-25 14:42:17', '2020-01-25 14:42:17', '93e4f465-6f2f-4d9f-b827-d2e1bb76d21d'),
(318, 1, 1, 'arrow.svg', 'image', 24, 16, 629, NULL, NULL, NULL, '2020-01-25 14:54:12', '2020-01-25 14:49:33', '2020-01-25 14:54:12', '5eeeb929-e7e9-4075-9b0e-a590a1939ab3'),
(326, 1, 1, 'arrow_200125_145408.svg', 'image', 24, 16, 629, NULL, 0, 0, '2020-01-25 14:54:08', '2020-01-25 14:54:08', '2020-01-25 14:54:08', '3583c68a-e1b2-4528-a25a-3c4d70035d33'),
(382, 1, 1, 'book.svg', 'image', 25, 19, 2806, NULL, NULL, NULL, '2020-01-25 15:53:23', '2020-01-25 15:53:23', '2020-01-25 15:53:23', 'e5ce3497-936f-4c06-9b4b-46a023324c94');

-- --------------------------------------------------------

--
-- Table structure for table `craft_assettransformindex`
--

CREATE TABLE `craft_assettransformindex` (
  `id` int(11) NOT NULL,
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
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `craft_assettransforms`
--

CREATE TABLE `craft_assettransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `mode` enum('stretch','fit','crop') NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') NOT NULL DEFAULT 'center-center',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') NOT NULL DEFAULT 'none',
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `craft_categories`
--

CREATE TABLE `craft_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `craft_categorygroups`
--

CREATE TABLE `craft_categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `craft_categorygroups_sites`
--

CREATE TABLE `craft_categorygroups_sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `craft_content`
--

CREATE TABLE `craft_content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_textField` text,
  `field_backgroundColor` varchar(7) DEFAULT NULL,
  `field_sectionLinks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_content`
--

INSERT INTO `craft_content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_textField`, `field_backgroundColor`, `field_sectionLinks`) VALUES
(1, 1, 1, NULL, '2019-11-16 18:40:28', '2019-11-16 18:54:52', '78ba5682-94fe-486d-bb88-6ad67188f959', NULL, NULL, NULL),
(2, 2, 1, 'Home Page', '2019-11-23 17:00:31', '2020-01-19 02:06:32', '01cdbe40-483c-46b0-a5f5-3d704a7f9133', NULL, NULL, NULL),
(3, 3, 1, 'Home Page', '2019-11-23 17:00:31', '2019-11-23 17:00:31', 'f0ff8a73-6759-42c3-8f94-91e55bd179a7', NULL, NULL, NULL),
(4, 4, 1, 'About', '2019-11-23 17:07:16', '2020-01-16 02:10:25', '5bb592cc-f60e-44ec-a442-e27d91bab2c8', '<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:<br /></p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>', NULL, NULL),
(5, 5, 1, 'About Page', '2019-11-23 17:07:16', '2019-11-23 17:07:16', '5c92a660-0319-413b-97fc-acccb137eb63', NULL, NULL, NULL),
(6, 6, 1, 'Get In Touch', '2019-11-23 17:07:59', '2020-01-19 01:36:31', '9f52159b-d939-42c0-a5fb-d0bc29687ada', NULL, NULL, NULL),
(7, 7, 1, 'Get Involved', '2019-11-23 17:07:59', '2019-11-23 17:07:59', '82435f44-d769-4ce0-8174-59954588af37', NULL, NULL, NULL),
(8, 8, 1, NULL, '2019-11-23 18:23:43', '2019-12-04 03:53:35', '94201220-0a39-40c6-820e-9a102221696f', '<h2>Empowering youth, families and communities with gender affirming services, training and research.</h2>', NULL, NULL),
(9, 9, 1, NULL, '2019-11-23 18:37:41', '2019-12-05 00:38:34', '497b3dcb-8ff1-4718-9a8b-e93c7e63c14e', '<p>936 BROADWAY, 2ND FLOOR</p><p>NYC, NY 10010</p><p>(212)-879-4900 x370</p>', NULL, NULL),
(10, 10, 1, NULL, '2019-11-23 18:38:06', '2019-12-07 03:37:22', '44a77b19-25e6-4bde-be06-4bac41bb88d2', '<p>@GenderandFamilyProject</p>', NULL, NULL),
(11, 11, 1, '404 Page', '2019-11-23 18:53:39', '2020-01-25 20:03:29', 'a1a5e556-fd8e-450b-932a-1660603d8a84', '<h1>404 Error</h1><p>Sorry, the page you requested could not be found. </p><p>Please see the links below for other content you might be interested in. </p>', NULL, NULL),
(12, 12, 1, '404 Page', '2019-11-23 18:53:39', '2019-11-23 18:53:39', '12697b13-0508-4e9d-9794-e18584d921c4', NULL, NULL, NULL),
(13, 13, 1, '404 Page', '2019-11-23 18:54:05', '2019-11-23 18:54:05', '557197eb-22a3-4c98-bb07-c97848a5f310', NULL, NULL, NULL),
(14, 14, 1, '404 Page', '2019-11-23 18:54:34', '2019-11-23 18:54:34', '59bbeb95-522c-4f2a-8bbb-4f62e284e33e', '<p>This page does not exist. <a href=\"{entry:2:url}\">Back to home</a>. </p>', NULL, NULL),
(15, 15, 1, 'Home Page', '2019-11-23 20:21:15', '2019-11-23 20:21:15', 'cbe3d995-8eb1-4a82-82fe-402090971e44', NULL, NULL, NULL),
(16, 16, 1, 'Image2', '2019-11-23 20:23:41', '2019-11-23 20:23:48', 'ecb9f9e2-2d74-40e8-a21b-aefc8869b684', NULL, NULL, NULL),
(17, 17, 1, 'Image1 Duo', '2019-11-23 20:24:29', '2019-11-23 20:24:37', '3251550d-3fda-4beb-b871-461159686ca1', NULL, NULL, NULL),
(18, 20, 1, 'Home Page', '2019-11-23 20:25:01', '2019-11-23 20:25:01', '884769d0-c108-4e2e-a56f-0bfdb759ec06', NULL, NULL, NULL),
(19, 23, 1, 'Home Page', '2019-11-23 20:54:33', '2019-11-23 20:54:33', '15381b4f-d5ce-4849-9508-66c420487055', NULL, NULL, NULL),
(20, 26, 1, 'About Page', '2019-11-23 22:38:17', '2019-11-23 22:38:17', '69500e5b-33e9-4598-ab94-afd360da8149', NULL, NULL, NULL),
(21, 27, 1, 'Get Involved', '2019-11-23 22:38:24', '2019-11-23 22:38:24', 'f5d93285-9e12-4d5d-9b74-1eaa4058a34b', NULL, NULL, NULL),
(22, 28, 1, 'About Page', '2019-11-23 22:39:19', '2019-11-23 22:39:19', '48d3bd2f-de98-4ec0-bb0d-9458cf3b4f3a', '<p>MISSION</p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p><br /></p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>', NULL, NULL),
(23, 29, 1, 'About Page', '2019-11-23 22:49:56', '2019-11-23 22:49:56', '0e62cee8-af8d-4baf-8d55-323102bad80e', '<h1>MISSION</h1><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>', NULL, NULL),
(24, 30, 1, 'About Page', '2019-11-23 22:51:44', '2019-11-23 22:51:44', '23bc1a15-61d0-4a23-8e6a-862e1dc008c8', '<h1>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:<br /></h1><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>', NULL, NULL),
(25, 31, 1, 'About Page', '2019-11-23 22:51:59', '2019-11-23 22:51:59', '06a89320-d0a2-432b-a696-5d1610448e73', '<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:<br /></p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>', NULL, NULL),
(26, 32, 1, 'About Page', '2019-11-23 22:53:05', '2019-11-23 22:53:05', '059c7e47-0a17-406f-b94f-94e7c39672d8', '<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:<br /></p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>', NULL, NULL),
(27, 33, 1, 'About', '2019-11-23 22:53:15', '2019-11-23 22:53:15', '52e7b593-e4ed-41e5-8b03-1faec7dbbc06', '<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:<br /></p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>', NULL, NULL),
(28, 34, 1, 'Home Page', '2019-12-01 00:04:11', '2019-12-01 00:04:11', 'd23ad4ba-dd85-4ba6-ba19-7913225fa857', NULL, NULL, NULL),
(29, 38, 1, 'Home Page', '2019-12-01 00:09:15', '2019-12-01 00:09:15', 'b2b6e101-c699-43e3-addd-00da086e0e85', NULL, NULL, NULL),
(30, 42, 1, 'Home Page', '2019-12-01 00:13:23', '2019-12-01 00:13:23', '2694e56b-b02c-42fa-bb3e-829725f41baa', NULL, NULL, NULL),
(31, 46, 1, 'Home Page', '2019-12-01 00:14:59', '2019-12-01 00:14:59', '61278d62-f8ae-47dd-a7e9-96dbb850ba87', NULL, NULL, NULL),
(32, 50, 1, 'About', '2019-12-01 00:44:38', '2019-12-01 00:44:38', '6020bca6-9317-4d01-adc3-7b79adbcd799', '<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:<br /></p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>', NULL, NULL),
(33, 51, 1, 'About', '2019-12-01 00:44:38', '2019-12-01 00:44:38', '12de393b-7098-474b-915d-4771ca62b5bc', '<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:<br /></p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>', NULL, NULL),
(34, 52, 1, 'Get Involved', '2019-12-01 00:44:49', '2019-12-01 00:44:49', 'aa9b6705-b62f-438a-9512-0133ff4d2317', NULL, NULL, NULL),
(35, 54, 1, 'About', '2019-12-01 00:48:14', '2019-12-01 00:48:14', '2db239c2-8b9d-410e-921e-3289266c76de', NULL, NULL, NULL),
(36, 56, 1, 'About', '2019-12-01 00:52:47', '2019-12-01 00:52:47', '46ae0748-55e5-4e09-b42e-30803d45b43a', NULL, NULL, NULL),
(37, 58, 1, 'About', '2019-12-01 00:52:48', '2019-12-01 00:52:48', 'f2472c38-3598-40a4-a1c6-b180b2227332', NULL, NULL, NULL),
(38, 60, 1, 'Get Involved', '2019-12-01 00:52:58', '2019-12-01 00:52:58', 'b0a99dfb-8352-44d7-b6fe-0755293de6f7', NULL, NULL, NULL),
(39, 61, 1, 'Home Page', '2019-12-01 19:11:21', '2019-12-01 19:11:21', '2ec984ee-fca2-46d0-882e-76c32c905ffc', NULL, NULL, NULL),
(40, 65, 1, 'Home Page', '2019-12-04 03:38:47', '2019-12-04 03:38:47', 'd3e36461-03d0-48b7-8506-bf88d8ef323f', NULL, NULL, NULL),
(42, 72, 1, 'About', '2019-12-04 20:03:31', '2019-12-04 20:03:31', 'dfb5ff10-5617-4423-a4fd-30a5cfbd9670', NULL, NULL, NULL),
(43, 74, 1, 'Home Page', '2019-12-04 20:09:38', '2019-12-04 20:09:38', '74c5dd58-c23a-43cc-8379-e434869c6d3c', NULL, NULL, NULL),
(44, 78, 1, 'Home Page', '2019-12-04 20:10:15', '2019-12-04 20:10:15', '613924ca-0766-4e2e-afc8-c1837b6ba02a', NULL, NULL, NULL),
(45, 82, 1, 'About', '2019-12-04 20:12:28', '2019-12-04 20:12:28', 'ffa9151f-9d11-4ad0-a8fc-bf553e3b4b5d', NULL, NULL, NULL),
(46, 84, 1, 'About', '2019-12-04 20:12:54', '2019-12-04 20:12:54', '5e6a16a7-14da-4670-b35b-a3df4075ee52', NULL, NULL, NULL),
(47, 87, 1, 'Get Involved', '2019-12-04 20:14:55', '2019-12-04 20:14:55', 'e63556f9-00b4-45b8-b64b-7327ea5a8bbc', NULL, NULL, NULL),
(48, 89, 1, 'Get Involved', '2019-12-04 20:15:27', '2019-12-04 20:15:27', 'ba85148a-c80e-4cc6-bf39-ab6f0142f12a', NULL, NULL, NULL),
(49, 91, 1, 'Get Involved', '2019-12-04 20:15:40', '2019-12-04 20:15:40', '58922fa2-2f1a-419e-a8fa-c29e113a8097', NULL, NULL, NULL),
(50, 93, 1, 'Get Involved', '2019-12-04 20:15:54', '2019-12-04 20:15:54', 'ed16c122-0aa4-471c-8911-510956e5e915', NULL, NULL, NULL),
(51, 95, 1, 'Get Involved', '2019-12-04 20:16:00', '2019-12-04 20:16:00', '340ae402-93e4-41a1-9df6-cebd854aa4bc', NULL, NULL, NULL),
(52, 97, 1, 'Get Involved', '2019-12-04 20:16:10', '2019-12-04 20:16:10', '2f5fa7ec-0719-4e1d-98d1-d4a034275f62', NULL, NULL, NULL),
(53, 99, 1, 'Home Page', '2019-12-04 20:18:01', '2019-12-04 20:18:01', '2f0fd42d-918c-4232-981b-2d89bc8eef85', NULL, NULL, NULL),
(54, 103, 1, 'Home Page', '2019-12-04 20:18:57', '2019-12-04 20:18:57', 'f7da6230-1528-448b-8360-de9865c8b5b3', NULL, NULL, NULL),
(55, 107, 1, '2017 06 25 NYC PRIDE GENDER AND FAMILY PROJECT 135', '2019-12-04 20:28:00', '2019-12-04 21:00:16', '98f0764c-1e67-43f7-95fa-16580e15129b', NULL, NULL, NULL),
(56, 108, 1, 'Home Page', '2019-12-04 20:28:08', '2019-12-04 20:28:08', 'e68d5832-6984-480e-bd4c-e0a21867b7ab', NULL, NULL, NULL),
(57, 112, 1, 'Home Page', '2019-12-04 20:30:35', '2019-12-04 20:30:35', '01993c1b-3eb6-4f81-9a74-3ac580ff598d', NULL, NULL, NULL),
(58, 116, 1, 'Home Page', '2019-12-04 20:45:54', '2019-12-04 20:45:54', '06ba2a4e-f8ce-4d9d-9ae6-b590efc48224', NULL, NULL, NULL),
(59, 120, 1, '2017 06 25 NYC PRIDE GENDER AND FAMILY PROJECT 135', '2019-12-04 20:50:07', '2019-12-04 20:50:07', '03300e2e-6268-4547-b350-e0a7ecdcd0d4', NULL, NULL, NULL),
(60, 121, 1, 'Home Page', '2019-12-04 20:50:15', '2019-12-04 20:50:15', 'a2b5f8be-7bd3-494c-a19a-c2857ca8b8f6', NULL, NULL, NULL),
(61, 125, 1, '2017 06 25 NYC PRIDE GENDER AND FAMILY PROJECT 135', '2019-12-04 21:00:12', '2019-12-04 21:00:12', '0be76d99-3c1d-410b-9605-ff416997c1ce', NULL, NULL, NULL),
(62, 126, 1, 'Home Page', '2019-12-04 21:00:19', '2019-12-04 21:00:19', '1812fe8b-84f1-4175-b111-49cfae701055', NULL, NULL, NULL),
(63, 130, 1, '2017 06 25 NYC PRIDE GENDER AND FAMILY PROJECT 135 2', '2019-12-04 21:08:45', '2019-12-04 21:08:45', 'a98ca87c-9a54-4ef7-b9cb-a6a9167dd595', NULL, NULL, NULL),
(64, 131, 1, 'Home Page', '2019-12-04 21:08:49', '2019-12-04 21:08:49', 'd91efcf5-acb3-40da-aafc-0206792f9965', NULL, NULL, NULL),
(65, 135, 1, '20190118 Ackerman 118', '2019-12-04 21:17:08', '2019-12-04 21:20:47', '0ff48ae9-2c78-48bf-8f92-acc94d7d11c0', NULL, NULL, NULL),
(66, 136, 1, 'About', '2019-12-04 21:17:12', '2019-12-04 21:17:12', 'd06fede1-dcdb-4284-a31b-5fb98e2b919f', NULL, NULL, NULL),
(67, 138, 1, 'About', '2019-12-04 21:17:49', '2019-12-04 21:17:49', 'ea0dc7a7-ec02-4c55-a333-1a2c6b5c9c31', NULL, NULL, NULL),
(68, 140, 1, '20190118 Ackerman 118', '2019-12-04 21:20:44', '2019-12-04 21:20:44', '12e4f534-ae60-4d7e-b6d8-ff2f88bac668', NULL, NULL, NULL),
(69, 141, 1, 'About', '2019-12-04 21:20:50', '2019-12-04 21:20:50', '13e40390-b171-44ec-9f1b-f15681623f3b', NULL, NULL, NULL),
(70, 143, 1, 'GFP Back Heart3', '2019-12-04 21:25:06', '2019-12-04 21:25:06', 'a9d29b89-17ce-4cbe-9cd9-34f9adfb8f2c', NULL, NULL, NULL),
(71, 144, 1, 'Get Involved', '2019-12-04 21:25:10', '2019-12-04 21:25:10', '8fc11d20-6588-4fb8-aaf8-a2018df5013d', NULL, NULL, NULL),
(72, 146, 1, 'Get Involved', '2019-12-04 21:34:09', '2019-12-04 21:34:09', 'f362e98d-2c8a-443f-8916-5aa3ba2f8d22', NULL, NULL, NULL),
(73, 148, 1, 'Get Involved', '2019-12-04 21:34:17', '2019-12-04 21:34:17', 'a7f4ac7d-3cd3-43da-a9dd-112c91d22bb4', NULL, NULL, NULL),
(74, 150, 1, 'Get Involved', '2019-12-04 21:34:34', '2019-12-04 21:34:34', '9a871e12-7e6b-4f73-9851-3e571c02a3ff', NULL, NULL, NULL),
(75, 152, 1, 'About', '2019-12-05 00:37:13', '2019-12-05 00:37:13', 'a8fa908f-07ed-4502-b4ee-75a287f09f47', NULL, NULL, NULL),
(76, 154, 1, 'Get Involved', '2019-12-05 00:37:17', '2019-12-05 00:37:17', '624a228d-fe1a-4598-9a12-ca9a20350104', NULL, NULL, NULL),
(77, 156, 1, NULL, '2019-12-05 00:38:20', '2019-12-05 00:38:57', 'da9dedf7-2172-4109-a02d-7c70d5f8e731', '<p>@GenderandFamily</p>', NULL, NULL),
(78, 157, 1, 'Get In Touch', '2019-12-05 00:39:38', '2019-12-05 00:39:38', '2616e46e-8c1c-402a-97aa-5637a3af5287', NULL, NULL, NULL),
(79, 159, 1, 'About', '2019-12-05 03:41:52', '2019-12-05 03:41:52', 'd3cf4478-8ae1-47d3-87e9-be4712edb317', NULL, NULL, NULL),
(80, 161, 1, NULL, '2019-12-07 03:37:04', '2019-12-07 03:38:33', '38496bef-bf83-4e8b-bf86-953dd7b86773', '<p><a href=\"http://instagram.com/GenderandFamilyProject\">@GenderandFamilyProject</a></p>', NULL, NULL),
(81, 162, 1, 'Home Page', '2019-12-11 01:37:59', '2019-12-11 01:37:59', '5978f275-622a-4979-9ddf-e6b0fe984557', NULL, NULL, NULL),
(82, 166, 1, 'Home Page', '2019-12-11 01:38:00', '2019-12-11 01:38:00', '341371c6-2302-42f1-8bbd-fba76ae611de', NULL, NULL, NULL),
(84, 174, 1, 'About', '2020-01-16 02:07:27', '2020-01-16 02:10:16', '1cb82d4c-f615-49bd-bfe3-cee6075f475d', NULL, NULL, NULL),
(85, 176, 1, 'About', '2020-01-16 02:07:27', '2020-01-16 02:07:27', 'ce34cc9b-b8c9-432f-a607-03e26dbdcbd4', NULL, NULL, NULL),
(87, 179, 1, 'Youth & Family Programs', '2020-01-16 02:07:53', '2020-01-16 02:07:53', '47be0f16-6d25-4dfd-a899-2bd28a80d91f', NULL, NULL, NULL),
(88, 180, 1, 'Youth & Family Programs', '2020-01-16 02:07:53', '2020-01-16 02:07:53', 'cffbfb8a-65e3-475f-a4fd-474ef8ae43ef', NULL, NULL, NULL),
(90, 182, 1, 'Gender Inclusivity Training', '2020-01-16 02:08:15', '2020-01-16 02:08:15', '5f47e080-c703-4c5b-bbca-fdf60f868ba2', NULL, NULL, NULL),
(91, 183, 1, 'Gender Inclusivity Training', '2020-01-16 02:08:15', '2020-01-16 02:08:15', '2836d1fd-58e6-42e4-8b39-36d9d2f263b1', NULL, NULL, NULL),
(93, 185, 1, 'Research & Education', '2020-01-16 02:08:27', '2020-01-16 02:08:27', '6ead0a64-28d9-4172-aa86-a4eba7b8c7c2', NULL, NULL, NULL),
(94, 186, 1, 'Research & Education', '2020-01-16 02:08:27', '2020-01-16 02:08:27', '8bcf3f45-8216-4b4b-bc2a-097efec13ba1', NULL, NULL, NULL),
(96, 188, 1, 'Get Involved', '2020-01-16 02:08:37', '2020-01-16 02:08:37', '11c08703-8c5c-4d1c-bede-d30d9231ba6b', NULL, NULL, NULL),
(97, 189, 1, 'Get Involved', '2020-01-16 02:08:37', '2020-01-16 02:08:37', '51f0e12a-36e5-4541-8c9c-45dfa83101da', NULL, NULL, NULL),
(98, 190, 1, NULL, '2020-01-16 02:09:02', '2020-01-16 02:09:02', '0f013f67-816b-4ed5-b59e-87370d69197c', NULL, NULL, NULL),
(99, 191, 1, 'About', '2020-01-16 02:10:16', '2020-01-16 02:10:16', 'a6391888-3f59-4599-887b-575768defef0', NULL, NULL, NULL),
(100, 193, 1, 'About', '2020-01-16 02:10:25', '2020-01-16 02:10:25', 'f7aacc3b-d099-40fd-9f05-6484c70731bf', NULL, NULL, NULL),
(102, 196, 1, 'Mission', '2020-01-16 02:12:28', '2020-01-16 02:12:28', '48f3d9fd-9e00-46b9-8092-fc28305ed316', NULL, NULL, NULL),
(103, 197, 1, 'Mission', '2020-01-16 02:12:28', '2020-01-16 02:12:28', '76842bb4-89b9-4a16-a78a-286ac45f7206', NULL, NULL, NULL),
(105, 199, 1, 'Family Therapy', '2020-01-18 01:02:32', '2020-01-25 20:06:11', '9b6786df-d896-4d6b-a1ac-1fc68fbc99ad', NULL, NULL, '[]'),
(106, 200, 1, 'Family Therapy', '2020-01-18 01:02:32', '2020-01-18 01:02:32', 'af6dde4d-38f3-4bfd-bb55-30990f12c3be', NULL, NULL, NULL),
(108, 202, 1, 'Psychological Evaluation', '2020-01-18 01:03:04', '2020-01-18 01:03:04', '5cb5206b-a312-4368-8504-b30b004bab4f', NULL, NULL, NULL),
(109, 203, 1, 'Psychological Evaluation', '2020-01-18 01:03:04', '2020-01-18 01:03:04', '3cecd846-d7cb-44fa-929c-b05eda854754', NULL, NULL, NULL),
(111, 205, 1, 'Support Groups', '2020-01-18 01:03:12', '2020-01-25 16:41:05', '26a050fb-e3e1-4020-a65a-f1b60621c33f', NULL, NULL, '[\"addSectionJumps\"]'),
(112, 206, 1, 'Support Groups', '2020-01-18 01:03:12', '2020-01-18 01:03:12', '4b24d936-2ffc-42f3-acf3-8ed0ee9ca2e3', NULL, NULL, NULL),
(114, 208, 1, 'Family & Youth Advocacy Teams', '2020-01-18 01:03:25', '2020-01-18 01:03:25', '6650f513-d77d-4120-a50f-f1f57d97d728', NULL, NULL, NULL),
(115, 209, 1, 'Family & Youth Advocacy Teams', '2020-01-18 01:03:26', '2020-01-18 01:03:26', '186e0fef-9677-41d8-881f-1abb97bd30f3', NULL, NULL, NULL),
(117, 211, 1, 'School and Professional Support', '2020-01-18 01:03:38', '2020-01-18 01:03:38', 'a1e96fd3-fbf2-4d33-886c-f992b338371c', NULL, NULL, NULL),
(118, 212, 1, 'School and Professional Support', '2020-01-18 01:03:38', '2020-01-18 01:03:38', 'b007c570-d8c8-45f6-bb25-37b865e6fdfb', NULL, NULL, NULL),
(120, 214, 1, 'Gender Conference NYC (GC*NYC)', '2020-01-18 01:03:54', '2020-01-18 01:03:54', '2c9086e8-90ba-4a50-be2a-8030869ea76b', NULL, NULL, NULL),
(121, 215, 1, 'Gender Conference NYC (GC*NYC)', '2020-01-18 01:03:54', '2020-01-18 01:03:54', '8a9df39a-761f-4502-a293-8ca8cd3d51cc', NULL, NULL, NULL),
(123, 217, 1, 'Spanish Services', '2020-01-18 01:04:03', '2020-01-18 01:04:03', 'dba43d5e-03f6-4ac9-8253-ece752fd9cf8', NULL, NULL, NULL),
(124, 218, 1, 'Spanish Services', '2020-01-18 01:04:03', '2020-01-18 01:04:03', '46bebdb2-0e32-4e24-a977-2d1f79640994', NULL, NULL, NULL),
(126, 220, 1, 'School Trainings', '2020-01-18 01:04:18', '2020-01-18 01:04:18', '20368f21-ebbf-44c7-bfbe-53503b945ead', NULL, NULL, NULL),
(127, 221, 1, 'School Trainings', '2020-01-18 01:04:18', '2020-01-18 01:04:18', '914f036d-ea6b-44c3-b519-4d53e99ec53b', NULL, NULL, NULL),
(129, 223, 1, 'Professional Trainings', '2020-01-18 01:04:29', '2020-01-18 01:04:29', '55dc788d-4f86-4044-bf1b-0db797393458', NULL, NULL, NULL),
(130, 224, 1, 'Professional Trainings', '2020-01-18 01:04:29', '2020-01-18 01:04:29', '2ca527f4-5760-4384-869e-ade0fa5a1bc2', NULL, NULL, NULL),
(132, 226, 1, 'Corporate Trainings', '2020-01-18 01:04:41', '2020-01-18 01:04:41', '7c61d829-7e38-4390-951d-84ef2188c02c', NULL, NULL, NULL),
(133, 227, 1, 'Corporate Trainings', '2020-01-18 01:04:41', '2020-01-18 01:04:41', 'beadcf85-d82c-41eb-9b27-0af0a4b15864', NULL, NULL, NULL),
(135, 229, 1, 'Research at GFP', '2020-01-18 01:05:16', '2020-01-18 01:05:16', 'a142e0a9-d6ec-4e89-b964-0c0e64819238', NULL, NULL, NULL),
(136, 230, 1, 'Research at GFP', '2020-01-18 01:05:16', '2020-01-18 01:05:16', '2122c9b3-8d3f-4af7-bc71-3de8100d67be', NULL, NULL, NULL),
(138, 232, 1, 'Publications', '2020-01-18 01:05:22', '2020-01-18 01:05:22', 'de62607f-b9c1-416a-8144-c2ce4138983b', NULL, NULL, NULL),
(139, 233, 1, 'Publications', '2020-01-18 01:05:22', '2020-01-18 01:05:22', '050e09bc-cb62-448c-ac18-816cf2571412', NULL, NULL, NULL),
(141, 235, 1, 'Resources for Families', '2020-01-18 01:05:35', '2020-01-18 01:05:35', '5202a598-593a-40f7-8952-ca2b83307e13', NULL, NULL, NULL),
(142, 236, 1, 'Resources for Families', '2020-01-18 01:05:35', '2020-01-18 01:05:35', 'e46974e3-5c78-4f03-b62f-425b9f67172d', NULL, NULL, NULL),
(144, 238, 1, 'Resources for Professionals', '2020-01-18 01:05:49', '2020-01-18 01:05:49', 'f7bf9e8b-c252-46cc-8cde-eaaed6ed2878', NULL, NULL, NULL),
(145, 239, 1, 'Resources for Professionals', '2020-01-18 01:05:49', '2020-01-18 01:05:49', '44f08b0d-ea93-44a3-a0c9-92e7451c7ad0', NULL, NULL, NULL),
(147, 241, 1, 'Donate Now', '2020-01-18 01:06:04', '2020-01-18 01:06:04', '7346745c-8df1-40d3-9778-798a9d86203a', NULL, NULL, NULL),
(148, 242, 1, 'Donate Now', '2020-01-18 01:06:04', '2020-01-18 01:06:04', '389cfd16-ad75-4226-af5a-f9fd5a36f621', NULL, NULL, NULL),
(150, 244, 1, 'A Night of A Thousand Genders', '2020-01-18 01:06:18', '2020-01-18 01:06:18', 'b5d48cce-39b6-46e3-9645-ee93de74fcfc', NULL, NULL, NULL),
(151, 245, 1, 'A Night of A Thousand Genders', '2020-01-18 01:06:18', '2020-01-18 01:06:18', '9653c0d2-79a8-40f1-9f70-b45853a89ccc', NULL, NULL, NULL),
(153, 247, 1, 'Sponsorship / Corporate Partner', '2020-01-18 01:06:29', '2020-01-18 01:06:29', 'aca2cde4-6341-464b-a1ac-22c35a731cb9', NULL, NULL, NULL),
(154, 248, 1, 'Sponsorship / Corporate Partner', '2020-01-18 01:06:29', '2020-01-18 01:06:29', '382454a7-fdb0-4b64-a166-26afc8787f02', NULL, NULL, NULL),
(156, 250, 1, 'Give Through Your Foundation', '2020-01-18 01:06:41', '2020-01-18 01:06:41', '23c925f2-f32a-46c0-9d3f-feb85a0fbac7', NULL, NULL, NULL),
(157, 251, 1, 'Give Through Your Foundation', '2020-01-18 01:06:41', '2020-01-18 01:06:41', '418dd8d7-a1f7-4ba6-8e26-52d906c31ae5', NULL, NULL, NULL),
(159, 253, 1, 'Get Involved / Volunteer', '2020-01-18 01:06:54', '2020-01-18 01:06:54', 'a65cb688-1607-46de-a3c3-7a368d46d563', NULL, NULL, NULL),
(160, 254, 1, 'Get Involved / Volunteer', '2020-01-18 01:06:54', '2020-01-18 01:06:54', '0c3754f5-ea75-4857-8b3b-982e2d2a6033', NULL, NULL, NULL),
(162, 256, 1, 'Staff', '2020-01-18 01:07:19', '2020-01-18 01:07:19', '9a210ba9-5e5b-4338-8e0a-9f6d3890d442', NULL, NULL, NULL),
(163, 257, 1, 'Staff', '2020-01-18 01:07:19', '2020-01-18 01:07:19', '2e65c1b5-79a8-4729-8bc5-eec7adf0d0f9', NULL, NULL, NULL),
(165, 259, 1, 'Advisory Council', '2020-01-18 01:07:40', '2020-01-18 01:07:40', '723b7e21-6d05-4201-b15e-6d177ad3c886', NULL, NULL, NULL),
(166, 260, 1, 'Advisory Council', '2020-01-18 01:07:40', '2020-01-18 01:07:40', '2c931134-f897-40fa-b2e3-070813af02ef', NULL, NULL, NULL),
(168, 262, 1, 'Contact', '2020-01-18 01:07:44', '2020-01-18 01:07:44', '99c37517-cb8c-4ae3-a61e-b3a89d09497b', NULL, NULL, NULL),
(169, 263, 1, 'Contact', '2020-01-18 01:07:45', '2020-01-18 01:07:45', '25eb6505-7607-480d-a418-543503e34bd8', NULL, NULL, NULL),
(170, 264, 1, 'Get In Touch', '2020-01-19 01:36:31', '2020-01-19 01:36:31', '4956f6b0-2c66-4d04-9a3d-25c2ff0f03cf', NULL, NULL, NULL),
(171, 266, 1, 'Small', '2020-01-19 02:05:45', '2020-01-19 02:05:45', 'e0e95790-06c1-41ec-bab3-cbf4f8865a29', NULL, NULL, NULL),
(172, 267, 1, 'Home Page', '2020-01-19 02:06:32', '2020-01-19 02:06:32', '4c731b8f-54f8-47e0-8114-7e87ff81abae', NULL, NULL, NULL),
(173, 271, 1, 'Style Guide', '2020-01-21 01:57:35', '2020-01-25 16:16:35', '116af1d6-ae46-418b-a2db-aff715eb6e45', NULL, NULL, NULL),
(174, 272, 1, 'Style Guide', '2020-01-21 01:57:35', '2020-01-21 01:57:35', '9743992d-2014-426c-9340-c8eea455b2a2', NULL, NULL, NULL),
(175, 273, 1, 'Style Guide', '2020-01-21 01:58:06', '2020-01-21 01:58:06', '7da48493-9bbc-433f-a66a-a6b6d6e4e461', NULL, NULL, NULL),
(176, 275, 1, 'Style Guide', '2020-01-21 01:58:20', '2020-01-21 01:58:20', '252dbf79-0754-4e6c-b7da-287b7e4daee4', NULL, NULL, NULL),
(177, 282, 1, 'Style Guide', '2020-01-21 02:20:06', '2020-01-21 02:20:06', '3267087b-af40-44ac-90b6-906d2beb8411', NULL, NULL, NULL),
(178, 289, 1, 'Style Guide', '2020-01-21 02:38:10', '2020-01-21 02:38:10', 'e64c1ec7-f5cc-476b-9909-0b3840343c15', NULL, NULL, NULL),
(179, 296, 1, 'Style Guide', '2020-01-25 14:39:03', '2020-01-25 14:39:03', '22057802-b753-4a84-8849-3f1d77afba35', NULL, NULL, NULL),
(180, 303, 1, 'Phone', '2020-01-25 14:42:17', '2020-01-25 14:42:17', '9d4a63c3-ad72-43eb-9d34-099f81220306', NULL, NULL, NULL),
(181, 304, 1, 'Style Guide', '2020-01-25 14:42:36', '2020-01-25 14:42:36', 'd97deaa1-179f-4540-9ad2-904863ef9a1f', NULL, NULL, NULL),
(182, 311, 1, 'Style Guide', '2020-01-25 14:45:11', '2020-01-25 14:45:11', '83d383b5-88b1-4f3f-95ad-0ddd8ee7a029', NULL, NULL, NULL),
(183, 318, 1, 'Arrow', '2020-01-25 14:49:33', '2020-01-25 14:54:11', 'd9871efb-79de-44d8-aa1a-c92d14551388', NULL, NULL, NULL),
(184, 319, 1, 'Style Guide', '2020-01-25 14:51:00', '2020-01-25 14:51:00', '40f1b0e6-2845-4e28-aa90-b376c502f40d', NULL, NULL, NULL),
(185, 326, 1, 'Arrow', '2020-01-25 14:54:08', '2020-01-25 14:54:08', '4b46f57c-c85e-48e7-bcc9-af94e36bf236', NULL, NULL, NULL),
(187, 340, 1, 'Style Guide', '2020-01-25 15:35:43', '2020-01-25 15:35:43', '568567d6-336b-4145-842f-7ff20fdff101', NULL, NULL, NULL),
(188, 347, 1, 'Style Guide', '2020-01-25 15:37:16', '2020-01-25 15:37:16', '827ccafb-99ba-400e-b508-c10eabde82dd', NULL, NULL, NULL),
(189, 354, 1, 'Style Guide', '2020-01-25 15:38:16', '2020-01-25 15:38:16', 'fb94028e-1505-48da-8c6f-add08a290613', NULL, NULL, NULL),
(190, 361, 1, 'Style Guide', '2020-01-25 15:42:22', '2020-01-25 15:42:22', '25551aeb-a679-4ffa-ae8f-9045952f50fb', NULL, NULL, NULL),
(191, 368, 1, 'Style Guide', '2020-01-25 15:47:31', '2020-01-25 15:47:31', '3fb6f406-cb5f-4c7e-99ec-ae86d68e3af2', NULL, NULL, NULL),
(192, 375, 1, 'Style Guide', '2020-01-25 15:50:28', '2020-01-25 15:50:28', '29d7e4df-0a5c-4af3-b709-bcc47ce01537', NULL, NULL, NULL),
(193, 382, 1, 'Book', '2020-01-25 15:53:23', '2020-01-25 15:53:23', '547e0b08-0c92-4081-b20c-3071308b420a', NULL, NULL, NULL),
(194, 384, 1, 'Style Guide', '2020-01-25 15:54:58', '2020-01-25 15:54:58', '002180c1-2649-46b3-871d-12d1bce9ea9e', NULL, NULL, NULL),
(195, 392, 1, 'Style Guide', '2020-01-25 15:57:39', '2020-01-25 15:57:39', 'c86b8af0-3642-4d67-b234-54363dc37dce', NULL, NULL, NULL),
(196, 400, 1, 'Style Guide', '2020-01-25 16:13:18', '2020-01-25 16:13:18', '62d23826-f299-4cae-bb8d-571fa204b508', NULL, NULL, NULL),
(197, 408, 1, 'Style Guide', '2020-01-25 16:13:37', '2020-01-25 16:13:37', 'db9056d1-e13b-4ee1-b538-3195dd2bc869', NULL, NULL, NULL),
(198, 416, 1, 'Style Guide', '2020-01-25 16:15:58', '2020-01-25 16:15:58', 'c302083e-096e-4417-8b9b-a832b9bd87a6', NULL, NULL, NULL),
(199, 424, 1, 'Style Guide', '2020-01-25 16:16:35', '2020-01-25 16:16:35', '5d461395-b7a6-4735-a443-28da78af2e51', NULL, NULL, NULL),
(200, 435, 1, 'Support Groups', '2020-01-25 16:30:46', '2020-01-25 16:30:46', '92da4ac3-98dd-45ef-bb70-5ed7983f38ca', NULL, NULL, NULL),
(201, 439, 1, 'Support Groups', '2020-01-25 16:31:35', '2020-01-25 16:31:35', '3162aa6a-21ab-4885-93c1-728d547fda32', NULL, NULL, NULL),
(202, 443, 1, 'Support Groups', '2020-01-25 16:41:05', '2020-01-25 16:41:05', 'a83d46c5-2ff7-4967-8ce6-fd5538c61d82', NULL, NULL, '[\"addSectionJumps\"]'),
(203, 447, 1, '404 Page', '2020-01-25 19:58:00', '2020-01-25 19:58:00', 'ae16d30d-c62c-47a7-bd27-da0423d16f09', '<h1>404 Error</h1><p>Sorry, the page you requested could not be found. Please see the links below for other content you might be interested in. </p>', NULL, NULL),
(204, 448, 1, '404 Page', '2020-01-25 19:59:49', '2020-01-25 19:59:49', 'e9c106a5-7bf0-4269-8a72-307a9665d9f7', '<h1>404 Error</h1><p>Sorry, the page you requested could not be found. </p><p>Please see the links below for other content you might be interested in. </p>', NULL, NULL),
(205, 449, 1, '404 Page', '2020-01-25 20:02:17', '2020-01-25 20:02:17', 'c8f1a7d7-f660-4de6-bb82-4be2aa4f7448', '<h1>404 Error</h1><p>Sorry, the page you requested could not be found. </p><p>Please see the links below for other content you might be interested in. </p>', NULL, NULL),
(206, 450, 1, '404 Page', '2020-01-25 20:03:29', '2020-01-25 20:03:29', '603a92a6-1210-4029-bf6a-bd921eb7b6b8', '<h1>404 Error</h1><p>Sorry, the page you requested could not be found. </p><p>Please see the links below for other content you might be interested in. </p>', NULL, NULL),
(207, 451, 1, 'Family Therapy', '2020-01-25 20:06:11', '2020-01-25 20:06:11', '5eec9b79-dafc-49d7-a2c5-bbe05d477139', NULL, NULL, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `craft_craftidtokens`
--

CREATE TABLE `craft_craftidtokens` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `accessToken` text NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `craft_deprecationerrors`
--

CREATE TABLE `craft_deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `fingerprint` varchar(255) NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) NOT NULL,
  `line` smallint(6) UNSIGNED DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `traces` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_deprecationerrors`
--

INSERT INTO `craft_deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'craft.request.getFirstSegment()', '/Users/jameslamarre/Desktop/web/gfp/templates/globals/header.twig:16', '2019-11-16 20:28:07', '/Users/jameslamarre/Desktop/web/gfp/templates/globals/header.twig', 16, 'craft.request.getFirstSegment() has been deprecated. Use craft.app.request.segments|first instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/twig/variables/Request.php\",\"line\":178,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"craft.request.getFirstSegment()\\\", \\\"craft.request.getFirstSegment() has been deprecated. Use craft.a...\\\"\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\variables\\\\Request\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Extension/CoreExtension.php\",\"line\":1495,\"class\":\"craft\\\\web\\\\twig\\\\variables\\\\Request\",\"method\":\"getFirstSegment\",\"args\":null},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/helpers/Template.php\",\"line\":105,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\web\\\\twig\\\\variables\\\\Request, \\\"firstSegment\\\", ...\"},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/87/87b37fd52cb1c431058f332afd778a5dd2bdf2b2c7b888e7934912ba11d4c127.php\",\"line\":55,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\web\\\\twig\\\\variables\\\\Request, \\\"firstSegment\\\", ...\"},{\"objectClass\":\"__TwigTemplate_c2f3a23bc6baba26c5d23bd9e563d4ff324f94278f9c9403c6ffcdd24513f0f1\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_c2f3a23bc6baba26c5d23bd9e563d4ff324f94278f9c9403c6ffcdd24513f0f1\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_c2f3a23bc6baba26c5d23bd9e563d4ff324f94278f9c9403c6ffcdd24513f0f1\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_c2f3a23bc6baba26c5d23bd9e563d4ff324f94278f9c9403c6ffcdd24513f0f1\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/3d/3dd5f2ad699c303871abb4016604222147a63974ce5dc89e6e4651c8388dc875.php\",\"line\":162,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/81/814966eb4c5d1ebf893748eb4146f67c2675b7388722b74854df0902c2f1d18d.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/web/index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2019-11-16 20:28:07', '2019-11-16 20:28:07', '80785952-9059-4ef6-9f9d-0373ec7b6542'),
(2, 'ElementQuery::getIterator()', '/Users/jameslamarre/Desktop/web/gfp/templates/globals/header.twig:29', '2019-11-16 20:28:07', '/Users/jameslamarre/Desktop/web/gfp/templates/globals/header.twig', 29, 'Looping through element queries directly has been deprecated. Use the all() function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":584,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\TagQuery\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/87/87b37fd52cb1c431058f332afd778a5dd2bdf2b2c7b888e7934912ba11d4c127.php\",\"line\":75,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_c2f3a23bc6baba26c5d23bd9e563d4ff324f94278f9c9403c6ffcdd24513f0f1\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_c2f3a23bc6baba26c5d23bd9e563d4ff324f94278f9c9403c6ffcdd24513f0f1\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_c2f3a23bc6baba26c5d23bd9e563d4ff324f94278f9c9403c6ffcdd24513f0f1\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_c2f3a23bc6baba26c5d23bd9e563d4ff324f94278f9c9403c6ffcdd24513f0f1\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/3d/3dd5f2ad699c303871abb4016604222147a63974ce5dc89e6e4651c8388dc875.php\",\"line\":162,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/81/814966eb4c5d1ebf893748eb4146f67c2675b7388722b74854df0902c2f1d18d.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/web/index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2019-11-16 20:28:07', '2019-11-16 20:28:07', 'f9633fb4-1e72-44b6-bad8-7cb45f5789eb'),
(3, 'craft.request.getFirstSegment()', '/Users/jameslamarre/Desktop/web/gfp/templates/globals/footer.twig:1', '2019-11-16 20:28:07', '/Users/jameslamarre/Desktop/web/gfp/templates/globals/footer.twig', 1, 'craft.request.getFirstSegment() has been deprecated. Use craft.app.request.segments|first instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/twig/variables/Request.php\",\"line\":178,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"craft.request.getFirstSegment()\\\", \\\"craft.request.getFirstSegment() has been deprecated. Use craft.a...\\\"\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\variables\\\\Request\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Extension/CoreExtension.php\",\"line\":1495,\"class\":\"craft\\\\web\\\\twig\\\\variables\\\\Request\",\"method\":\"getFirstSegment\",\"args\":null},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/helpers/Template.php\",\"line\":105,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\web\\\\twig\\\\variables\\\\Request, \\\"firstSegment\\\", ...\"},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/69/69ab2dd91c964e92d537246ae8d425c81df0fda01cb05a41c66c5e4b0f6838ea.php\",\"line\":38,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\web\\\\twig\\\\variables\\\\Request, \\\"firstSegment\\\", ...\"},{\"objectClass\":\"__TwigTemplate_4f18bfee51e129727acf6a7afde782122577174b7d3938efc2439731af2ed50e\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_4f18bfee51e129727acf6a7afde782122577174b7d3938efc2439731af2ed50e\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_4f18bfee51e129727acf6a7afde782122577174b7d3938efc2439731af2ed50e\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], []\"},{\"objectClass\":\"__TwigTemplate_4f18bfee51e129727acf6a7afde782122577174b7d3938efc2439731af2ed50e\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/3d/3dd5f2ad699c303871abb4016604222147a63974ce5dc89e6e4651c8388dc875.php\",\"line\":174,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/81/814966eb4c5d1ebf893748eb4146f67c2675b7388722b74854df0902c2f1d18d.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_0a2956b9685763386d365658e261a90abb3fea582304044bd1faff6674b05750\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", []\"},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/web/index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2019-11-16 20:28:07', '2019-11-16 20:28:07', '1df687a8-ce32-4361-bf0c-76c6b091829d'),
(7, 'ElementQuery::find()', '/Users/jameslamarre/Desktop/web/gfp/templates/404.twig:11', '2020-01-25 20:22:59', '/Users/jameslamarre/Desktop/web/gfp/templates/404.twig', 11, 'The find() function used to query for elements is now deprecated. Use all() instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":1835,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::find()\\\", \\\"The find() function used to query for elements is now deprecated...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\EntryQuery\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Extension/CoreExtension.php\",\"line\":1495,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"find\",\"args\":null},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/helpers/Template.php\",\"line\":105,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\EntryQuery, \\\"find\\\", ...\"},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/99/99d256bd46b3407d87dfca2c3f8187caaac8f97b0b8c8a7af90c6f963788312b.php\",\"line\":62,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\EntryQuery, \\\"find\\\", ...\"},{\"objectClass\":\"__TwigTemplate_467a756adcd0567c4ac4be04a93bff8039108085893246a7cfe31f0dc9b7f72d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_467a756adcd0567c4ac4be04a93bff8039108085893246a7cfe31f0dc9b7f72d\",\"method\":\"block_content\",\"args\":\"[\\\"message\\\" => \\\"Template not found: asjdfhasdjl\\\", \\\"code\\\" => 0, \\\"file\\\" => \\\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/cont...\\\", \\\"line\\\" => 93, ...], [\\\"content\\\" => [__TwigTemplate_467a756adcd0567c4ac4be04a93bff8039108085893246a7cfe31f0dc9b7f72d, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_69311e0d265602f3bb969f79d425fb5fb10e797877ce22f9864c2e3ae50c7630\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/7d/7dc25087bb7cc4ba968da78cf3e514d7420860b30040639eddfbc4ac65c9615e.php\",\"line\":176,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"message\\\" => \\\"Template not found: asjdfhasdjl\\\", \\\"code\\\" => 0, \\\"file\\\" => \\\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/cont...\\\", \\\"line\\\" => 93, ...], [\\\"content\\\" => [__TwigTemplate_467a756adcd0567c4ac4be04a93bff8039108085893246a7cfe31f0dc9b7f72d, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_69311e0d265602f3bb969f79d425fb5fb10e797877ce22f9864c2e3ae50c7630\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_69311e0d265602f3bb969f79d425fb5fb10e797877ce22f9864c2e3ae50c7630\",\"method\":\"doDisplay\",\"args\":\"[\\\"message\\\" => \\\"Template not found: asjdfhasdjl\\\", \\\"code\\\" => 0, \\\"file\\\" => \\\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/cont...\\\", \\\"line\\\" => 93, ...], [\\\"content\\\" => [__TwigTemplate_467a756adcd0567c4ac4be04a93bff8039108085893246a7cfe31f0dc9b7f72d, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_69311e0d265602f3bb969f79d425fb5fb10e797877ce22f9864c2e3ae50c7630\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"message\\\" => \\\"Template not found: asjdfhasdjl\\\", \\\"code\\\" => 0, \\\"file\\\" => \\\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/cont...\\\", \\\"line\\\" => 93, ...], [\\\"content\\\" => [__TwigTemplate_467a756adcd0567c4ac4be04a93bff8039108085893246a7cfe31f0dc9b7f72d, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_69311e0d265602f3bb969f79d425fb5fb10e797877ce22f9864c2e3ae50c7630\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/99/99d256bd46b3407d87dfca2c3f8187caaac8f97b0b8c8a7af90c6f963788312b.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"message\\\" => \\\"Template not found: asjdfhasdjl\\\", \\\"code\\\" => 0, \\\"file\\\" => \\\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/cont...\\\", \\\"line\\\" => 93, ...], [\\\"content\\\" => [__TwigTemplate_467a756adcd0567c4ac4be04a93bff8039108085893246a7cfe31f0dc9b7f72d, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_467a756adcd0567c4ac4be04a93bff8039108085893246a7cfe31f0dc9b7f72d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_467a756adcd0567c4ac4be04a93bff8039108085893246a7cfe31f0dc9b7f72d\",\"method\":\"doDisplay\",\"args\":\"[\\\"message\\\" => \\\"Template not found: asjdfhasdjl\\\", \\\"code\\\" => 0, \\\"file\\\" => \\\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/cont...\\\", \\\"line\\\" => 93, ...], [\\\"content\\\" => [__TwigTemplate_467a756adcd0567c4ac4be04a93bff8039108085893246a7cfe31f0dc9b7f72d, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_467a756adcd0567c4ac4be04a93bff8039108085893246a7cfe31f0dc9b7f72d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"message\\\" => \\\"Template not found: asjdfhasdjl\\\", \\\"code\\\" => 0, \\\"file\\\" => \\\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/cont...\\\", \\\"line\\\" => 93, ...], [\\\"content\\\" => [__TwigTemplate_467a756adcd0567c4ac4be04a93bff8039108085893246a7cfe31f0dc9b7f72d, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_467a756adcd0567c4ac4be04a93bff8039108085893246a7cfe31f0dc9b7f72d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"message\\\" => \\\"Template not found: asjdfhasdjl\\\", \\\"code\\\" => 0, \\\"file\\\" => \\\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/cont...\\\", \\\"line\\\" => 93, ...]\"},{\"objectClass\":\"__TwigTemplate_467a756adcd0567c4ac4be04a93bff8039108085893246a7cfe31f0dc9b7f72d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"message\\\" => \\\"Template not found: asjdfhasdjl\\\", \\\"code\\\" => 0, \\\"file\\\" => \\\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/cont...\\\", \\\"line\\\" => 93, ...], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"message\\\" => \\\"Template not found: asjdfhasdjl\\\", \\\"code\\\" => 0, \\\"file\\\" => \\\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/cont...\\\", \\\"line\\\" => 93, ...]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"404\\\", [\\\"message\\\" => \\\"Template not found: asjdfhasdjl\\\", \\\"code\\\" => 0, \\\"file\\\" => \\\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/cont...\\\", \\\"line\\\" => 93, ...]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"404\\\", [\\\"message\\\" => \\\"Template not found: asjdfhasdjl\\\", \\\"code\\\" => 0, \\\"file\\\" => \\\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/cont...\\\", \\\"line\\\" => 93, ...]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"404\\\", [\\\"message\\\" => \\\"Template not found: asjdfhasdjl\\\", \\\"code\\\" => 0, \\\"file\\\" => \\\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/cont...\\\", \\\"line\\\" => 93, ...]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":252,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"404\\\", [\\\"message\\\" => \\\"Template not found: asjdfhasdjl\\\", \\\"code\\\" => 0, \\\"file\\\" => \\\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/cont...\\\", \\\"line\\\" => 93, ...]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRenderError\",\"args\":null},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRenderError\\\"], []\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render-error\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render-error\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render-error\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/web/ErrorHandler.php\",\"line\":108,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render-error\\\"\"},{\"objectClass\":\"craft\\\\web\\\\ErrorHandler\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/ErrorHandler.php\",\"line\":137,\"class\":\"yii\\\\web\\\\ErrorHandler\",\"method\":\"renderException\",\"args\":\"yii\\\\web\\\\NotFoundHttpException\"},{\"objectClass\":\"craft\\\\web\\\\ErrorHandler\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/ErrorHandler.php\",\"line\":111,\"class\":\"craft\\\\web\\\\ErrorHandler\",\"method\":\"renderException\",\"args\":\"yii\\\\web\\\\NotFoundHttpException\"},{\"objectClass\":\"craft\\\\web\\\\ErrorHandler\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/ErrorHandler.php\",\"line\":67,\"class\":\"yii\\\\base\\\\ErrorHandler\",\"method\":\"handleException\",\"args\":\"yii\\\\web\\\\NotFoundHttpException\"},{\"objectClass\":\"craft\\\\web\\\\ErrorHandler\",\"file\":null,\"line\":null,\"class\":\"craft\\\\web\\\\ErrorHandler\",\"method\":\"handleException\",\"args\":\"yii\\\\web\\\\NotFoundHttpException\"}]', '2020-01-25 20:22:59', '2020-01-25 20:22:59', '05cd6d11-3f82-46bc-b9e0-d2960fe88de7');
INSERT INTO `craft_deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(8, 'ElementQuery::getIterator()', '/Users/jameslamarre/Desktop/web/gfp/templates/globals/header.twig:47', '2020-01-18 01:11:34', '/Users/jameslamarre/Desktop/web/gfp/templates/globals/header.twig', 47, 'Looping through element queries directly has been deprecated. Use the all() function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":596,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\EntryQuery\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/57/573a5e442fca9ea468fab50a3462e4a4e11d2538977ab4320a5eeca0a5ec5c7d.php\",\"line\":117,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8082c4509328f32f94adbd6c1ef429e0983c0806625960f8e338124144b594d4\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8082c4509328f32f94adbd6c1ef429e0983c0806625960f8e338124144b594d4\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], []\"},{\"objectClass\":\"__TwigTemplate_8082c4509328f32f94adbd6c1ef429e0983c0806625960f8e338124144b594d4\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], []\"},{\"objectClass\":\"__TwigTemplate_8082c4509328f32f94adbd6c1ef429e0983c0806625960f8e338124144b594d4\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/ce/ce9c7d08aa5e0473fe304ecb70d91e298e436e0f371a2586c9942d6eb7ece8f9.php\",\"line\":166,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...]\"},{\"objectClass\":\"__TwigTemplate_4aec16dab26cd8b6a398e5f0226ceec7cc4364ec73726010ce10f5e051d1c883\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_4aec16dab26cd8b6a398e5f0226ceec7cc4364ec73726010ce10f5e051d1c883\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_bd9adf6263b4292d0ab6cf845dfc25e3fd6c92b52d113daefc29aa7c83fe3303, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_4aec16dab26cd8b6a398e5f0226ceec7cc4364ec73726010ce10f5e051d1c883\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_bd9adf6263b4292d0ab6cf845dfc25e3fd6c92b52d113daefc29aa7c83fe3303, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_4aec16dab26cd8b6a398e5f0226ceec7cc4364ec73726010ce10f5e051d1c883\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/7d/7d2a8fda0d4c72141bcbbdea7d7a05aa7ce60cdb53a1c5733c6beeebf8985277.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_bd9adf6263b4292d0ab6cf845dfc25e3fd6c92b52d113daefc29aa7c83fe3303, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_bd9adf6263b4292d0ab6cf845dfc25e3fd6c92b52d113daefc29aa7c83fe3303\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_bd9adf6263b4292d0ab6cf845dfc25e3fd6c92b52d113daefc29aa7c83fe3303\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_bd9adf6263b4292d0ab6cf845dfc25e3fd6c92b52d113daefc29aa7c83fe3303, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_bd9adf6263b4292d0ab6cf845dfc25e3fd6c92b52d113daefc29aa7c83fe3303\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_bd9adf6263b4292d0ab6cf845dfc25e3fd6c92b52d113daefc29aa7c83fe3303, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_bd9adf6263b4292d0ab6cf845dfc25e3fd6c92b52d113daefc29aa7c83fe3303\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_bd9adf6263b4292d0ab6cf845dfc25e3fd6c92b52d113daefc29aa7c83fe3303\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"views/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"views/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"views/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"views/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"views/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"views/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"views/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"about-1\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"views/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"about-1\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"views/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"about-1\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"views/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"about-1\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"views/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"about-1\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/web/index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-01-18 01:11:34', '2020-01-18 01:11:34', 'd2181150-87ea-46da-aeb6-4430a21dc010'),
(16, 'ElementQuery::getIterator()', '/Users/jameslamarre/Desktop/web/gfp/templates/globals/header.twig:40', '2020-01-18 01:28:13', '/Users/jameslamarre/Desktop/web/gfp/templates/globals/header.twig', 40, 'Looping through element queries directly has been deprecated. Use the all() function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":596,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\EntryQuery\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/57/573a5e442fca9ea468fab50a3462e4a4e11d2538977ab4320a5eeca0a5ec5c7d.php\",\"line\":100,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8082c4509328f32f94adbd6c1ef429e0983c0806625960f8e338124144b594d4\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8082c4509328f32f94adbd6c1ef429e0983c0806625960f8e338124144b594d4\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], []\"},{\"objectClass\":\"__TwigTemplate_8082c4509328f32f94adbd6c1ef429e0983c0806625960f8e338124144b594d4\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], []\"},{\"objectClass\":\"__TwigTemplate_8082c4509328f32f94adbd6c1ef429e0983c0806625960f8e338124144b594d4\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/ce/ce9c7d08aa5e0473fe304ecb70d91e298e436e0f371a2586c9942d6eb7ece8f9.php\",\"line\":166,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...]\"},{\"objectClass\":\"__TwigTemplate_4aec16dab26cd8b6a398e5f0226ceec7cc4364ec73726010ce10f5e051d1c883\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_4aec16dab26cd8b6a398e5f0226ceec7cc4364ec73726010ce10f5e051d1c883\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_bd9adf6263b4292d0ab6cf845dfc25e3fd6c92b52d113daefc29aa7c83fe3303, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_4aec16dab26cd8b6a398e5f0226ceec7cc4364ec73726010ce10f5e051d1c883\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_bd9adf6263b4292d0ab6cf845dfc25e3fd6c92b52d113daefc29aa7c83fe3303, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_4aec16dab26cd8b6a398e5f0226ceec7cc4364ec73726010ce10f5e051d1c883\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/7d/7d2a8fda0d4c72141bcbbdea7d7a05aa7ce60cdb53a1c5733c6beeebf8985277.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_bd9adf6263b4292d0ab6cf845dfc25e3fd6c92b52d113daefc29aa7c83fe3303, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_bd9adf6263b4292d0ab6cf845dfc25e3fd6c92b52d113daefc29aa7c83fe3303\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_bd9adf6263b4292d0ab6cf845dfc25e3fd6c92b52d113daefc29aa7c83fe3303\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_bd9adf6263b4292d0ab6cf845dfc25e3fd6c92b52d113daefc29aa7c83fe3303, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_bd9adf6263b4292d0ab6cf845dfc25e3fd6c92b52d113daefc29aa7c83fe3303\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_bd9adf6263b4292d0ab6cf845dfc25e3fd6c92b52d113daefc29aa7c83fe3303, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_bd9adf6263b4292d0ab6cf845dfc25e3fd6c92b52d113daefc29aa7c83fe3303\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_bd9adf6263b4292d0ab6cf845dfc25e3fd6c92b52d113daefc29aa7c83fe3303\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"views/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"views/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"views/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"views/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"views/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"views/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"views/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"about-1\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"views/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"about-1\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"views/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"about-1\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"views/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"about-1\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"views/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"about-1\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/web/index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-01-18 01:28:13', '2020-01-18 01:28:13', 'c6e63100-b8be-4e1e-b126-42c1f4179453'),
(29, 'ElementQuery::getIterator()', '/Users/jameslamarre/Desktop/web/gfp/templates/globals/header.twig:41', '2020-01-25 20:22:59', '/Users/jameslamarre/Desktop/web/gfp/templates/globals/header.twig', 41, 'Looping through element queries directly has been deprecated. Use the all() function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":596,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\EntryQuery\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/d5/d551a29d862feb133b8621f3c5daf3e8bc6afc0fa34003e15bd52f36f7d644b2.php\",\"line\":99,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_c68605d86e29b4f3ae7dc07dbf394c220723722e8844d98d90ac1cfbf51f071f\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_c68605d86e29b4f3ae7dc07dbf394c220723722e8844d98d90ac1cfbf51f071f\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => false, ...], []\"},{\"objectClass\":\"__TwigTemplate_c68605d86e29b4f3ae7dc07dbf394c220723722e8844d98d90ac1cfbf51f071f\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => false, ...], []\"},{\"objectClass\":\"__TwigTemplate_c68605d86e29b4f3ae7dc07dbf394c220723722e8844d98d90ac1cfbf51f071f\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/7d/7dc25087bb7cc4ba968da78cf3e514d7420860b30040639eddfbc4ac65c9615e.php\",\"line\":170,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => false, ...]\"},{\"objectClass\":\"__TwigTemplate_69311e0d265602f3bb969f79d425fb5fb10e797877ce22f9864c2e3ae50c7630\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_69311e0d265602f3bb969f79d425fb5fb10e797877ce22f9864c2e3ae50c7630\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => false, ...], [\\\"content\\\" => [__TwigTemplate_379af40545a9cad2fce09adda0d8833eae7ac78043674e495046a487b4477347, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_69311e0d265602f3bb969f79d425fb5fb10e797877ce22f9864c2e3ae50c7630\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => false, ...], [\\\"content\\\" => [__TwigTemplate_379af40545a9cad2fce09adda0d8833eae7ac78043674e495046a487b4477347, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_69311e0d265602f3bb969f79d425fb5fb10e797877ce22f9864c2e3ae50c7630\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/fc/fccba4f654a42fa3a7dcaa58f3abb9af8595224ca6ce25fd3cb2c64df2c9b7f0.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => false, ...], [\\\"content\\\" => [__TwigTemplate_379af40545a9cad2fce09adda0d8833eae7ac78043674e495046a487b4477347, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_379af40545a9cad2fce09adda0d8833eae7ac78043674e495046a487b4477347\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_379af40545a9cad2fce09adda0d8833eae7ac78043674e495046a487b4477347\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => false, ...], [\\\"content\\\" => [__TwigTemplate_379af40545a9cad2fce09adda0d8833eae7ac78043674e495046a487b4477347, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_379af40545a9cad2fce09adda0d8833eae7ac78043674e495046a487b4477347\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => false, ...], [\\\"content\\\" => [__TwigTemplate_379af40545a9cad2fce09adda0d8833eae7ac78043674e495046a487b4477347, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_379af40545a9cad2fce09adda0d8833eae7ac78043674e495046a487b4477347\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_379af40545a9cad2fce09adda0d8833eae7ac78043674e495046a487b4477347\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/web/index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-01-25 20:22:59', '2020-01-25 20:22:59', '5740009b-0ff9-4c09-9059-8bb11e5da049'),
(77, 'ElementQuery::getIterator()', '/Users/jameslamarre/Desktop/web/gfp/templates/globals/header.twig:67', '2020-01-25 20:22:59', '/Users/jameslamarre/Desktop/web/gfp/templates/globals/header.twig', 67, 'Looping through element queries directly has been deprecated. Use the all() function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":596,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\EntryQuery\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/d5/d551a29d862feb133b8621f3c5daf3e8bc6afc0fa34003e15bd52f36f7d644b2.php\",\"line\":155,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_c68605d86e29b4f3ae7dc07dbf394c220723722e8844d98d90ac1cfbf51f071f\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_c68605d86e29b4f3ae7dc07dbf394c220723722e8844d98d90ac1cfbf51f071f\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => false, ...], []\"},{\"objectClass\":\"__TwigTemplate_c68605d86e29b4f3ae7dc07dbf394c220723722e8844d98d90ac1cfbf51f071f\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => false, ...], []\"},{\"objectClass\":\"__TwigTemplate_c68605d86e29b4f3ae7dc07dbf394c220723722e8844d98d90ac1cfbf51f071f\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/7d/7dc25087bb7cc4ba968da78cf3e514d7420860b30040639eddfbc4ac65c9615e.php\",\"line\":170,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => false, ...]\"},{\"objectClass\":\"__TwigTemplate_69311e0d265602f3bb969f79d425fb5fb10e797877ce22f9864c2e3ae50c7630\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_69311e0d265602f3bb969f79d425fb5fb10e797877ce22f9864c2e3ae50c7630\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => false, ...], [\\\"content\\\" => [__TwigTemplate_379af40545a9cad2fce09adda0d8833eae7ac78043674e495046a487b4477347, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_69311e0d265602f3bb969f79d425fb5fb10e797877ce22f9864c2e3ae50c7630\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => false, ...], [\\\"content\\\" => [__TwigTemplate_379af40545a9cad2fce09adda0d8833eae7ac78043674e495046a487b4477347, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_69311e0d265602f3bb969f79d425fb5fb10e797877ce22f9864c2e3ae50c7630\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/fc/fccba4f654a42fa3a7dcaa58f3abb9af8595224ca6ce25fd3cb2c64df2c9b7f0.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => false, ...], [\\\"content\\\" => [__TwigTemplate_379af40545a9cad2fce09adda0d8833eae7ac78043674e495046a487b4477347, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_379af40545a9cad2fce09adda0d8833eae7ac78043674e495046a487b4477347\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_379af40545a9cad2fce09adda0d8833eae7ac78043674e495046a487b4477347\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => false, ...], [\\\"content\\\" => [__TwigTemplate_379af40545a9cad2fce09adda0d8833eae7ac78043674e495046a487b4477347, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_379af40545a9cad2fce09adda0d8833eae7ac78043674e495046a487b4477347\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => false, ...], [\\\"content\\\" => [__TwigTemplate_379af40545a9cad2fce09adda0d8833eae7ac78043674e495046a487b4477347, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_379af40545a9cad2fce09adda0d8833eae7ac78043674e495046a487b4477347\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_379af40545a9cad2fce09adda0d8833eae7ac78043674e495046a487b4477347\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/web/index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-01-25 20:22:59', '2020-01-25 20:22:59', '6f4846ab-8658-4087-af16-c06a3c9d0ccb');
INSERT INTO `craft_deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(290, 'ElementQuery::getIterator()', '/Users/jameslamarre/Desktop/web/gfp/templates/globals/header.twig:43', '2020-01-25 17:59:01', '/Users/jameslamarre/Desktop/web/gfp/templates/globals/header.twig', 43, 'Looping through element queries directly has been deprecated. Use the all() function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":596,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\EntryQuery\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/57/573a5e442fca9ea468fab50a3462e4a4e11d2538977ab4320a5eeca0a5ec5c7d.php\",\"line\":101,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8082c4509328f32f94adbd6c1ef429e0983c0806625960f8e338124144b594d4\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8082c4509328f32f94adbd6c1ef429e0983c0806625960f8e338124144b594d4\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], []\"},{\"objectClass\":\"__TwigTemplate_8082c4509328f32f94adbd6c1ef429e0983c0806625960f8e338124144b594d4\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], []\"},{\"objectClass\":\"__TwigTemplate_8082c4509328f32f94adbd6c1ef429e0983c0806625960f8e338124144b594d4\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/ce/ce9c7d08aa5e0473fe304ecb70d91e298e436e0f371a2586c9942d6eb7ece8f9.php\",\"line\":170,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...]\"},{\"objectClass\":\"__TwigTemplate_4aec16dab26cd8b6a398e5f0226ceec7cc4364ec73726010ce10f5e051d1c883\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_4aec16dab26cd8b6a398e5f0226ceec7cc4364ec73726010ce10f5e051d1c883\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0b1375150ad49f66e7677bf23fad13dad7104b008e40e788ea0da0a608f2c0fa, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_4aec16dab26cd8b6a398e5f0226ceec7cc4364ec73726010ce10f5e051d1c883\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0b1375150ad49f66e7677bf23fad13dad7104b008e40e788ea0da0a608f2c0fa, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_4aec16dab26cd8b6a398e5f0226ceec7cc4364ec73726010ce10f5e051d1c883\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/e1/e14d54cedbc1b907292b002d6dddfe26ccd882a35c1a0bae4bf48773fa9a8e90.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0b1375150ad49f66e7677bf23fad13dad7104b008e40e788ea0da0a608f2c0fa, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0b1375150ad49f66e7677bf23fad13dad7104b008e40e788ea0da0a608f2c0fa\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_0b1375150ad49f66e7677bf23fad13dad7104b008e40e788ea0da0a608f2c0fa\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0b1375150ad49f66e7677bf23fad13dad7104b008e40e788ea0da0a608f2c0fa, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0b1375150ad49f66e7677bf23fad13dad7104b008e40e788ea0da0a608f2c0fa\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0b1375150ad49f66e7677bf23fad13dad7104b008e40e788ea0da0a608f2c0fa, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0b1375150ad49f66e7677bf23fad13dad7104b008e40e788ea0da0a608f2c0fa\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_0b1375150ad49f66e7677bf23fad13dad7104b008e40e788ea0da0a608f2c0fa\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/web/index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-01-25 17:59:01', '2020-01-25 17:59:01', '0c13634a-6385-4d40-94e8-96a4e5ef6003'),
(291, 'ElementQuery::getIterator()', '/Users/jameslamarre/Desktop/web/gfp/templates/globals/header.twig:69', '2020-01-25 17:59:01', '/Users/jameslamarre/Desktop/web/gfp/templates/globals/header.twig', 69, 'Looping through element queries directly has been deprecated. Use the all() function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":596,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\EntryQuery\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/57/573a5e442fca9ea468fab50a3462e4a4e11d2538977ab4320a5eeca0a5ec5c7d.php\",\"line\":157,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_8082c4509328f32f94adbd6c1ef429e0983c0806625960f8e338124144b594d4\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_8082c4509328f32f94adbd6c1ef429e0983c0806625960f8e338124144b594d4\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], []\"},{\"objectClass\":\"__TwigTemplate_8082c4509328f32f94adbd6c1ef429e0983c0806625960f8e338124144b594d4\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], []\"},{\"objectClass\":\"__TwigTemplate_8082c4509328f32f94adbd6c1ef429e0983c0806625960f8e338124144b594d4\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/ce/ce9c7d08aa5e0473fe304ecb70d91e298e436e0f371a2586c9942d6eb7ece8f9.php\",\"line\":170,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...]\"},{\"objectClass\":\"__TwigTemplate_4aec16dab26cd8b6a398e5f0226ceec7cc4364ec73726010ce10f5e051d1c883\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_4aec16dab26cd8b6a398e5f0226ceec7cc4364ec73726010ce10f5e051d1c883\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0b1375150ad49f66e7677bf23fad13dad7104b008e40e788ea0da0a608f2c0fa, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_4aec16dab26cd8b6a398e5f0226ceec7cc4364ec73726010ce10f5e051d1c883\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0b1375150ad49f66e7677bf23fad13dad7104b008e40e788ea0da0a608f2c0fa, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_4aec16dab26cd8b6a398e5f0226ceec7cc4364ec73726010ce10f5e051d1c883\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/e1/e14d54cedbc1b907292b002d6dddfe26ccd882a35c1a0bae4bf48773fa9a8e90.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0b1375150ad49f66e7677bf23fad13dad7104b008e40e788ea0da0a608f2c0fa, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0b1375150ad49f66e7677bf23fad13dad7104b008e40e788ea0da0a608f2c0fa\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_0b1375150ad49f66e7677bf23fad13dad7104b008e40e788ea0da0a608f2c0fa\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0b1375150ad49f66e7677bf23fad13dad7104b008e40e788ea0da0a608f2c0fa, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0b1375150ad49f66e7677bf23fad13dad7104b008e40e788ea0da0a608f2c0fa\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_0b1375150ad49f66e7677bf23fad13dad7104b008e40e788ea0da0a608f2c0fa, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_0b1375150ad49f66e7677bf23fad13dad7104b008e40e788ea0da0a608f2c0fa\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_0b1375150ad49f66e7677bf23fad13dad7104b008e40e788ea0da0a608f2c0fa\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/web/index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2020-01-25 17:59:01', '2020-01-25 17:59:01', '6bac9c71-f14c-41b7-b071-8d8b064cd91b');

-- --------------------------------------------------------

--
-- Table structure for table `craft_drafts`
--

CREATE TABLE `craft_drafts` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_drafts`
--

INSERT INTO `craft_drafts` (`id`, `sourceId`, `creatorId`, `name`, `notes`) VALUES
(6, NULL, 1, 'First draft', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `craft_elementindexsettings`
--

CREATE TABLE `craft_elementindexsettings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `craft_elements`
--

CREATE TABLE `craft_elements` (
  `id` int(11) NOT NULL,
  `draftId` int(11) DEFAULT NULL,
  `revisionId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_elements`
--

INSERT INTO `craft_elements` (`id`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, NULL, NULL, 'craft\\elements\\User', 1, 0, '2019-11-16 18:40:28', '2019-11-16 18:54:52', NULL, 'cb597c03-c537-4553-9d1d-150c24cbf58e'),
(2, NULL, NULL, 6, 'craft\\elements\\Entry', 1, 0, '2019-11-23 17:00:31', '2020-01-19 02:06:32', NULL, '7ba85b6d-6073-4319-becb-aaad26f90e3c'),
(3, NULL, 1, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-23 17:00:31', '2019-11-23 17:00:31', NULL, '41e39008-5171-476a-b29d-7af4156e0964'),
(4, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2019-11-23 17:07:16', '2020-01-16 02:10:25', '2020-01-16 02:10:25', '2caa0e6a-0878-4525-a24b-845596599d2a'),
(5, NULL, 2, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-23 17:07:16', '2019-11-23 17:07:16', '2020-01-16 02:10:25', 'fd62115b-f10f-4e8f-8591-80bafc5a2700'),
(6, NULL, NULL, 8, 'craft\\elements\\Entry', 1, 0, '2019-11-23 17:07:59', '2020-01-19 01:36:31', '2020-01-19 01:36:31', '17fc55be-2cee-40e4-adcc-4da486191d0c'),
(7, NULL, 3, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-23 17:07:59', '2019-11-23 17:07:59', '2020-01-19 01:36:31', '62e19400-4a85-4a3b-bd65-c04f0687508b'),
(8, NULL, NULL, 2, 'craft\\elements\\GlobalSet', 1, 0, '2019-11-23 18:23:43', '2019-12-04 03:53:35', NULL, '5fae239b-fc55-4e9d-913e-decd8dcc8d3a'),
(9, NULL, NULL, 3, 'craft\\elements\\GlobalSet', 1, 0, '2019-11-23 18:37:41', '2019-12-05 00:38:34', NULL, '883d4f51-a9a9-41fd-bfed-0fbda8ff415b'),
(10, NULL, NULL, 4, 'craft\\elements\\GlobalSet', 1, 0, '2019-11-23 18:38:06', '2019-12-07 03:37:22', NULL, '74f79638-484e-4e72-bc38-9ba1a4f3a3e2'),
(11, NULL, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2019-11-23 18:53:39', '2020-01-25 20:03:29', NULL, '64443692-cd3a-40bb-bfbd-422b5cf71ba0'),
(12, NULL, 4, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-23 18:53:39', '2019-11-23 18:53:39', NULL, 'cdc945dd-e870-4537-9edf-6e53ab783c41'),
(13, NULL, 5, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-23 18:54:05', '2019-11-23 18:54:05', NULL, '6803ba1f-0fa7-4c36-b6c6-a571a30cedfd'),
(14, NULL, 6, 5, 'craft\\elements\\Entry', 1, 0, '2019-11-23 18:54:34', '2019-11-23 18:54:34', NULL, '34c53b94-774c-4140-bd0c-0d24ec4f87bb'),
(15, NULL, 7, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-23 20:21:15', '2019-11-23 20:21:15', NULL, '80f95b8c-bb5c-49d2-9eee-59e9428c1446'),
(16, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-23 20:23:41', '2019-11-23 20:23:48', NULL, '8ef0310c-503a-4846-be12-45de5e8849b7'),
(17, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-23 20:24:29', '2019-11-23 20:24:37', NULL, 'b124c0ba-c815-475f-8f90-68a3edccbf63'),
(18, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-11-23 20:25:01', '2020-01-19 02:06:32', NULL, '72718e2b-91a4-4dd9-bffb-d6736fbb528f'),
(19, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-11-23 20:25:01', '2020-01-19 02:06:32', NULL, '945a0239-a57c-4a7c-9fca-42f998bee70a'),
(20, NULL, 8, 6, 'craft\\elements\\Entry', 1, 0, '2019-11-23 20:25:01', '2019-11-23 20:25:01', NULL, '94c8a783-6635-40b6-87a0-660ef8a9b922'),
(21, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-11-23 20:25:01', '2019-11-23 20:25:01', NULL, '7ecb8761-fd81-4c8c-95d3-b951c280b66a'),
(22, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-11-23 20:25:01', '2019-11-23 20:25:01', NULL, '6485f58d-a316-4efd-a922-95cdfc85d650'),
(23, NULL, 9, 6, 'craft\\elements\\Entry', 1, 0, '2019-11-23 20:54:33', '2019-11-23 20:54:33', NULL, '515f192d-ede0-4bd1-a674-f4203351340e'),
(24, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-11-23 20:54:33', '2019-11-23 20:54:33', NULL, '97764d1b-fd35-43be-9b0c-a8306ac99c73'),
(25, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-11-23 20:54:33', '2019-11-23 20:54:33', NULL, '4b9b8ba7-c6f9-487b-9a36-7d1bda7995dd'),
(26, NULL, 10, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-23 22:38:17', '2019-11-23 22:38:17', '2020-01-16 02:10:25', 'a5c7a520-994b-481d-a36d-05b08f1c27c9'),
(27, NULL, 11, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-23 22:38:24', '2019-11-23 22:38:24', '2020-01-19 01:36:31', '6c2b3767-3266-4d0d-a73e-388d91ec11f5'),
(28, NULL, 12, 7, 'craft\\elements\\Entry', 1, 0, '2019-11-23 22:39:19', '2019-11-23 22:39:19', '2020-01-16 02:10:25', '3729c638-6898-429b-a20d-437ccf8e0ae6'),
(29, NULL, 13, 7, 'craft\\elements\\Entry', 1, 0, '2019-11-23 22:49:55', '2019-11-23 22:49:55', '2020-01-16 02:10:25', 'b945bcaf-6814-45a7-92c2-e6523062fd91'),
(30, NULL, 14, 7, 'craft\\elements\\Entry', 1, 0, '2019-11-23 22:51:44', '2019-11-23 22:51:44', '2020-01-16 02:10:25', '12ec4b87-0345-4f58-b132-1ed0f7d1d2b7'),
(31, NULL, 15, 7, 'craft\\elements\\Entry', 1, 0, '2019-11-23 22:51:59', '2019-11-23 22:51:59', '2020-01-16 02:10:25', '1ed6f327-925d-4f19-bc40-2b875ca617da'),
(32, NULL, 16, 7, 'craft\\elements\\Entry', 1, 0, '2019-11-23 22:53:04', '2019-11-23 22:53:04', '2020-01-16 02:10:25', 'f684a271-196b-4c9c-aec1-8a55b4bd4c20'),
(33, NULL, 17, 7, 'craft\\elements\\Entry', 1, 0, '2019-11-23 22:53:15', '2019-11-23 22:53:15', '2020-01-16 02:10:25', '4365f0d5-7181-4404-823d-70910fce1e68'),
(34, NULL, 18, 6, 'craft\\elements\\Entry', 1, 0, '2019-12-01 00:04:10', '2019-12-01 00:04:10', NULL, '3479ba1b-6f7d-4a66-952e-3ff2be9a594b'),
(35, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 00:04:11', '2019-12-01 00:04:10', NULL, 'c41a1c8f-8a67-492d-92e4-280e022943d9'),
(36, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 00:04:11', '2019-12-01 00:04:11', NULL, '55ef20bc-ec8a-4e3b-a490-1dbf7bb9198c'),
(37, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 00:09:14', '2020-01-19 02:06:32', NULL, '9cf2045c-c8f7-4c45-b80d-9fc83c12bb48'),
(38, NULL, 19, 6, 'craft\\elements\\Entry', 1, 0, '2019-12-01 00:09:14', '2019-12-01 00:09:14', NULL, 'ee5281dd-700a-48a1-8531-f3dd7465aa27'),
(39, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 00:09:15', '2019-12-01 00:09:14', NULL, '671b7050-5334-4e56-adf4-dbfc015a18d6'),
(40, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 00:09:15', '2019-12-01 00:09:14', NULL, '1e6c68bf-9b55-41e5-bb41-0861258db8d5'),
(41, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 00:09:15', '2019-12-01 00:09:14', NULL, '9026b094-0e9c-4d3f-ad99-af1708ccf9bd'),
(42, NULL, 20, 6, 'craft\\elements\\Entry', 1, 0, '2019-12-01 00:13:23', '2019-12-01 00:13:23', NULL, '8cbedbe3-47f9-4cd5-b5ba-13883440f1c8'),
(43, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 00:13:23', '2019-12-01 00:13:23', NULL, '83a93b51-a634-4b8e-8b3b-984d909dea3d'),
(44, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 00:13:23', '2019-12-01 00:13:23', NULL, 'ac345d7d-334e-4374-a7d5-d609a3d43859'),
(45, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 00:13:23', '2019-12-01 00:13:23', NULL, '2c16a60b-e34e-4695-bef7-1b6387621036'),
(46, NULL, 21, 6, 'craft\\elements\\Entry', 1, 0, '2019-12-01 00:14:58', '2019-12-01 00:14:58', NULL, 'faf7d585-ad3a-4e07-b2f2-4c4e0b17c75a'),
(47, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 00:14:59', '2019-12-01 00:14:58', NULL, '27a42fa5-7b63-4fff-a5da-020ef8cb3433'),
(48, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 00:14:59', '2019-12-01 00:14:59', NULL, '9cda9ac0-99b9-411c-89c7-677147953394'),
(49, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 00:14:59', '2019-12-01 00:14:59', NULL, '69c4270c-e0c3-4e40-b4d2-eee88130be9d'),
(50, NULL, 22, 7, 'craft\\elements\\Entry', 1, 0, '2019-12-01 00:44:37', '2019-12-01 00:44:37', '2020-01-16 02:10:25', '84c72a9c-da30-4ce2-845a-39b117f3bfbf'),
(51, NULL, 23, 7, 'craft\\elements\\Entry', 1, 0, '2019-12-01 00:44:38', '2019-12-01 00:44:38', '2020-01-16 02:10:25', 'a5eb8bad-2488-471c-b981-e33841f07030'),
(52, NULL, 24, 8, 'craft\\elements\\Entry', 1, 0, '2019-12-01 00:44:49', '2019-12-01 00:44:49', '2020-01-19 01:36:31', 'deedd40e-6feb-4c73-b03a-8786a4aa6096'),
(53, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 00:48:13', '2019-12-01 00:52:48', '2019-12-04 20:03:31', 'f56ff11e-3077-420e-a617-540c268bd9dc'),
(54, NULL, 25, 7, 'craft\\elements\\Entry', 1, 0, '2019-12-01 00:48:13', '2019-12-01 00:48:13', '2020-01-16 02:10:25', 'f5fc8c7c-24a8-4bc5-8aff-647fb553db7c'),
(55, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 00:48:14', '2019-12-01 00:48:13', NULL, '4a7c1a87-7aff-4bcd-9249-145b48e2537e'),
(56, NULL, 26, 7, 'craft\\elements\\Entry', 1, 0, '2019-12-01 00:52:47', '2019-12-01 00:52:47', '2020-01-16 02:10:25', '088f6030-d7c5-4713-95a6-df18bfd3939c'),
(57, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 00:52:47', '2019-12-01 00:52:47', NULL, '41480063-7c46-44e9-b2e8-6af130fae99d'),
(58, NULL, 27, 7, 'craft\\elements\\Entry', 1, 0, '2019-12-01 00:52:48', '2019-12-01 00:52:48', '2020-01-16 02:10:25', '5a86391d-0080-48e4-9e7b-fab60545f474'),
(59, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 00:52:48', '2019-12-01 00:52:48', NULL, '91e17c72-0d98-4d72-be89-5a4c9c432df8'),
(60, NULL, 28, 8, 'craft\\elements\\Entry', 1, 0, '2019-12-01 00:52:58', '2019-12-01 00:52:58', '2020-01-19 01:36:31', '7af3b56a-b045-46ab-8c15-609e57ce1440'),
(61, NULL, 29, 6, 'craft\\elements\\Entry', 1, 0, '2019-12-01 19:11:21', '2019-12-01 19:11:21', NULL, '32738f37-f6d7-4624-8ab1-c99fdc0b960d'),
(62, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 19:11:22', '2019-12-01 19:11:21', NULL, 'b98c9fad-1018-46e9-bf3d-4151f1924568'),
(63, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 19:11:22', '2019-12-01 19:11:21', NULL, '1b3cd2bd-8a9f-4685-a710-780344f0207b'),
(64, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 19:11:22', '2019-12-01 19:11:21', NULL, 'e5d7d826-43cd-4ae0-941d-346da5009807'),
(65, NULL, 30, 6, 'craft\\elements\\Entry', 1, 0, '2019-12-04 03:38:47', '2019-12-04 03:38:47', NULL, '1d1f6e90-5b7f-491e-bd82-4280945ea6d2'),
(66, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 03:38:47', '2019-12-04 03:38:47', NULL, 'd87dd08b-3850-4006-9a08-c77d75acae8a'),
(67, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 03:38:48', '2019-12-04 03:38:47', NULL, '913ad2e0-8f94-4e0b-aec4-a0b2bbc24093'),
(68, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 03:38:48', '2019-12-04 03:38:47', NULL, 'd099abdc-2e02-4ba4-bec5-8b84f4293a4c'),
(71, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:03:31', '2020-01-16 02:10:25', '2020-01-16 02:10:25', '0a057600-942d-4a5d-879b-88044e3fed6c'),
(72, NULL, 31, 7, 'craft\\elements\\Entry', 1, 0, '2019-12-04 20:03:31', '2019-12-04 20:03:31', '2020-01-16 02:10:25', '9e5cb6b2-6764-44ec-9824-2ce4b2bd9b99'),
(73, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:03:31', '2019-12-04 20:03:31', NULL, 'ea7d1a20-21c9-482f-9988-ef89d9436857'),
(74, NULL, 32, 6, 'craft\\elements\\Entry', 1, 0, '2019-12-04 20:09:38', '2019-12-04 20:09:38', NULL, '25e27fb9-e468-46b3-b7db-ff302349c0e7'),
(75, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:09:38', '2019-12-04 20:09:38', NULL, 'e46a23f2-ee2a-4a5b-aee5-35242bcaf9b0'),
(76, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:09:38', '2019-12-04 20:09:38', NULL, '0054b6a5-b09b-4e16-b3cd-1f71251cb233'),
(77, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:09:38', '2019-12-04 20:09:38', NULL, 'e1df6d5c-dbaf-4f9d-ab0d-2987d679ee7e'),
(78, NULL, 33, 6, 'craft\\elements\\Entry', 1, 0, '2019-12-04 20:10:15', '2019-12-04 20:10:15', NULL, '24209131-a712-4f13-95fc-67da16c32d86'),
(79, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:10:15', '2019-12-04 20:10:15', NULL, 'da47e540-3bf8-4cc8-b94b-84f5e3ea745b'),
(80, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:10:15', '2019-12-04 20:10:15', NULL, '2010ae59-d177-4112-84d6-758439c49831'),
(81, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:10:15', '2019-12-04 20:10:15', NULL, '7e67d35f-703c-431b-a966-9d1ecafe97f0'),
(82, NULL, 34, 7, 'craft\\elements\\Entry', 1, 0, '2019-12-04 20:12:28', '2019-12-04 20:12:28', '2020-01-16 02:10:25', 'bb472ab3-1114-4b86-9bda-66b88b7de563'),
(83, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:12:28', '2019-12-04 20:12:28', NULL, 'a7f9ba37-409c-4714-9d65-2fd882652d67'),
(84, NULL, 35, 7, 'craft\\elements\\Entry', 1, 0, '2019-12-04 20:12:54', '2019-12-04 20:12:54', '2020-01-16 02:10:25', '674ac2db-4d5d-41f0-ac51-3126e889d9a8'),
(85, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:12:54', '2019-12-04 20:12:54', NULL, '56555e63-4b0d-471a-a577-352c3daffa7e'),
(86, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:14:55', '2020-01-19 01:36:31', '2020-01-19 01:36:31', 'cca8089e-b991-45ca-9f88-3c5988683170'),
(87, NULL, 36, 8, 'craft\\elements\\Entry', 1, 0, '2019-12-04 20:14:55', '2019-12-04 20:14:55', '2020-01-19 01:36:31', 'e831ff20-c86d-4d41-9e66-2ac5d9fd8b05'),
(88, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:14:55', '2019-12-04 20:14:55', NULL, '7c8177d3-e884-470c-9008-a22bd8295810'),
(89, NULL, 37, 8, 'craft\\elements\\Entry', 1, 0, '2019-12-04 20:15:27', '2019-12-04 20:15:27', '2020-01-19 01:36:31', '1f65ca55-a4a4-465c-8baa-6efe5043c523'),
(90, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:15:27', '2019-12-04 20:15:27', NULL, 'a2c51781-d86e-4083-8d5b-40aa5e7bbf25'),
(91, NULL, 38, 8, 'craft\\elements\\Entry', 1, 0, '2019-12-04 20:15:40', '2019-12-04 20:15:40', '2020-01-19 01:36:31', '2879d7b1-6e11-41bd-9c75-8bb5b03ee6ed'),
(92, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:15:40', '2019-12-04 20:15:40', NULL, '499edc1b-3619-4ca7-a9ef-7b7a9123dd27'),
(93, NULL, 39, 8, 'craft\\elements\\Entry', 1, 0, '2019-12-04 20:15:54', '2019-12-04 20:15:54', '2020-01-19 01:36:31', 'ad90dc3d-c380-4896-aef0-4d70b90351dc'),
(94, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:15:54', '2019-12-04 20:15:54', NULL, 'e85c71a3-4644-4cb7-8fff-e2f465551952'),
(95, NULL, 40, 8, 'craft\\elements\\Entry', 1, 0, '2019-12-04 20:16:00', '2019-12-04 20:16:00', '2020-01-19 01:36:31', 'd59d3e28-9ca2-4124-a25f-785c9768ce96'),
(96, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:16:00', '2019-12-04 20:16:00', NULL, 'fc3ccf9a-ba6c-4dea-b274-0951bc941ea3'),
(97, NULL, 41, 8, 'craft\\elements\\Entry', 1, 0, '2019-12-04 20:16:09', '2019-12-04 20:16:09', '2020-01-19 01:36:31', '3c13a59a-c33f-4f6f-872c-29e152679846'),
(98, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:16:10', '2019-12-04 20:16:09', NULL, '8d97fe8f-8be0-4cc7-8a59-d86dbc90ab4f'),
(99, NULL, 42, 6, 'craft\\elements\\Entry', 1, 0, '2019-12-04 20:18:01', '2019-12-04 20:18:01', NULL, '77b9893b-3c65-4914-b43e-34644500111c'),
(100, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:18:01', '2019-12-04 20:18:01', NULL, 'd71b871e-2a24-48bd-91c7-f8cecd6de0de'),
(101, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:18:01', '2019-12-04 20:18:01', NULL, '724028c2-1f8b-456b-a2df-980ae35fc966'),
(102, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:18:01', '2019-12-04 20:18:01', NULL, '67a605e1-feaf-4ebb-9544-46427ace741b'),
(103, NULL, 43, 6, 'craft\\elements\\Entry', 1, 0, '2019-12-04 20:18:57', '2019-12-04 20:18:57', NULL, '78c7587c-2973-492a-b4cf-7ae47b875b47'),
(104, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:18:57', '2019-12-04 20:18:57', NULL, 'b03fafb2-af02-4c35-944a-f8cb5c4e40ed'),
(105, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:18:57', '2019-12-04 20:18:57', NULL, '70de9e1c-2ce7-4eba-9df2-31e3465b29a0'),
(106, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:18:57', '2019-12-04 20:18:57', NULL, 'd0c0adcb-8b95-4137-b702-e5bea04e8d2f'),
(107, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-12-04 20:28:00', '2019-12-04 21:00:16', NULL, 'efc576ec-187d-4306-ad6c-353307565776'),
(108, NULL, 44, 6, 'craft\\elements\\Entry', 1, 0, '2019-12-04 20:28:07', '2019-12-04 20:28:07', NULL, '44129bea-c2d6-4744-8838-d0303bd22592'),
(109, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:28:08', '2019-12-04 20:28:07', NULL, '744a3eb8-b500-407e-baac-8183d8a6f794'),
(110, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:28:08', '2019-12-04 20:28:07', NULL, 'fdaacfe5-be23-4098-80b0-d1bba9cab3fb'),
(111, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:28:08', '2019-12-04 20:28:07', NULL, 'e6e9ce2b-64b0-43df-8682-a759807e11cf'),
(112, NULL, 45, 6, 'craft\\elements\\Entry', 1, 0, '2019-12-04 20:30:35', '2019-12-04 20:30:35', NULL, '8c5ac641-3c4f-4123-baa3-46d46c9e407b'),
(113, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:30:35', '2019-12-04 20:30:35', NULL, '7cf3b31d-ab72-4853-86af-acd9ee340e8e'),
(114, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:30:35', '2019-12-04 20:30:35', NULL, 'edad3682-09ee-4baa-ae39-e180fcaa8c34'),
(115, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:30:36', '2019-12-04 20:30:35', NULL, '22bd8f56-a253-4a26-8200-f9cd0c003693'),
(116, NULL, 46, 6, 'craft\\elements\\Entry', 1, 0, '2019-12-04 20:45:54', '2019-12-04 20:45:54', NULL, 'fda527b7-481c-4801-837d-8dba3f171d9d'),
(117, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:45:54', '2019-12-04 20:45:54', NULL, 'f0140da6-ccfc-44e1-b697-2e28287ed014'),
(118, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:45:54', '2019-12-04 20:45:54', NULL, 'd880eed2-b5ae-4aec-a701-815e75c0e399'),
(119, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:45:54', '2019-12-04 20:45:54', NULL, 'a9591499-e455-4a42-95b4-c7a05fbcab2a'),
(120, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-12-04 20:50:07', '2019-12-04 20:50:07', '2019-12-04 20:50:11', '2e9c552d-c7f3-4d8b-a642-24c8097333cc'),
(121, NULL, 47, 6, 'craft\\elements\\Entry', 1, 0, '2019-12-04 20:50:15', '2019-12-04 20:50:15', NULL, '3d857972-d84d-4c4a-a2de-4f189754554e'),
(122, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:50:15', '2019-12-04 20:50:15', NULL, '2e350e99-874b-4d46-82da-e7eada903804'),
(123, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:50:15', '2019-12-04 20:50:15', NULL, 'b1647d61-0fec-442b-bc06-5fe34369c53d'),
(124, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 20:50:15', '2019-12-04 20:50:15', NULL, 'cedc5d9a-8ab6-4020-85b0-dd65935de7ba'),
(125, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-12-04 21:00:12', '2019-12-04 21:00:12', '2019-12-04 21:00:16', '10ab9e80-2226-420c-ad50-0c81eae5bade'),
(126, NULL, 48, 6, 'craft\\elements\\Entry', 1, 0, '2019-12-04 21:00:19', '2019-12-04 21:00:19', NULL, 'c96ea5ef-5ee6-4384-801d-d36dcc58cc3d'),
(127, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 21:00:19', '2019-12-04 21:00:19', NULL, 'fa8c78e5-5b0f-4b06-bc7d-21d257031eb6'),
(128, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 21:00:19', '2019-12-04 21:00:19', NULL, 'f56d84b2-3aff-4d8d-a4f7-9dcd96de8475'),
(129, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 21:00:19', '2019-12-04 21:00:19', NULL, 'aa854410-4fa0-40df-ab32-7d1d994ddf77'),
(130, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-12-04 21:08:45', '2019-12-04 21:08:45', NULL, '30b58cb9-068c-4099-8ab7-00c02f9d8a8e'),
(131, NULL, 49, 6, 'craft\\elements\\Entry', 1, 0, '2019-12-04 21:08:49', '2019-12-04 21:08:49', NULL, '1e808820-f468-4f40-b008-26f46f2add7c'),
(132, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 21:08:49', '2019-12-04 21:08:49', NULL, 'ff78b1fb-151d-4c97-9afb-aaefc609b037'),
(133, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 21:08:49', '2019-12-04 21:08:49', NULL, 'ea144257-db0a-494c-90ee-fee09e8e1747'),
(134, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 21:08:49', '2019-12-04 21:08:49', NULL, 'a1b04dfb-bab0-4110-8773-1f67c873d97c'),
(135, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-12-04 21:17:08', '2019-12-04 21:20:47', NULL, 'b6f9c504-cc38-490b-90cf-f390a8e43175'),
(136, NULL, 50, 7, 'craft\\elements\\Entry', 1, 0, '2019-12-04 21:17:12', '2019-12-04 21:17:12', '2020-01-16 02:10:25', 'f084b3c7-dda3-4060-8758-d6a96619db40'),
(137, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 21:17:12', '2019-12-04 21:17:12', NULL, 'f675c8d7-22fa-46d6-9291-99f54af4db5a'),
(138, NULL, 51, 7, 'craft\\elements\\Entry', 1, 0, '2019-12-04 21:17:49', '2019-12-04 21:17:49', '2020-01-16 02:10:25', '65340f21-6b91-4089-a5a3-d074996003aa'),
(139, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 21:17:49', '2019-12-04 21:17:49', NULL, '767d7587-5766-433e-a6bd-2017129ce3f7'),
(140, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-12-04 21:20:44', '2019-12-04 21:20:44', '2019-12-04 21:20:48', '8b7b241b-d450-4c4c-92a3-5140256502b0'),
(141, NULL, 52, 7, 'craft\\elements\\Entry', 1, 0, '2019-12-04 21:20:50', '2019-12-04 21:20:50', '2020-01-16 02:10:25', '86817b7b-35a5-4ac5-bf36-d443a55fa642'),
(142, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 21:20:50', '2019-12-04 21:20:50', NULL, 'abcbbb2c-1029-4613-ba52-209b3e362098'),
(143, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-12-04 21:25:06', '2019-12-04 21:25:06', NULL, '1983adbb-69b7-433e-8f93-d73bc290ce12'),
(144, NULL, 53, 8, 'craft\\elements\\Entry', 1, 0, '2019-12-04 21:25:10', '2019-12-04 21:25:10', '2020-01-19 01:36:31', 'f56f2a4e-9824-48fc-aa6a-5790d3114d31'),
(145, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 21:25:10', '2019-12-04 21:25:10', NULL, '940b587d-8235-4bf2-b78c-9ed6af1504bb'),
(146, NULL, 54, 8, 'craft\\elements\\Entry', 1, 0, '2019-12-04 21:34:08', '2019-12-04 21:34:08', '2020-01-19 01:36:31', 'c617e50d-7efc-4ac9-b5ef-831024356f46'),
(147, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 21:34:09', '2019-12-04 21:34:09', NULL, '4e9868ee-bdb4-417a-a9fe-6cedbb32cecf'),
(148, NULL, 55, 8, 'craft\\elements\\Entry', 1, 0, '2019-12-04 21:34:17', '2019-12-04 21:34:17', '2020-01-19 01:36:31', 'd65cf021-1859-40d2-8554-f9dfb00f2165'),
(149, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 21:34:17', '2019-12-04 21:34:17', NULL, '2b3e17cc-4759-42ce-a4ea-7f822c2db869'),
(150, NULL, 56, 8, 'craft\\elements\\Entry', 1, 0, '2019-12-04 21:34:34', '2019-12-04 21:34:34', '2020-01-19 01:36:31', 'b469b522-d646-4373-98c7-c94beca0fc72'),
(151, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-04 21:34:34', '2019-12-04 21:34:34', NULL, '2f4ffb29-0436-47e2-b185-cc8e9c81b4cd'),
(152, NULL, 57, 7, 'craft\\elements\\Entry', 1, 0, '2019-12-05 00:37:13', '2019-12-05 00:37:13', '2020-01-16 02:10:25', 'de4bac45-24e6-4d04-97d4-9c6b5fec7900'),
(153, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-05 00:37:13', '2019-12-05 00:37:13', NULL, '2467ed11-8cb9-4842-bf0d-4d9ad2967cd0'),
(154, NULL, 58, 8, 'craft\\elements\\Entry', 1, 0, '2019-12-05 00:37:17', '2019-12-05 00:37:17', '2020-01-19 01:36:31', '38c106e7-816e-491d-bf7d-1fa73afb21c5'),
(155, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-05 00:37:17', '2019-12-05 00:37:17', NULL, '807a84d5-0cd4-42db-b0fa-b3a735ce6111'),
(156, NULL, NULL, 16, 'craft\\elements\\GlobalSet', 1, 0, '2019-12-05 00:38:20', '2019-12-05 00:38:57', NULL, '1edefc3b-f27f-4a43-85c8-e94098d20840'),
(157, NULL, 59, 8, 'craft\\elements\\Entry', 1, 0, '2019-12-05 00:39:38', '2019-12-05 00:39:38', '2020-01-19 01:36:31', 'a0c496f4-1b87-4dcf-aaed-371b8a07dd6f'),
(158, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-05 00:39:38', '2019-12-05 00:39:38', NULL, '74bb4d3a-8ed0-4715-9d38-39def1989f39'),
(159, NULL, 60, 7, 'craft\\elements\\Entry', 1, 0, '2019-12-05 03:41:52', '2019-12-05 03:41:52', '2020-01-16 02:10:25', '1fc592c0-cda8-437e-bf31-7cb7f1b565c7'),
(160, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-05 03:41:52', '2019-12-05 03:41:52', NULL, '30c0e518-bf0d-4768-a518-673a026ded80'),
(161, NULL, NULL, 17, 'craft\\elements\\GlobalSet', 1, 0, '2019-12-07 03:37:04', '2019-12-07 03:38:33', NULL, 'a646d864-70f1-450a-a002-c14e63826e84'),
(162, NULL, 61, 6, 'craft\\elements\\Entry', 1, 0, '2019-12-11 01:37:58', '2019-12-11 01:37:58', NULL, '3e4305ff-b39d-4984-89dd-a765ad9c999d'),
(163, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-11 01:37:59', '2019-12-11 01:37:59', NULL, '228356cb-3ecc-476d-8fa5-673b92775f77'),
(164, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-11 01:38:00', '2019-12-11 01:37:59', NULL, '7e287263-8a68-4b83-8eeb-b7953d37f764'),
(165, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-11 01:38:00', '2019-12-11 01:37:59', NULL, 'c8936805-05d9-4274-87a8-50e8ff27e453'),
(166, NULL, 62, 6, 'craft\\elements\\Entry', 1, 0, '2019-12-11 01:38:00', '2019-12-11 01:38:00', NULL, '7468dacd-2800-4fca-b841-0c53ed8ffc3d'),
(167, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-11 01:38:01', '2019-12-11 01:38:00', NULL, 'ccdedf59-8b65-4697-bcd5-2c8ff82f21c9'),
(168, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-11 01:38:01', '2019-12-11 01:38:00', NULL, 'e3242efc-dfff-41c6-b35a-304c5fdebcb3'),
(169, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-11 01:38:01', '2019-12-11 01:38:00', NULL, '5be7d267-1e49-41a9-b0fd-984bbed462ca'),
(171, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-16 02:07:16', '2020-01-16 02:07:16', '2020-01-16 02:07:18', '4a7b9354-69b4-4d9a-a4c8-ab49a1e84006'),
(172, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-16 02:07:18', '2020-01-16 02:07:18', '2020-01-16 02:07:27', '615a2ce6-d8dc-411c-9658-9fc43747be41'),
(174, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-16 02:07:27', '2020-01-16 02:10:16', NULL, '2bdc0ed3-7f7e-4ac9-af3c-4c5ba8ad52ec'),
(175, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-16 02:07:27', '2020-01-16 02:10:16', NULL, 'f72c77a3-5c3f-43e9-8a58-e4086d2e8e64'),
(176, NULL, 63, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-16 02:07:27', '2020-01-16 02:07:27', NULL, '43897521-1ea6-480c-8329-4ee7571e077c'),
(177, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-16 02:07:27', '2020-01-16 02:07:27', NULL, 'c5513a90-c90e-4f40-a859-2b620f47d880'),
(179, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-16 02:07:53', '2020-01-16 02:07:53', NULL, 'cd18d50f-4e5d-41d8-abee-d1abe0e4d207'),
(180, NULL, 64, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-16 02:07:53', '2020-01-16 02:07:53', NULL, 'c0852da5-1d65-4251-976e-1b340eaa343e'),
(182, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-16 02:08:15', '2020-01-16 02:08:15', NULL, 'c2f95a01-2f5f-409c-b24e-d138c5a251eb'),
(183, NULL, 65, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-16 02:08:15', '2020-01-16 02:08:15', NULL, '84179518-86f7-4a8a-abeb-1c8c8d006808'),
(185, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-16 02:08:27', '2020-01-16 02:08:27', NULL, '3441bb1b-8039-4f32-ba2a-625fb8f97e6b'),
(186, NULL, 66, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-16 02:08:27', '2020-01-16 02:08:27', NULL, 'bca7b7ee-82c1-4e1c-8b5a-90913d3338d6'),
(188, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-16 02:08:37', '2020-01-16 02:08:37', NULL, '4b33874e-8eb2-442b-a543-b236d90d0a02'),
(189, NULL, 67, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-16 02:08:37', '2020-01-16 02:08:37', NULL, 'dc855cc0-9e5d-439a-8276-844bd06b8fa8'),
(190, 6, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-16 02:09:02', '2020-01-16 02:09:02', NULL, 'd1c61a24-ad19-460d-b5cb-e5f1f05d4194'),
(191, NULL, 68, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-16 02:10:16', '2020-01-16 02:10:16', NULL, 'b0698b7f-624a-404d-87fe-7135bfbbc752'),
(192, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-16 02:10:16', '2020-01-16 02:10:16', NULL, '967f62eb-5baf-4430-905b-136373aa6a9e'),
(193, NULL, 69, 7, 'craft\\elements\\Entry', 1, 0, '2020-01-16 02:10:25', '2020-01-16 02:10:25', '2020-01-16 02:10:25', '6ad1b404-be31-4a40-a87a-068cda3993c8'),
(194, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-16 02:10:25', '2020-01-16 02:10:25', NULL, '72b60e81-a5d2-41f7-9bd6-4a81043e92df'),
(196, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-16 02:12:28', '2020-01-16 02:12:28', NULL, '09a18b8d-837b-4d17-a19a-7d1d007d2bbf'),
(197, NULL, 70, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-16 02:12:28', '2020-01-16 02:12:28', NULL, 'd0b7450a-061f-4167-8568-ae02264307b1'),
(199, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:02:32', '2020-01-25 20:06:11', NULL, 'c970d654-6ede-4577-bec5-b761dbd4359f'),
(200, NULL, 71, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:02:32', '2020-01-18 01:02:32', NULL, '82d7c15c-bba8-465d-a67d-788c0ea6ee8c'),
(202, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:03:04', '2020-01-18 01:03:04', NULL, 'e675c7e3-82a5-4952-8477-45d2fd6ed63e'),
(203, NULL, 72, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:03:04', '2020-01-18 01:03:04', NULL, 'f02a3a54-9512-441d-8acd-5ff664e774e3'),
(205, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:03:12', '2020-01-25 16:41:05', NULL, '39ad8f0a-1ffe-4c81-9a41-50855b24356e'),
(206, NULL, 73, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:03:12', '2020-01-18 01:03:12', NULL, '3076fc80-0f18-4ca4-9ac9-2367220dbf65'),
(208, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:03:25', '2020-01-18 01:03:25', NULL, 'fca687ca-29a9-46dd-91fe-583d848a2ec1'),
(209, NULL, 74, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:03:25', '2020-01-18 01:03:25', NULL, 'cd27e37e-2a67-45d9-81b4-078e03298f02'),
(211, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:03:38', '2020-01-18 01:03:38', NULL, 'f3921446-5586-473c-acd3-78a9d8047b2f'),
(212, NULL, 75, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:03:38', '2020-01-18 01:03:38', NULL, 'b57f2827-43a3-4f16-a370-5c8a703996a3'),
(214, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:03:54', '2020-01-18 01:03:54', NULL, '4c92b982-890a-4723-b055-585bb923401d'),
(215, NULL, 76, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:03:54', '2020-01-18 01:03:54', NULL, 'e9967008-43c9-420f-a1bb-33dd83a4fc89'),
(217, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:04:03', '2020-01-18 01:04:03', NULL, '38885e74-7a81-4f9e-a153-55637810ea5e'),
(218, NULL, 77, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:04:03', '2020-01-18 01:04:03', NULL, 'b1dce181-679b-4b04-92f2-8020226204d5'),
(220, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:04:18', '2020-01-18 01:04:18', NULL, 'edecc230-6230-40e0-8407-109805825a6b'),
(221, NULL, 78, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:04:18', '2020-01-18 01:04:18', NULL, 'b20c9c96-174f-4219-9c4d-e251b841af11'),
(223, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:04:29', '2020-01-18 01:04:29', NULL, 'bdb3879f-31c3-44ba-ae08-c585d3ea001f'),
(224, NULL, 79, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:04:29', '2020-01-18 01:04:29', NULL, '3aa63336-4289-48d3-b1f1-930758fa5eb5'),
(226, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:04:41', '2020-01-18 01:04:41', NULL, '57a0c185-24ba-48a2-a87f-36fb2b7d9a50'),
(227, NULL, 80, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:04:41', '2020-01-18 01:04:41', NULL, '04c66ae7-a3eb-4bb8-9047-2c5d41a3e86b'),
(229, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:05:16', '2020-01-18 01:05:15', NULL, 'ab96f9bd-593c-41a8-9517-0549db071090'),
(230, NULL, 81, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:05:15', '2020-01-18 01:05:15', NULL, 'f6b15687-d510-4781-9f70-9dcdda917e4a'),
(232, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:05:22', '2020-01-18 01:05:22', NULL, '8214f010-43f5-4a09-ae24-abef0375ee89'),
(233, NULL, 82, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:05:22', '2020-01-18 01:05:22', NULL, '8f95f000-cedd-495d-922b-ba8f6e6975a9'),
(235, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:05:35', '2020-01-18 01:05:34', NULL, '97f76c29-c731-4137-bc63-c2114b48ad85'),
(236, NULL, 83, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:05:34', '2020-01-18 01:05:34', NULL, '378a9434-1322-4393-8f31-2b1dff8f2d6b'),
(238, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:05:49', '2020-01-18 01:05:49', NULL, 'eab16bfe-df4b-4c10-b1a2-b44a5fe62620'),
(239, NULL, 84, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:05:49', '2020-01-18 01:05:49', NULL, 'b7d31858-ad14-448d-beb6-3ce4711437d7'),
(241, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:06:04', '2020-01-18 01:06:04', NULL, 'fb0e9800-cd8a-4a7b-8382-965885ff7dc1'),
(242, NULL, 85, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:06:04', '2020-01-18 01:06:04', NULL, '43de1794-0f20-473e-8e93-8bd7ad341a3f'),
(244, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:06:18', '2020-01-18 01:06:18', NULL, '2238f48c-4be8-4ac6-a025-8b6cbf99edcf'),
(245, NULL, 86, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:06:18', '2020-01-18 01:06:18', NULL, '81f284e5-973f-4982-bff1-80d6a8736381'),
(247, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:06:29', '2020-01-18 01:06:29', NULL, 'aad0285e-bee0-4ca8-8442-21b14aa9c0bb'),
(248, NULL, 87, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:06:29', '2020-01-18 01:06:29', NULL, '1f017e3b-2ba5-407e-b15c-558beeaac8e2'),
(250, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:06:41', '2020-01-18 01:06:41', NULL, 'e5967d97-1622-4ad4-9c5a-571f931f1ad2'),
(251, NULL, 88, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:06:41', '2020-01-18 01:06:41', NULL, '1ca74555-1f00-4754-8410-77825baaf005'),
(253, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:06:54', '2020-01-18 01:06:54', NULL, 'c43048de-a11e-4f1d-b6e8-a274b8b7096e'),
(254, NULL, 89, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:06:54', '2020-01-18 01:06:54', NULL, 'cb379de3-e56a-4f7e-99b6-5c3929143599'),
(256, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:07:19', '2020-01-18 01:07:19', NULL, '3b596070-ef84-4c27-ac43-30005b33c8e8'),
(257, NULL, 90, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:07:19', '2020-01-18 01:07:19', NULL, '056cea12-204b-45de-ab5d-4d8b605bb2f7'),
(259, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:07:40', '2020-01-18 01:07:39', NULL, 'c3f54514-d2a5-4bda-9d16-01f115934de2'),
(260, NULL, 91, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:07:39', '2020-01-18 01:07:39', NULL, '9d1901a5-0d49-44e3-9de5-b5cbcb65ed46'),
(262, NULL, NULL, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:07:44', '2020-01-18 01:07:44', NULL, '078dfb5f-b938-496c-bad3-ac429fa13960'),
(263, NULL, 92, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-18 01:07:44', '2020-01-18 01:07:44', NULL, '8e29ab26-309e-4822-b7e8-ddd15e7e3072'),
(264, NULL, 93, 8, 'craft\\elements\\Entry', 1, 0, '2020-01-19 01:36:31', '2020-01-19 01:36:31', '2020-01-19 01:36:31', '1122508e-c783-4890-aacf-1d86cd3e9e44'),
(265, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-19 01:36:31', '2020-01-19 01:36:31', NULL, '9578ad0d-d707-4ddf-98af-76cdcce112da'),
(266, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2020-01-19 02:05:45', '2020-01-19 02:05:45', NULL, '8db4bd71-10e3-4ad6-9f86-1c72a4e1581e'),
(267, NULL, 94, 6, 'craft\\elements\\Entry', 1, 0, '2020-01-19 02:06:32', '2020-01-19 02:06:32', NULL, 'ce4b59a8-7de3-4144-bf21-83daaf50d4d1'),
(268, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-19 02:06:32', '2020-01-19 02:06:32', NULL, 'd4c8b506-38b4-4c52-b208-f71a0f867ad9'),
(269, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-19 02:06:32', '2020-01-19 02:06:32', NULL, '0c47bb64-398d-4718-ab1a-47192a17a437'),
(270, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-19 02:06:33', '2020-01-19 02:06:32', NULL, 'f3fcd18f-c7fd-417f-b6da-24ebd4b6f6c5'),
(271, NULL, NULL, 22, 'craft\\elements\\Entry', 1, 0, '2020-01-21 01:57:35', '2020-01-25 16:16:35', NULL, '202a9cc6-255f-4829-868e-4bd94d0edf3a'),
(272, NULL, 95, NULL, 'craft\\elements\\Entry', 1, 0, '2020-01-21 01:57:35', '2020-01-21 01:57:35', NULL, 'e1c12165-8c2c-43b0-95f6-adf5da4e1562'),
(273, NULL, 96, NULL, 'craft\\elements\\Entry', 1, 0, '2020-01-21 01:58:06', '2020-01-21 01:58:06', NULL, '96464ed4-0fec-44e7-a2c1-561a34ef106f'),
(274, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-21 01:58:20', '2020-01-25 14:51:00', '2020-01-25 15:35:43', '74e727d0-a4b1-4111-b9e7-97e1185c09aa'),
(275, NULL, 97, 22, 'craft\\elements\\Entry', 1, 0, '2020-01-21 01:58:20', '2020-01-21 01:58:20', NULL, '7834cef3-6963-49a3-82d7-c78a8776f1ca'),
(276, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-21 01:58:20', '2020-01-21 01:58:20', NULL, '60cf2e25-c7e8-4cee-82f5-e9cbd9045dba'),
(277, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-21 02:20:06', '2020-01-25 14:51:00', '2020-01-25 15:35:43', 'de4ec354-627c-4203-95cc-bf93525d9507'),
(278, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-21 02:20:06', '2020-01-25 14:51:00', '2020-01-25 15:35:43', '713e2a1f-3852-448b-b25a-a859d3ddc2d6'),
(279, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-21 02:20:06', '2020-01-25 14:51:00', '2020-01-25 15:35:43', 'c4a83202-c2a9-48e3-8861-b2f385e2cc43'),
(280, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-21 02:20:06', '2020-01-25 14:51:00', '2020-01-25 15:35:43', '8a203b57-3c62-414f-ad23-043105dc5338'),
(281, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-21 02:20:06', '2020-01-25 14:51:00', '2020-01-25 15:35:43', 'db16b66d-57cc-4f33-a5ba-8e224651b958'),
(282, NULL, 98, 22, 'craft\\elements\\Entry', 1, 0, '2020-01-21 02:20:06', '2020-01-21 02:20:06', NULL, 'dc13c6d9-4a18-408e-ad94-8a1e7177c89c'),
(283, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-21 02:20:06', '2020-01-21 02:20:06', NULL, 'e0f36084-e702-4a57-a696-22d3e01c8a51'),
(284, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-21 02:20:06', '2020-01-21 02:20:06', NULL, '2ec21ed0-bff0-41bf-aa5f-4352e79e9be7'),
(285, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-21 02:20:07', '2020-01-21 02:20:06', NULL, 'd7365a0b-6460-4e92-a26a-b632285a237f'),
(286, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-21 02:20:07', '2020-01-21 02:20:06', NULL, 'b4cf99df-e5f3-465a-965c-d8213b79c8d6'),
(287, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-21 02:20:07', '2020-01-21 02:20:06', NULL, '5f241524-5300-434f-a158-4a8b903cbff4'),
(288, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-21 02:20:07', '2020-01-21 02:20:06', NULL, '258b255d-2dab-4105-b789-3fe7f6319a4c'),
(289, NULL, 99, 22, 'craft\\elements\\Entry', 1, 0, '2020-01-21 02:38:10', '2020-01-21 02:38:10', NULL, '62655145-b65c-4c59-8cf1-f96e1a2fbad1'),
(290, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-21 02:38:10', '2020-01-21 02:38:10', NULL, 'c1d15178-f0d1-460f-877e-7a45b49061cd'),
(291, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-21 02:38:10', '2020-01-21 02:38:10', NULL, '6fba39d8-952e-4fa6-af96-fea19384774f'),
(292, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-21 02:38:10', '2020-01-21 02:38:10', NULL, 'eb7406a0-f60f-4fd5-af59-f025afafd7bc'),
(293, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-21 02:38:10', '2020-01-21 02:38:10', NULL, 'a8e4d1d7-3a32-4cf6-8ffa-20e9d9c25907'),
(294, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-21 02:38:10', '2020-01-21 02:38:10', NULL, '1c9884e1-eb6b-4be3-9bf3-cd6f0a44a67c'),
(295, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-21 02:38:10', '2020-01-21 02:38:10', NULL, '7cdf8259-44ef-4018-8c98-95d4538f3620'),
(296, NULL, 100, 22, 'craft\\elements\\Entry', 1, 0, '2020-01-25 14:39:03', '2020-01-25 14:39:03', NULL, 'b6ac7276-2916-4314-8c70-5a5b71857456'),
(297, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 14:39:03', '2020-01-25 14:39:03', NULL, 'dc26e011-7316-4385-a015-46e28eada35f'),
(298, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 14:39:03', '2020-01-25 14:39:03', NULL, '77d6cdd0-f0c9-4840-8231-0d7270bad27e'),
(299, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 14:39:03', '2020-01-25 14:39:03', NULL, 'a07831ad-1c02-40fc-be8e-1d6cbac2e8df'),
(300, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 14:39:03', '2020-01-25 14:39:03', NULL, 'c63f7070-9ad5-4f0c-b4ec-fdfeb2f86a8f'),
(301, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 14:39:03', '2020-01-25 14:39:03', NULL, '067f148a-d81a-4020-ab92-dcf86ccf3026'),
(302, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 14:39:03', '2020-01-25 14:39:03', NULL, '07021d8f-7f77-49b6-9977-9e9c5b345c9f'),
(303, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2020-01-25 14:42:17', '2020-01-25 14:42:17', NULL, '7c0ba4a2-2c96-428e-916a-7ef3869347a7'),
(304, NULL, 101, 22, 'craft\\elements\\Entry', 1, 0, '2020-01-25 14:42:36', '2020-01-25 14:42:36', NULL, 'bd9e4b19-fa39-45c2-beb8-b17d7930d16f'),
(305, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 14:42:36', '2020-01-25 14:42:36', NULL, 'd7b1f287-f6b2-42d8-9ab7-e7fa3b6fbbe5'),
(306, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 14:42:36', '2020-01-25 14:42:36', NULL, '43628b4d-7c08-4722-aab7-edcb14d0db53'),
(307, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 14:42:36', '2020-01-25 14:42:36', NULL, '976d37b5-b120-4a1d-a60f-515b41858c77'),
(308, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 14:42:36', '2020-01-25 14:42:36', NULL, 'c8348d87-6671-4802-b3bd-4117289d69d0'),
(309, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 14:42:37', '2020-01-25 14:42:36', NULL, '729746cd-68c8-44f7-9a06-e7ce526a73eb'),
(310, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 14:42:37', '2020-01-25 14:42:36', NULL, '41d2eb2a-41bd-4ea4-bf2f-ec7b86f9a69a'),
(311, NULL, 102, 22, 'craft\\elements\\Entry', 1, 0, '2020-01-25 14:45:11', '2020-01-25 14:45:11', NULL, 'e8114618-3572-41f4-9e35-46b355e7b899'),
(312, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 14:45:11', '2020-01-25 14:45:11', NULL, 'ef3c184d-a9d1-4ee7-8d6a-8f429f98b028'),
(313, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 14:45:11', '2020-01-25 14:45:11', NULL, 'f36d2a2a-aac2-414a-840a-4f6f80f96d4f'),
(314, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 14:45:11', '2020-01-25 14:45:11', NULL, '269763ea-7b0b-4cd2-ad41-1457a0c5e16c'),
(315, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 14:45:11', '2020-01-25 14:45:11', NULL, '0ef40351-dd5c-441e-a3ed-47dba98fe812'),
(316, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 14:45:11', '2020-01-25 14:45:11', NULL, 'faebbd48-e241-44b7-b21d-a6ef808e44e4'),
(317, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 14:45:11', '2020-01-25 14:45:11', NULL, '94af1ef1-1e07-4858-9728-0c0b2903cb0f'),
(318, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2020-01-25 14:49:33', '2020-01-25 14:54:11', NULL, '677d06b1-2fba-4973-8218-a6dfb5e30550'),
(319, NULL, 103, 22, 'craft\\elements\\Entry', 1, 0, '2020-01-25 14:51:00', '2020-01-25 14:51:00', NULL, '36b13368-f093-4b60-953a-13859b82a0fc'),
(320, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 14:51:00', '2020-01-25 14:51:00', NULL, '1fdcd0d7-ae5c-4957-86bf-7144387fcf99'),
(321, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 14:51:00', '2020-01-25 14:51:00', NULL, '27c66a76-299c-458a-a4f0-d22b7bed40b6'),
(322, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 14:51:00', '2020-01-25 14:51:00', NULL, 'db0c2bd7-5508-4ed6-81f2-365a9164edef'),
(323, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 14:51:00', '2020-01-25 14:51:00', NULL, '49383cfb-a301-4dac-adf0-71d5c3b6b379'),
(324, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 14:51:00', '2020-01-25 14:51:00', NULL, 'b6537fba-674a-48f7-9838-d2024a1e14db'),
(325, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 14:51:00', '2020-01-25 14:51:00', NULL, 'fc204ad1-c79b-48a3-8d5d-021fcf5c59a1'),
(326, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2020-01-25 14:54:08', '2020-01-25 14:54:08', '2020-01-25 14:54:12', '6db6bdb9-1989-47ac-9527-6b6f10215233'),
(334, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:35:42', '2020-01-25 16:16:35', NULL, '1319fe93-c266-4963-ad18-2d6cbd359621'),
(335, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:35:42', '2020-01-25 16:16:35', NULL, '1790bdcf-a884-4168-9348-4406dc5997ae'),
(336, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:35:42', '2020-01-25 16:16:35', NULL, '4af92926-7e86-461a-aa39-b331afc5f85d'),
(337, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:35:42', '2020-01-25 16:16:35', NULL, '4f0ff82f-7627-4e8c-9fef-952535071ac9'),
(338, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:35:43', '2020-01-25 16:16:35', NULL, '92611907-3ce4-4a1b-997a-36b37eef329a'),
(339, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:35:43', '2020-01-25 16:16:35', NULL, '4c6332ba-78b1-4377-ab6b-c13f48a4f97d'),
(340, NULL, 104, 22, 'craft\\elements\\Entry', 1, 0, '2020-01-25 15:35:42', '2020-01-25 15:35:42', NULL, 'c01d3fd4-4fe0-47c9-a75a-591ca671418a'),
(341, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:35:43', '2020-01-25 15:35:42', NULL, '2c9637a1-8d80-4997-93f5-ade9caf0d315'),
(342, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:35:43', '2020-01-25 15:35:42', NULL, '644b72ae-461d-49d3-b262-726755dec6f6'),
(343, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:35:43', '2020-01-25 15:35:42', NULL, '36343973-8210-48b3-8f07-500f755df400'),
(344, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:35:43', '2020-01-25 15:35:42', NULL, 'd4b2e4e1-5aed-4257-83c7-8935be44d799'),
(345, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:35:43', '2020-01-25 15:35:42', NULL, '29180f1e-9daa-4826-b596-b3d82ac7333c'),
(346, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:35:44', '2020-01-25 15:35:42', NULL, '110047b1-586a-43f0-85a0-7b8402917a7a'),
(347, NULL, 105, 22, 'craft\\elements\\Entry', 1, 0, '2020-01-25 15:37:16', '2020-01-25 15:37:16', NULL, '2b3f3640-1419-4dad-8df3-e8a90dfbc0ec'),
(348, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:37:16', '2020-01-25 15:37:16', NULL, '9e358fb8-1796-44e4-96cb-3cd12ee02ed2'),
(349, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:37:16', '2020-01-25 15:37:16', NULL, '6046ac8c-e95f-48fe-9d14-a82908e4b5c2'),
(350, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:37:16', '2020-01-25 15:37:16', NULL, '9cc6d686-a707-4b24-ad49-cb86898c1cca'),
(351, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:37:17', '2020-01-25 15:37:16', NULL, '96a6eb93-2964-477b-9632-630e711caa19'),
(352, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:37:17', '2020-01-25 15:37:16', NULL, '28f5daf6-a043-4b9d-b94a-a56c01adbd43'),
(353, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:37:17', '2020-01-25 15:37:16', NULL, '9f13083d-8451-4b2f-bc20-83375a78d807'),
(354, NULL, 106, 22, 'craft\\elements\\Entry', 1, 0, '2020-01-25 15:38:15', '2020-01-25 15:38:15', NULL, '4801e78c-1951-4e2a-8012-59d2b00c1db8'),
(355, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:38:16', '2020-01-25 15:38:15', NULL, 'bc79596f-7c01-4005-a21c-ab0f1996d303'),
(356, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:38:16', '2020-01-25 15:38:15', NULL, '36520d61-9ecd-4b1f-9a3d-6d0a6121ec17'),
(357, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:38:16', '2020-01-25 15:38:15', NULL, '1c4342a2-439a-415c-b039-3db06fb543c8'),
(358, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:38:16', '2020-01-25 15:38:15', NULL, '02b8a99c-09bb-413e-9472-82727a07e993'),
(359, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:38:16', '2020-01-25 15:38:15', NULL, '498bdc82-114e-42d6-9325-e889a766d018'),
(360, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:38:16', '2020-01-25 15:38:15', NULL, 'f325b6a0-12d6-4b66-9366-ef1b1aaa6bbf'),
(361, NULL, 107, 22, 'craft\\elements\\Entry', 1, 0, '2020-01-25 15:42:22', '2020-01-25 15:42:22', NULL, '47ab6dec-b2d4-4d56-8200-3ad5872a7e11'),
(362, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:42:22', '2020-01-25 15:42:22', NULL, '390fdf47-8bbb-4a36-a591-6b1b2ee960b3'),
(363, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:42:22', '2020-01-25 15:42:22', NULL, '2c662270-c081-4314-9bcf-42dec75396ed'),
(364, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:42:22', '2020-01-25 15:42:22', NULL, 'ef3f946a-6a39-41ba-ba70-b5a78ffb2bee'),
(365, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:42:22', '2020-01-25 15:42:22', NULL, 'a98494e8-3fb8-4021-8fd9-0241e7b0e619'),
(366, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:42:22', '2020-01-25 15:42:22', NULL, 'f5c64dd7-5c6f-436d-a786-33ff65c6256c'),
(367, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:42:22', '2020-01-25 15:42:22', NULL, '98b7867b-91dc-4483-81b6-a31670e3d3ab'),
(368, NULL, 108, 22, 'craft\\elements\\Entry', 1, 0, '2020-01-25 15:47:30', '2020-01-25 15:47:30', NULL, 'cf512739-9b57-4e55-a619-aac786a3e2da'),
(369, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:47:31', '2020-01-25 15:47:30', NULL, 'cd1b502b-7d38-4a8b-a818-53bc7c76910e'),
(370, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:47:31', '2020-01-25 15:47:30', NULL, 'dd5a5b6f-5b09-47ad-a7bc-c37139d7a752');
INSERT INTO `craft_elements` (`id`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(371, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:47:31', '2020-01-25 15:47:30', NULL, '3de70dbe-c4d9-4d48-b7a2-826617545ed7'),
(372, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:47:31', '2020-01-25 15:47:30', NULL, '3fb84b42-a429-47fb-9e9f-d0fdd49f404e'),
(373, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:47:31', '2020-01-25 15:47:31', NULL, '99206da8-6beb-489a-9623-260c57b62bf3'),
(374, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:47:31', '2020-01-25 15:47:31', NULL, '4bf698a7-89e8-46aa-8ffc-f0e38b4b5ab2'),
(375, NULL, 109, 22, 'craft\\elements\\Entry', 1, 0, '2020-01-25 15:50:28', '2020-01-25 15:50:28', NULL, '8d8ce609-79a0-485e-97a2-c13ceb320e9e'),
(376, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:50:28', '2020-01-25 15:50:28', NULL, '18343594-d397-4d96-8738-c88c94d8b4a4'),
(377, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:50:28', '2020-01-25 15:50:28', NULL, '5c43551d-3a34-4334-aef3-a670496c8c67'),
(378, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:50:28', '2020-01-25 15:50:28', NULL, '4afc7e6a-0c09-4b6b-a739-85e4b317f017'),
(379, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:50:28', '2020-01-25 15:50:28', NULL, '63e1c3c1-1327-4e95-8124-be39046129c3'),
(380, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:50:28', '2020-01-25 15:50:28', NULL, '4df80b3f-14cd-4bcd-af39-3d2bd0d965f4'),
(381, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:50:28', '2020-01-25 15:50:28', NULL, '998d7c32-49b3-4e0c-9738-053645af3284'),
(382, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2020-01-25 15:53:23', '2020-01-25 15:53:23', NULL, 'cbf2e3b3-c212-41ad-aa88-d9dee2c3522a'),
(383, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:54:58', '2020-01-25 16:16:35', NULL, 'b5abe4b3-28ff-467c-b009-43329502a300'),
(384, NULL, 110, 22, 'craft\\elements\\Entry', 1, 0, '2020-01-25 15:54:58', '2020-01-25 15:54:58', NULL, '6f8bc162-bd7c-4f6f-bc4d-ef8d026bed44'),
(385, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:54:59', '2020-01-25 15:54:58', NULL, 'b0a1445b-895e-407a-9b30-37414e9d1af7'),
(386, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:54:59', '2020-01-25 15:54:58', NULL, '2494833e-c234-4315-bc34-e624319e6154'),
(387, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:54:59', '2020-01-25 15:54:58', NULL, 'df88d124-5110-4461-ba7f-5e460859165b'),
(388, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:54:59', '2020-01-25 15:54:58', NULL, 'b13cbbd8-9636-466c-9d5d-a5f96178d001'),
(389, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:54:59', '2020-01-25 15:54:58', NULL, '6368b88c-2e71-4c6e-ae13-9546dff45a58'),
(390, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:54:59', '2020-01-25 15:54:58', NULL, 'b03d969b-bdaf-4531-bdac-cd8e2672013c'),
(391, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:54:59', '2020-01-25 15:54:58', NULL, '9b580fbf-6daa-4404-9053-1d00edccb928'),
(392, NULL, 111, 22, 'craft\\elements\\Entry', 1, 0, '2020-01-25 15:57:39', '2020-01-25 15:57:39', NULL, '9eeaac51-b3d1-41d2-b175-e1b8bca9094e'),
(393, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:57:39', '2020-01-25 15:57:39', NULL, 'de7b267d-bb5b-4ab1-995f-2508074714af'),
(394, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:57:39', '2020-01-25 15:57:39', NULL, 'd4bfaf7f-5e6d-452e-befb-1d474ea202d9'),
(395, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:57:39', '2020-01-25 15:57:39', NULL, 'db0c035a-84bb-45b3-b546-2262f654843b'),
(396, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:57:40', '2020-01-25 15:57:39', NULL, 'ab1dcb18-4773-43fc-9270-f0f33e6f1147'),
(397, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:57:40', '2020-01-25 15:57:39', NULL, '1df7b575-67f4-4f89-8f12-77422363eefd'),
(398, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:57:40', '2020-01-25 15:57:39', NULL, '6d1a1280-5e70-4ec6-bd26-644b4b725bb0'),
(399, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 15:57:40', '2020-01-25 15:57:39', NULL, 'cf0dc331-55a0-44db-b969-99c51b204aa6'),
(400, NULL, 112, 22, 'craft\\elements\\Entry', 1, 0, '2020-01-25 16:13:18', '2020-01-25 16:13:18', NULL, '60d06f51-31c8-4e3e-b68a-413c100d0b4d'),
(401, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:13:18', '2020-01-25 16:13:18', NULL, 'c2ddd776-febc-4de6-8323-49a8e89423b5'),
(402, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:13:18', '2020-01-25 16:13:18', NULL, 'c4b756e9-03db-4dde-b62e-37a8a7e63511'),
(403, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:13:19', '2020-01-25 16:13:18', NULL, 'b6ade844-9fd0-4c3b-a11b-2bccb3955597'),
(404, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:13:19', '2020-01-25 16:13:18', NULL, 'b213836a-6ace-4167-a413-498313fa7552'),
(405, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:13:19', '2020-01-25 16:13:18', NULL, '48251373-df1e-4163-988f-03fdd3586b3d'),
(406, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:13:19', '2020-01-25 16:13:18', NULL, '63482f98-c5ee-49fa-8aed-079fbd31306b'),
(407, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:13:19', '2020-01-25 16:13:18', NULL, '8349c852-b9ef-4a11-81e2-e4e2eae30c9a'),
(408, NULL, 113, 22, 'craft\\elements\\Entry', 1, 0, '2020-01-25 16:13:37', '2020-01-25 16:13:37', NULL, '3ac30ff8-46b8-4a27-b151-a72375d8e248'),
(409, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:13:37', '2020-01-25 16:13:37', NULL, '9ebe36bb-9d28-4172-aeb3-948cb05ea561'),
(410, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:13:37', '2020-01-25 16:13:37', NULL, '943c496a-730a-457e-a68a-8ae998ae23eb'),
(411, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:13:37', '2020-01-25 16:13:37', NULL, '136505cc-b541-4918-9379-f77ef2b10414'),
(412, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:13:37', '2020-01-25 16:13:37', NULL, '5adc6928-23ee-4d07-8bf9-8f69b8d50b5d'),
(413, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:13:37', '2020-01-25 16:13:37', NULL, '6a4706f5-00f3-4baa-9d5a-46fef5d4b942'),
(414, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:13:37', '2020-01-25 16:13:37', NULL, '40391a18-df31-4e0f-8188-2a2a73a22dad'),
(415, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:13:37', '2020-01-25 16:13:37', NULL, 'af601dbc-42b5-40dd-ade1-5d1f16fb2925'),
(416, NULL, 114, 22, 'craft\\elements\\Entry', 1, 0, '2020-01-25 16:15:58', '2020-01-25 16:15:58', NULL, '1635247b-2e1f-42d2-a861-e0e9d7065fb4'),
(417, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:15:58', '2020-01-25 16:15:58', NULL, 'c9e0e444-4e0c-41e2-b9a0-696b62424d27'),
(418, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:15:58', '2020-01-25 16:15:58', NULL, 'f902e22d-a781-4a8c-a82b-7b5a773c86e9'),
(419, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:15:58', '2020-01-25 16:15:58', NULL, '90053bff-c483-4ee3-b367-5294b558c1e2'),
(420, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:15:58', '2020-01-25 16:15:58', NULL, '22a55326-89f3-466f-989f-91e3a73d80bf'),
(421, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:15:58', '2020-01-25 16:15:58', NULL, '2833d600-298b-4199-8bc9-30511894a0bc'),
(422, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:15:58', '2020-01-25 16:15:58', NULL, 'b1fa3f77-8045-49dc-b4e9-4aa78830506d'),
(423, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:15:58', '2020-01-25 16:15:58', NULL, 'db70a378-6916-417e-b956-b836a681a1a0'),
(424, NULL, 115, 22, 'craft\\elements\\Entry', 1, 0, '2020-01-25 16:16:35', '2020-01-25 16:16:35', NULL, 'f34e4111-3ca5-491b-b01c-bafa1ca5ca7f'),
(425, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:16:35', '2020-01-25 16:16:35', NULL, 'ddb3556b-9ed4-4af4-90a3-9ee006d78288'),
(426, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:16:35', '2020-01-25 16:16:35', NULL, 'b782fe10-a05c-42a8-af31-c009f419555f'),
(427, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:16:35', '2020-01-25 16:16:35', NULL, '75605446-b7e3-4b6f-839f-dac060c88270'),
(428, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:16:35', '2020-01-25 16:16:35', NULL, 'cbfcbf47-69f8-4fb7-a34b-0fa084b46577'),
(429, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:16:35', '2020-01-25 16:16:35', NULL, '0640092d-b92d-40ff-9e2b-b1c6db5a4fde'),
(430, NULL, NULL, 21, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:16:35', '2020-01-25 16:16:35', NULL, '2389c72f-8a15-466e-b7b1-fd044d031c2b'),
(431, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:16:35', '2020-01-25 16:16:35', NULL, 'c823d270-64ae-466e-beec-0f2d78f50352'),
(432, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:30:45', '2020-01-25 16:41:05', NULL, '0ae4ec23-3fec-45bb-a59e-362f76a4c7b6'),
(433, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:30:45', '2020-01-25 16:41:05', NULL, '4860967e-36a9-4193-8848-a72ae3f24bc9'),
(434, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:30:45', '2020-01-25 16:41:05', NULL, '01b718c3-1647-4328-9e7f-ed5a3f4a131b'),
(435, NULL, 116, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-25 16:30:45', '2020-01-25 16:30:45', NULL, '476d589d-4f24-40e8-8d9b-a571250febce'),
(436, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:30:46', '2020-01-25 16:30:45', NULL, '82931ee1-0527-4cf1-b0a5-50163fcef7c1'),
(437, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:30:46', '2020-01-25 16:30:45', NULL, '34f7486d-8563-4a57-b5c6-4df05a87ef83'),
(438, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:30:46', '2020-01-25 16:30:45', NULL, '195049c0-e8bf-4806-b0b4-3f77c596066a'),
(439, NULL, 117, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-25 16:31:34', '2020-01-25 16:31:34', NULL, 'a28cd6e6-c6cd-4988-a31f-3dece45a0b1e'),
(440, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:31:35', '2020-01-25 16:31:34', NULL, 'c098aa4b-79ff-49dd-ab18-03c45d80ba9e'),
(441, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:31:35', '2020-01-25 16:31:34', NULL, 'f9e3bdae-4eb3-4cec-bbe4-f335ee89d62f'),
(442, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:31:35', '2020-01-25 16:31:34', NULL, '7b07fcb1-f82d-400d-ac17-3b6fa2716f85'),
(443, NULL, 118, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-25 16:41:05', '2020-01-25 16:41:05', NULL, 'de8d864a-153f-4d54-9d5a-9fb9e14a7315'),
(444, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:41:05', '2020-01-25 16:41:05', NULL, 'f201b0bf-a48a-413b-a0f6-ad09cd3c641d'),
(445, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:41:05', '2020-01-25 16:41:05', NULL, '4c8b957a-49f9-472c-9706-a247bac1d5b8'),
(446, NULL, NULL, 20, 'craft\\elements\\MatrixBlock', 1, 0, '2020-01-25 16:41:05', '2020-01-25 16:41:05', NULL, 'ccdb68e4-f224-4f7e-a23a-db322230d494'),
(447, NULL, 119, 5, 'craft\\elements\\Entry', 1, 0, '2020-01-25 19:57:59', '2020-01-25 19:57:59', NULL, 'a6c6eb01-5864-44d0-ac49-f53b3122ba45'),
(448, NULL, 120, 5, 'craft\\elements\\Entry', 1, 0, '2020-01-25 19:59:48', '2020-01-25 19:59:48', NULL, '0ca8a7bb-a236-4b23-946b-23a570a67f8f'),
(449, NULL, 121, 5, 'craft\\elements\\Entry', 1, 0, '2020-01-25 20:02:17', '2020-01-25 20:02:17', NULL, 'e37987aa-a635-43f4-b566-bd43ec3e4fbe'),
(450, NULL, 122, 5, 'craft\\elements\\Entry', 1, 0, '2020-01-25 20:03:29', '2020-01-25 20:03:29', NULL, '4edb6dcc-29c7-41b5-89a4-7da0a229683e'),
(451, NULL, 123, 18, 'craft\\elements\\Entry', 1, 0, '2020-01-25 20:06:11', '2020-01-25 20:06:11', NULL, '4163bab3-64bd-4bbe-8bee-66beae390aee');

-- --------------------------------------------------------

--
-- Table structure for table `craft_elements_sites`
--

CREATE TABLE `craft_elements_sites` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_elements_sites`
--

INSERT INTO `craft_elements_sites` (`id`, `elementId`, `siteId`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, NULL, NULL, 1, '2019-11-16 18:40:28', '2019-11-16 18:40:28', 'd716b5b3-94d6-4f16-814e-17d740e38d12'),
(2, 2, 1, 'home-page', '__home__', 1, '2019-11-23 17:00:31', '2019-11-23 17:00:31', 'def29937-6043-4d92-aff2-5866062d6bf9'),
(3, 3, 1, 'home-page', '__home__', 1, '2019-11-23 17:00:31', '2019-11-23 17:00:31', '43558d0d-f353-46de-96be-93eac7692bf9'),
(4, 4, 1, 'about', 'about', 1, '2019-11-23 17:07:16', '2019-11-23 22:53:04', 'c896eea4-71a0-4837-b6b8-17893d44cb2a'),
(5, 5, 1, 'about-page', 'about', 1, '2019-11-23 17:07:16', '2019-11-23 17:07:16', '42472f27-0cae-4c94-aa9b-83a079547705'),
(6, 6, 1, 'get-involved', 'get-in-touch', 1, '2019-11-23 17:07:59', '2019-12-05 00:39:38', '88c98422-f24d-4b92-8d37-19711dad823a'),
(7, 7, 1, 'get-involved', 'get-involved', 1, '2019-11-23 17:07:59', '2019-11-23 17:07:59', 'b5d1b4d9-875d-40f6-90e8-37ed513e893c'),
(8, 8, 1, NULL, NULL, 1, '2019-11-23 18:23:43', '2019-11-23 18:23:43', '529b9cb9-577c-4acf-ad4d-7f90b8ceb2bc'),
(9, 9, 1, NULL, NULL, 1, '2019-11-23 18:37:41', '2019-11-23 18:37:41', 'fa89075a-69cf-4323-8d64-ec783e38f843'),
(10, 10, 1, NULL, NULL, 1, '2019-11-23 18:38:06', '2019-11-23 18:38:06', '938047c8-7052-40e0-9d94-f0158713d2a1'),
(11, 11, 1, '404-page', '404-page', 1, '2019-11-23 18:53:39', '2019-11-23 18:53:39', '2ae12425-d2cc-4ab8-adbb-058e261b29ea'),
(12, 12, 1, '404-page', '404-page', 1, '2019-11-23 18:53:39', '2019-11-23 18:53:39', '6e692bb1-c3f8-4262-abb6-d1eb5fa29e1f'),
(13, 13, 1, '404-page', '404-page', 1, '2019-11-23 18:54:05', '2019-11-23 18:54:05', '3e2456dd-6284-40b5-a153-a7e77ee35f32'),
(14, 14, 1, '404-page', '404-page', 1, '2019-11-23 18:54:34', '2019-11-23 18:54:34', '767a1540-10c7-4171-8c3b-d64a9d4aee94'),
(15, 15, 1, 'home-page', '__home__', 1, '2019-11-23 20:21:15', '2019-11-23 20:21:15', 'd29de125-91af-4e5d-93e0-32e6d2a5bc81'),
(16, 16, 1, NULL, NULL, 1, '2019-11-23 20:23:41', '2019-11-23 20:23:41', 'd73bab82-72be-4075-9d31-b4bb61acecde'),
(17, 17, 1, NULL, NULL, 1, '2019-11-23 20:24:29', '2019-11-23 20:24:29', 'a8a9066c-21f5-48df-8871-59d29833d557'),
(18, 18, 1, NULL, NULL, 1, '2019-11-23 20:25:01', '2019-11-23 20:25:01', '9d914eda-a651-4ee5-a662-a35fe42b070c'),
(19, 19, 1, NULL, NULL, 1, '2019-11-23 20:25:01', '2019-11-23 20:25:01', '5b5cc2e3-25e6-4dd7-a474-e35fb63eeed9'),
(20, 20, 1, 'home-page', '__home__', 1, '2019-11-23 20:25:01', '2019-11-23 20:25:01', 'a66a0fe9-5fea-428a-be10-42abf1f0ea14'),
(21, 21, 1, NULL, NULL, 1, '2019-11-23 20:25:01', '2019-11-23 20:25:01', '0eb78868-1136-4c4c-ad81-9cd6ec21f19d'),
(22, 22, 1, NULL, NULL, 1, '2019-11-23 20:25:01', '2019-11-23 20:25:01', 'd8a03451-d9f3-4a3e-a72c-2413037f18c0'),
(23, 23, 1, 'home-page', '__home__', 1, '2019-11-23 20:54:33', '2019-11-23 20:54:33', '9653f55a-f9c4-4804-947b-94753c00e61e'),
(24, 24, 1, NULL, NULL, 1, '2019-11-23 20:54:33', '2019-11-23 20:54:33', '9cc15de7-7f07-40c5-bdf1-f17ad8735345'),
(25, 25, 1, NULL, NULL, 1, '2019-11-23 20:54:33', '2019-11-23 20:54:33', 'a2c8aa50-5656-44a8-9ece-3c23e26da9a5'),
(26, 26, 1, 'about-page', 'about', 1, '2019-11-23 22:38:17', '2019-11-23 22:38:17', 'bf43c99e-49d1-4a29-82b1-aad357cd17d3'),
(27, 27, 1, 'get-involved', 'get-involved', 1, '2019-11-23 22:38:24', '2019-11-23 22:38:24', 'e8a3bca8-7c72-483f-80e3-c6b6176573ed'),
(28, 28, 1, 'about-page', 'about', 1, '2019-11-23 22:39:19', '2019-11-23 22:39:19', 'c0e0850e-c1f4-4b22-82f6-b732e5dcc102'),
(29, 29, 1, 'about-page', 'about', 1, '2019-11-23 22:49:55', '2019-11-23 22:49:55', 'f13051e2-938b-443d-b3ea-241bdc08a53c'),
(30, 30, 1, 'about-page', 'about', 1, '2019-11-23 22:51:44', '2019-11-23 22:51:44', '4a27e038-ed52-4ddf-b06b-f801e86ea2be'),
(31, 31, 1, 'about-page', 'about', 1, '2019-11-23 22:51:59', '2019-11-23 22:51:59', '2c6e08c3-df1c-4b8c-998b-fbfbab8e9c49'),
(32, 32, 1, 'about', 'about', 1, '2019-11-23 22:53:05', '2019-11-23 22:53:05', 'bddbcdb8-4d23-4aed-b554-168760f4d4ff'),
(33, 33, 1, 'about', 'about', 1, '2019-11-23 22:53:15', '2019-11-23 22:53:15', 'e21fd9eb-fb11-47d7-a38e-56941c775c28'),
(34, 34, 1, 'home-page', '__home__', 1, '2019-12-01 00:04:11', '2019-12-01 00:04:11', '90966060-f4c7-4b19-bac3-d432e59ae448'),
(35, 35, 1, NULL, NULL, 1, '2019-12-01 00:04:11', '2019-12-01 00:04:11', '78216bfc-1cb5-49dc-a77f-2a5436e7174f'),
(36, 36, 1, NULL, NULL, 1, '2019-12-01 00:04:11', '2019-12-01 00:04:11', 'd064fda2-1135-4174-b7f1-59aaa271ac82'),
(37, 37, 1, NULL, NULL, 1, '2019-12-01 00:09:14', '2019-12-01 00:09:14', 'fc8a8f61-dd2d-4d0a-a1bc-9363f06b8542'),
(38, 38, 1, 'home-page', '__home__', 1, '2019-12-01 00:09:15', '2019-12-01 00:09:15', '5c01179f-3000-4b4f-bd49-a909f8adf81a'),
(39, 39, 1, NULL, NULL, 1, '2019-12-01 00:09:15', '2019-12-01 00:09:15', 'e00998d5-4b39-40d5-a44d-a35232820d0e'),
(40, 40, 1, NULL, NULL, 1, '2019-12-01 00:09:15', '2019-12-01 00:09:15', '30cec156-090e-4dcc-8b14-7323d0cf525d'),
(41, 41, 1, NULL, NULL, 1, '2019-12-01 00:09:15', '2019-12-01 00:09:15', '15d8da62-5f39-46bb-9ceb-f34907780dda'),
(42, 42, 1, 'home-page', '__home__', 1, '2019-12-01 00:13:23', '2019-12-01 00:13:23', '237d3ac3-bac3-4e6e-a3e4-82aabaa63035'),
(43, 43, 1, NULL, NULL, 1, '2019-12-01 00:13:23', '2019-12-01 00:13:23', '669bccba-3079-474b-959d-b9013ea47b5c'),
(44, 44, 1, NULL, NULL, 1, '2019-12-01 00:13:23', '2019-12-01 00:13:23', 'c7a3cdb5-41c3-4699-8dd9-7af1bcc8fff9'),
(45, 45, 1, NULL, NULL, 1, '2019-12-01 00:13:23', '2019-12-01 00:13:23', '710484fb-1890-4162-9efa-4ba0f4b175b9'),
(46, 46, 1, 'home-page', '__home__', 1, '2019-12-01 00:14:59', '2019-12-01 00:14:59', '40df984d-becb-4e10-8fda-5c8a0f14bfa1'),
(47, 47, 1, NULL, NULL, 1, '2019-12-01 00:14:59', '2019-12-01 00:14:59', 'e3c04d4c-d65f-43bb-852f-06ef5897cc34'),
(48, 48, 1, NULL, NULL, 1, '2019-12-01 00:14:59', '2019-12-01 00:14:59', '21d271b8-1e32-44da-ad1d-8a95e9ce50fc'),
(49, 49, 1, NULL, NULL, 1, '2019-12-01 00:14:59', '2019-12-01 00:14:59', 'c6bf2db0-1185-44b9-86c1-ae118bb70fec'),
(50, 50, 1, 'about', 'about', 1, '2019-12-01 00:44:38', '2019-12-01 00:44:38', 'efbaa77e-eff6-4601-98c3-233cf7ad969e'),
(51, 51, 1, 'about', 'about', 1, '2019-12-01 00:44:38', '2019-12-01 00:44:38', '32a890a1-0a2d-4a87-926f-63b362ac95db'),
(52, 52, 1, 'get-involved', 'get-involved', 1, '2019-12-01 00:44:49', '2019-12-01 00:44:49', '8e6e7ebf-25e0-4742-9c72-7b8a3e920fa7'),
(53, 53, 1, NULL, NULL, 1, '2019-12-01 00:48:13', '2019-12-01 00:48:13', 'fbc8e244-7d51-4419-b10f-f07b0e09132e'),
(54, 54, 1, 'about', 'about', 1, '2019-12-01 00:48:14', '2019-12-01 00:48:14', '2d5938fd-892c-4ac9-a79b-0651535f82f6'),
(55, 55, 1, NULL, NULL, 1, '2019-12-01 00:48:14', '2019-12-01 00:48:14', 'c4247b7f-2afb-4aaa-a75b-4430a8b75d26'),
(56, 56, 1, 'about', 'about', 1, '2019-12-01 00:52:47', '2019-12-01 00:52:47', '2c3fe143-8c0a-4be9-9531-6b34d0f8fb88'),
(57, 57, 1, NULL, NULL, 1, '2019-12-01 00:52:47', '2019-12-01 00:52:47', '4b492b01-a0a5-4cf0-995c-43864e03fd8b'),
(58, 58, 1, 'about', 'about', 1, '2019-12-01 00:52:48', '2019-12-01 00:52:48', '72557c3d-6308-40fd-ad51-637ef97aaf42'),
(59, 59, 1, NULL, NULL, 1, '2019-12-01 00:52:48', '2019-12-01 00:52:48', '4c8fc078-c520-4e74-a590-2c5eb30c50e4'),
(60, 60, 1, 'get-involved', 'get-involved', 1, '2019-12-01 00:52:58', '2019-12-01 00:52:58', 'edaad49b-6d64-400d-99f3-e2e18566a353'),
(61, 61, 1, 'home-page', '__home__', 1, '2019-12-01 19:11:21', '2019-12-01 19:11:21', 'b9f7201f-86b8-4d02-a7e7-844d0e39da20'),
(62, 62, 1, NULL, NULL, 1, '2019-12-01 19:11:22', '2019-12-01 19:11:22', '63008017-ccf7-4fdf-ad71-2dd32919fa25'),
(63, 63, 1, NULL, NULL, 1, '2019-12-01 19:11:22', '2019-12-01 19:11:22', 'f310cf01-e3c1-4b1e-bef8-b19e4ff5699d'),
(64, 64, 1, NULL, NULL, 1, '2019-12-01 19:11:22', '2019-12-01 19:11:22', '05d2e53d-c7f5-48a1-9541-15599a270b8a'),
(65, 65, 1, 'home-page', '__home__', 1, '2019-12-04 03:38:47', '2019-12-04 03:38:47', 'ebb8c209-6649-44c8-90bf-ac9318e1530f'),
(66, 66, 1, NULL, NULL, 1, '2019-12-04 03:38:47', '2019-12-04 03:38:47', '5e1bd176-18dc-40d0-bd82-84d280b325ff'),
(67, 67, 1, NULL, NULL, 1, '2019-12-04 03:38:48', '2019-12-04 03:38:48', '70e0d441-6fbb-4c60-ac84-1dcaee1f9a71'),
(68, 68, 1, NULL, NULL, 1, '2019-12-04 03:38:48', '2019-12-04 03:38:48', '2f4127f3-4f4c-4656-b9e9-164089420f5c'),
(71, 71, 1, NULL, NULL, 1, '2019-12-04 20:03:31', '2019-12-04 20:03:31', 'f65958cf-05a9-440c-8574-99f6d6c20f81'),
(72, 72, 1, 'about', 'about', 1, '2019-12-04 20:03:31', '2019-12-04 20:03:31', 'be5e4072-7d84-4752-b912-492178e1696a'),
(73, 73, 1, NULL, NULL, 1, '2019-12-04 20:03:31', '2019-12-04 20:03:31', '4501e0b9-874e-4322-bf0e-09da69ab5a70'),
(74, 74, 1, 'home-page', '__home__', 1, '2019-12-04 20:09:38', '2019-12-04 20:09:38', '72e47ed7-cfc2-4b90-8dec-4da485f1bf56'),
(75, 75, 1, NULL, NULL, 1, '2019-12-04 20:09:38', '2019-12-04 20:09:38', '102a317c-78c7-46aa-8f03-da4f4d0e3af0'),
(76, 76, 1, NULL, NULL, 1, '2019-12-04 20:09:38', '2019-12-04 20:09:38', '5be62054-2df0-4c11-b80f-6b0126eb4396'),
(77, 77, 1, NULL, NULL, 1, '2019-12-04 20:09:38', '2019-12-04 20:09:38', '23d7fb7d-945b-479a-8a8a-b5e6a53363ae'),
(78, 78, 1, 'home-page', '__home__', 1, '2019-12-04 20:10:15', '2019-12-04 20:10:15', '00ebab5c-eae9-44a3-b8bd-83111f0ed91d'),
(79, 79, 1, NULL, NULL, 1, '2019-12-04 20:10:15', '2019-12-04 20:10:15', '71252c99-3d38-4e73-9175-4004e7355d75'),
(80, 80, 1, NULL, NULL, 1, '2019-12-04 20:10:15', '2019-12-04 20:10:15', 'e7ea9757-2fcf-4175-af97-4843afcdf7b9'),
(81, 81, 1, NULL, NULL, 1, '2019-12-04 20:10:15', '2019-12-04 20:10:15', '9ba59a0e-2928-47d4-a4c7-d1e3772ae76b'),
(82, 82, 1, 'about', 'about', 1, '2019-12-04 20:12:28', '2019-12-04 20:12:28', '22dcceaa-7c7d-48ce-adee-4119343f5565'),
(83, 83, 1, NULL, NULL, 1, '2019-12-04 20:12:28', '2019-12-04 20:12:28', '1f1565af-5884-4a6e-838e-990ea1ef2828'),
(84, 84, 1, 'about', 'about', 1, '2019-12-04 20:12:54', '2019-12-04 20:12:54', 'bdc9c44f-c83d-49d5-9f27-3d9d82c43650'),
(85, 85, 1, NULL, NULL, 1, '2019-12-04 20:12:54', '2019-12-04 20:12:54', '93d7feb0-5d73-4167-a578-a332b40ba0d1'),
(86, 86, 1, NULL, NULL, 1, '2019-12-04 20:14:55', '2019-12-04 20:14:55', '5fbf93a8-0212-459b-b951-ff4b7e97a486'),
(87, 87, 1, 'get-involved', 'get-involved', 1, '2019-12-04 20:14:55', '2019-12-04 20:14:55', '2904bb8d-eb74-49ec-adea-88f3c2ded0c4'),
(88, 88, 1, NULL, NULL, 1, '2019-12-04 20:14:55', '2019-12-04 20:14:55', '1538c557-b1f3-45e0-b6f5-93497c87e1d2'),
(89, 89, 1, 'get-involved', 'get-involved', 1, '2019-12-04 20:15:27', '2019-12-04 20:15:27', 'e9df9d96-d494-45fe-b9d9-7734d052546c'),
(90, 90, 1, NULL, NULL, 1, '2019-12-04 20:15:27', '2019-12-04 20:15:27', '57dc514c-44d0-4e2b-a9bf-81b56c8285bb'),
(91, 91, 1, 'get-involved', 'get-involved', 1, '2019-12-04 20:15:40', '2019-12-04 20:15:40', '2ba28eac-23ce-4966-936a-eae345a3a9e2'),
(92, 92, 1, NULL, NULL, 1, '2019-12-04 20:15:40', '2019-12-04 20:15:40', 'ad0ac2f7-4761-43d5-9add-2aedde5f720e'),
(93, 93, 1, 'get-involved', 'get-involved', 1, '2019-12-04 20:15:54', '2019-12-04 20:15:54', '6bc3034c-cdb5-4b82-801f-f61226b396ba'),
(94, 94, 1, NULL, NULL, 1, '2019-12-04 20:15:54', '2019-12-04 20:15:54', 'aa94ccf9-a9f5-49ca-a43f-b87597241312'),
(95, 95, 1, 'get-involved', 'get-involved', 1, '2019-12-04 20:16:00', '2019-12-04 20:16:00', '16dd34a4-5032-4da1-ba09-84ee7a269997'),
(96, 96, 1, NULL, NULL, 1, '2019-12-04 20:16:00', '2019-12-04 20:16:00', 'ecf7818d-fbdc-45a4-a73c-80432511140d'),
(97, 97, 1, 'get-involved', 'get-involved', 1, '2019-12-04 20:16:10', '2019-12-04 20:16:10', 'c1643b61-261b-475f-b011-6f0b6bdfd37b'),
(98, 98, 1, NULL, NULL, 1, '2019-12-04 20:16:10', '2019-12-04 20:16:10', '63c781a5-954d-4b96-bd03-29aef527c7d0'),
(99, 99, 1, 'home-page', '__home__', 1, '2019-12-04 20:18:01', '2019-12-04 20:18:01', '282c6732-b07a-4d10-9c01-ea0324ee3f7c'),
(100, 100, 1, NULL, NULL, 1, '2019-12-04 20:18:01', '2019-12-04 20:18:01', '1b56e5a9-944d-438c-99f2-1bcd12e31f1f'),
(101, 101, 1, NULL, NULL, 1, '2019-12-04 20:18:01', '2019-12-04 20:18:01', 'cd66e644-8703-4736-b442-5f4739841b77'),
(102, 102, 1, NULL, NULL, 1, '2019-12-04 20:18:01', '2019-12-04 20:18:01', '04c629f9-3afa-4166-8915-46e435932129'),
(103, 103, 1, 'home-page', '__home__', 1, '2019-12-04 20:18:57', '2019-12-04 20:18:57', 'cf59340f-7e44-499e-a4fb-a2595ddc5ece'),
(104, 104, 1, NULL, NULL, 1, '2019-12-04 20:18:57', '2019-12-04 20:18:57', 'b9b8cd95-eeff-4ce8-8b91-ec49fd59fa9f'),
(105, 105, 1, NULL, NULL, 1, '2019-12-04 20:18:57', '2019-12-04 20:18:57', 'c04195d5-c911-4a56-b8b3-411892e016a8'),
(106, 106, 1, NULL, NULL, 1, '2019-12-04 20:18:57', '2019-12-04 20:18:57', '8439c27f-08b0-4ab9-9ccb-9cfa0ece2245'),
(107, 107, 1, NULL, NULL, 1, '2019-12-04 20:28:00', '2019-12-04 20:28:00', 'ea644088-5789-49d7-918b-894716eab8e7'),
(108, 108, 1, 'home-page', '__home__', 1, '2019-12-04 20:28:08', '2019-12-04 20:28:08', 'd9cf6d52-4d6e-4fb7-b5a9-208a4f1055b8'),
(109, 109, 1, NULL, NULL, 1, '2019-12-04 20:28:08', '2019-12-04 20:28:08', '6d106e2f-b53f-4a20-b86a-e264e8167828'),
(110, 110, 1, NULL, NULL, 1, '2019-12-04 20:28:08', '2019-12-04 20:28:08', 'b182fb09-25b0-43ab-b484-49552dc5d147'),
(111, 111, 1, NULL, NULL, 1, '2019-12-04 20:28:08', '2019-12-04 20:28:08', 'c1dbe680-046f-4e19-8e2a-3e1128d99778'),
(112, 112, 1, 'home-page', '__home__', 1, '2019-12-04 20:30:35', '2019-12-04 20:30:35', 'adcb77dc-8d77-4bf3-8ae0-9f5c68ac1e55'),
(113, 113, 1, NULL, NULL, 1, '2019-12-04 20:30:35', '2019-12-04 20:30:35', '3e7f384d-c321-475d-a838-601c1f8c3fe8'),
(114, 114, 1, NULL, NULL, 1, '2019-12-04 20:30:35', '2019-12-04 20:30:35', '48a87778-1e59-4d12-b93d-e0b4b471ce11'),
(115, 115, 1, NULL, NULL, 1, '2019-12-04 20:30:36', '2019-12-04 20:30:36', 'a4bc415c-ffc3-4bce-bfb1-3a334ac44380'),
(116, 116, 1, 'home-page', '__home__', 1, '2019-12-04 20:45:54', '2019-12-04 20:45:54', 'cd26c9e7-8cbd-49f5-afcd-f69f0e49e944'),
(117, 117, 1, NULL, NULL, 1, '2019-12-04 20:45:54', '2019-12-04 20:45:54', '947e3fef-207f-40d0-b369-b646545e604e'),
(118, 118, 1, NULL, NULL, 1, '2019-12-04 20:45:54', '2019-12-04 20:45:54', '9e58ce7f-aca9-4ceb-9155-00cc899e9ab0'),
(119, 119, 1, NULL, NULL, 1, '2019-12-04 20:45:54', '2019-12-04 20:45:54', 'd48100ce-30bc-4489-b12a-1ab187868a07'),
(120, 120, 1, NULL, NULL, 1, '2019-12-04 20:50:07', '2019-12-04 20:50:07', '30a4bb55-5fa9-4cc2-8741-df7f70fdc847'),
(121, 121, 1, 'home-page', '__home__', 1, '2019-12-04 20:50:15', '2019-12-04 20:50:15', 'f0529cb8-327b-4672-bc0d-30894a9e649d'),
(122, 122, 1, NULL, NULL, 1, '2019-12-04 20:50:15', '2019-12-04 20:50:15', 'b38e5415-0f9a-44d7-8c2a-3b156bdf4ccd'),
(123, 123, 1, NULL, NULL, 1, '2019-12-04 20:50:15', '2019-12-04 20:50:15', '20d23e80-63cf-4af4-b1bd-41c52a04fc4c'),
(124, 124, 1, NULL, NULL, 1, '2019-12-04 20:50:15', '2019-12-04 20:50:15', '691a30be-bcec-45c6-bda6-6e39b3947842'),
(125, 125, 1, NULL, NULL, 1, '2019-12-04 21:00:12', '2019-12-04 21:00:12', '900f1d57-8a4d-4aea-bb3f-1d8c8875de68'),
(126, 126, 1, 'home-page', '__home__', 1, '2019-12-04 21:00:19', '2019-12-04 21:00:19', '85d44c3d-2539-4ff8-b92d-a33b1c9dc9ad'),
(127, 127, 1, NULL, NULL, 1, '2019-12-04 21:00:19', '2019-12-04 21:00:19', 'ca424af7-35c9-4120-b61a-b62f6ccc27bb'),
(128, 128, 1, NULL, NULL, 1, '2019-12-04 21:00:19', '2019-12-04 21:00:19', 'c2df982e-8be4-4e1b-8860-11848b1a0349'),
(129, 129, 1, NULL, NULL, 1, '2019-12-04 21:00:19', '2019-12-04 21:00:19', '44e853a5-1840-407e-91bb-07ce6509eebb'),
(130, 130, 1, NULL, NULL, 1, '2019-12-04 21:08:45', '2019-12-04 21:08:45', 'f67be05e-47cf-4343-b4e2-d04bff7a59f2'),
(131, 131, 1, 'home-page', '__home__', 1, '2019-12-04 21:08:49', '2019-12-04 21:08:49', 'c02aef2d-fa3c-4fef-8a64-5e08a2a7dec2'),
(132, 132, 1, NULL, NULL, 1, '2019-12-04 21:08:49', '2019-12-04 21:08:49', 'f9abf69e-6cff-4db0-bab2-4ff895e0ee83'),
(133, 133, 1, NULL, NULL, 1, '2019-12-04 21:08:49', '2019-12-04 21:08:49', 'd607d63b-bcc8-4e33-ad9a-950be5da028f'),
(134, 134, 1, NULL, NULL, 1, '2019-12-04 21:08:49', '2019-12-04 21:08:49', '18434341-521a-4211-a6ea-3ca57f18d1af'),
(135, 135, 1, NULL, NULL, 1, '2019-12-04 21:17:08', '2019-12-04 21:17:08', '1ccfc9a6-9c15-402a-b92f-229e80b68920'),
(136, 136, 1, 'about', 'about', 1, '2019-12-04 21:17:12', '2019-12-04 21:17:12', 'f945307b-8415-417f-b8e5-24a1cf5bc86c'),
(137, 137, 1, NULL, NULL, 1, '2019-12-04 21:17:12', '2019-12-04 21:17:12', 'a4cfb106-19be-4842-8c6c-06b60a53d47f'),
(138, 138, 1, 'about', 'about', 1, '2019-12-04 21:17:49', '2019-12-04 21:17:49', '4148dd0a-7fc7-44ca-a9f3-8aae5657a6c5'),
(139, 139, 1, NULL, NULL, 1, '2019-12-04 21:17:49', '2019-12-04 21:17:49', '58317299-78a3-4d44-9834-610f5f0cbef3'),
(140, 140, 1, NULL, NULL, 1, '2019-12-04 21:20:44', '2019-12-04 21:20:44', 'a8d0bf3b-2c48-4838-8aa8-157072bbe769'),
(141, 141, 1, 'about', 'about', 1, '2019-12-04 21:20:50', '2019-12-04 21:20:50', 'cef8f8e2-a167-484d-bd84-cd47e7eea83c'),
(142, 142, 1, NULL, NULL, 1, '2019-12-04 21:20:50', '2019-12-04 21:20:50', '1c996acd-9350-4e98-b30c-c1135296f3b8'),
(143, 143, 1, NULL, NULL, 1, '2019-12-04 21:25:06', '2019-12-04 21:25:06', '12c41ec8-b647-40cb-bbf1-aa918ccd991f'),
(144, 144, 1, 'get-involved', 'get-involved', 1, '2019-12-04 21:25:10', '2019-12-04 21:25:10', 'a8dcf9f3-e136-4423-8dbc-2fa4614749c5'),
(145, 145, 1, NULL, NULL, 1, '2019-12-04 21:25:10', '2019-12-04 21:25:10', '26224364-8460-488d-9f5d-a0f2270ed577'),
(146, 146, 1, 'get-involved', 'get-involved', 1, '2019-12-04 21:34:09', '2019-12-04 21:34:09', '76a9fd05-73ba-4bc7-9df2-0421ec43a4bf'),
(147, 147, 1, NULL, NULL, 1, '2019-12-04 21:34:09', '2019-12-04 21:34:09', 'b986ef65-ff7a-44d9-bca3-1d6e4ea3f01b'),
(148, 148, 1, 'get-involved', 'get-involved', 1, '2019-12-04 21:34:17', '2019-12-04 21:34:17', 'e6c29377-6cae-4336-a4d7-cdd3a092c534'),
(149, 149, 1, NULL, NULL, 1, '2019-12-04 21:34:17', '2019-12-04 21:34:17', 'fc8cba0d-9886-4ba8-90a3-7a349a57bf79'),
(150, 150, 1, 'get-involved', 'get-involved', 1, '2019-12-04 21:34:34', '2019-12-04 21:34:34', 'c7455757-ff92-4aa7-b673-864b166e5555'),
(151, 151, 1, NULL, NULL, 1, '2019-12-04 21:34:34', '2019-12-04 21:34:34', 'bfad4909-e69e-4ff7-95f2-b368e9b1c29b'),
(152, 152, 1, 'about', 'about', 1, '2019-12-05 00:37:13', '2019-12-05 00:37:13', '6389affa-c684-4b0b-ad0d-3fdabd2ef71b'),
(153, 153, 1, NULL, NULL, 1, '2019-12-05 00:37:13', '2019-12-05 00:37:13', '70d000de-de08-4868-a5c3-647e811541fb'),
(154, 154, 1, 'get-involved', 'get-involved', 1, '2019-12-05 00:37:17', '2019-12-05 00:37:17', '8add8322-97cd-4069-86e9-a767bdba9171'),
(155, 155, 1, NULL, NULL, 1, '2019-12-05 00:37:17', '2019-12-05 00:37:17', '67992c7a-2a00-4212-a46a-160210e0b910'),
(156, 156, 1, NULL, NULL, 1, '2019-12-05 00:38:20', '2019-12-05 00:38:20', '17948c3e-cbe7-4584-8cfd-2317fcdf90fb'),
(157, 157, 1, 'get-involved', 'get-in-touch', 1, '2019-12-05 00:39:38', '2019-12-05 00:39:38', 'e6f3be4b-2e2b-4e2a-8c18-f5864c23ed22'),
(158, 158, 1, NULL, NULL, 1, '2019-12-05 00:39:38', '2019-12-05 00:39:38', '8f6dd1f5-834b-4a47-996d-258322ec39fa'),
(159, 159, 1, 'about', 'about', 1, '2019-12-05 03:41:52', '2019-12-05 03:41:52', '04e855d7-6948-4909-b583-5c199d5cc3f8'),
(160, 160, 1, NULL, NULL, 1, '2019-12-05 03:41:52', '2019-12-05 03:41:52', '0ea513e2-cbc9-477f-b4c4-e4ba23428424'),
(161, 161, 1, NULL, NULL, 1, '2019-12-07 03:37:04', '2019-12-07 03:37:04', 'b0f60934-5e38-4d35-898d-6f8d77f57680'),
(162, 162, 1, 'home-page', '__home__', 1, '2019-12-11 01:37:59', '2019-12-11 01:37:59', 'd87d3aac-1f7a-46c6-b4ad-82b9e57ac22e'),
(163, 163, 1, NULL, NULL, 1, '2019-12-11 01:37:59', '2019-12-11 01:37:59', '8ddf3257-2351-4e1e-817a-423613aec693'),
(164, 164, 1, NULL, NULL, 1, '2019-12-11 01:38:00', '2019-12-11 01:38:00', 'cd58b6d2-0b39-4236-9c20-7874a48759d6'),
(165, 165, 1, NULL, NULL, 1, '2019-12-11 01:38:00', '2019-12-11 01:38:00', 'ab1d53b6-d9ba-4f98-8a3b-50dbffd17f90'),
(166, 166, 1, 'home-page', '__home__', 1, '2019-12-11 01:38:00', '2019-12-11 01:38:00', 'dd8028a6-8b01-497c-92d3-3c1682b7eb3f'),
(167, 167, 1, NULL, NULL, 1, '2019-12-11 01:38:01', '2019-12-11 01:38:01', '1b44722d-be7d-4002-bf60-3a54687d5917'),
(168, 168, 1, NULL, NULL, 1, '2019-12-11 01:38:01', '2019-12-11 01:38:01', 'e9d39db8-2f75-40ea-88de-4c1aa32753d2'),
(169, 169, 1, NULL, NULL, 1, '2019-12-11 01:38:01', '2019-12-11 01:38:01', '959baf64-b8f0-4e68-8542-e09017244fd2'),
(171, 171, 1, NULL, NULL, 1, '2020-01-16 02:07:16', '2020-01-16 02:07:16', '6c7a5da3-718e-4815-8ebe-4c00a99820b8'),
(172, 172, 1, NULL, NULL, 1, '2020-01-16 02:07:18', '2020-01-16 02:07:18', '7a7e18a8-fba2-46a9-8bd1-d762a66ded7c'),
(174, 174, 1, 'about-1', 'about-1', 1, '2020-01-16 02:07:27', '2020-01-16 02:07:29', '18d834f1-ad32-4175-a4fe-4c897c2af2c9'),
(175, 175, 1, NULL, NULL, 1, '2020-01-16 02:07:27', '2020-01-16 02:07:27', 'd2b6b3b4-d47d-4fe1-a1e2-e192bb3f628a'),
(176, 176, 1, 'about-1', 'about-1', 1, '2020-01-16 02:07:27', '2020-01-16 02:07:27', 'a53c3688-fc8f-49be-a095-074a6ce17354'),
(177, 177, 1, NULL, NULL, 1, '2020-01-16 02:07:27', '2020-01-16 02:07:27', '42263a29-9804-45fb-82bb-7fe9a965803d'),
(179, 179, 1, 'youth-family-programs', 'youth-family-programs', 1, '2020-01-16 02:07:53', '2020-01-16 02:07:56', 'ee5a648e-064a-4cc5-9af8-59e188dd5489'),
(180, 180, 1, 'youth-family-programs', 'youth-family-programs', 1, '2020-01-16 02:07:53', '2020-01-16 02:07:53', 'a80c0ce5-f67e-4ed6-9f96-37f2e06a6e06'),
(182, 182, 1, 'gender-inclusivity-training', 'gender-inclusivity-training', 1, '2020-01-16 02:08:15', '2020-01-16 02:08:17', '2e083af9-41c3-4543-b51c-a7efd11afe77'),
(183, 183, 1, 'gender-inclusivity-training', 'gender-inclusivity-training', 1, '2020-01-16 02:08:15', '2020-01-16 02:08:15', '91c6309d-39fa-41ab-a74c-f48e4f3a3a86'),
(185, 185, 1, 'research-education', 'research-education', 1, '2020-01-16 02:08:27', '2020-01-16 02:08:29', 'a3e65690-3101-456a-858c-acefef49758a'),
(186, 186, 1, 'research-education', 'research-education', 1, '2020-01-16 02:08:27', '2020-01-16 02:08:27', '1ad50f58-eee1-4394-8526-be471418ed73'),
(188, 188, 1, 'get-involved', 'get-involved', 1, '2020-01-16 02:08:37', '2020-01-16 02:08:39', '174af505-1d88-4635-89fd-5b851ddc60ba'),
(189, 189, 1, 'get-involved', 'get-involved', 1, '2020-01-16 02:08:37', '2020-01-16 02:08:37', '5fee6d2e-5648-4f3f-9bf7-3e9bf25dac3e'),
(190, 190, 1, '__temp_r1QDKGW7NUNlHShtlo6CoWhMWY2igf6YVxsY', '__temp_r1QDKGW7NUNlHShtlo6CoWhMWY2igf6YVxsY', 1, '2020-01-16 02:09:02', '2020-01-16 02:09:02', 'f2b074fe-94ca-48c8-9ba0-0e3b1f4a46ed'),
(191, 191, 1, 'about-1', 'about-1', 1, '2020-01-16 02:10:16', '2020-01-16 02:10:16', '7fbfe4c9-05a8-4505-b891-9dfa99c49bb9'),
(192, 192, 1, NULL, NULL, 1, '2020-01-16 02:10:16', '2020-01-16 02:10:16', 'c25cbc51-e5ae-4e1d-8e90-e48236bdfcba'),
(193, 193, 1, 'about', 'about', 1, '2020-01-16 02:10:25', '2020-01-16 02:10:25', '26331dd0-9b3a-4388-ae32-cd8b405e542d'),
(194, 194, 1, NULL, NULL, 1, '2020-01-16 02:10:25', '2020-01-16 02:10:25', '2a1c4c19-1374-44a5-943f-a3af7a542c42'),
(196, 196, 1, 'about-mission', 'about-mission', 1, '2020-01-16 02:12:28', '2020-01-16 02:12:30', 'db053ee6-76ab-4a2b-b214-8861a094087b'),
(197, 197, 1, 'about-mission', 'about-mission', 1, '2020-01-16 02:12:28', '2020-01-16 02:12:28', '92a8fa9a-d215-4c54-b535-f9dedee5b328'),
(199, 199, 1, 'family-therapy', 'family-therapy', 1, '2020-01-18 01:02:32', '2020-01-18 01:02:34', 'bd8faf06-13fe-4655-9212-460439a9891c'),
(200, 200, 1, 'family-therapy', 'family-therapy', 1, '2020-01-18 01:02:32', '2020-01-18 01:02:32', 'cc0c8694-97a2-472d-8750-4e3d24dce15e'),
(202, 202, 1, 'psychological-evaluation', 'psychological-evaluation', 1, '2020-01-18 01:03:04', '2020-01-18 01:03:07', 'e5bdda96-f5fd-408d-a162-b80da5969e2a'),
(203, 203, 1, 'psychological-evaluation', 'psychological-evaluation', 1, '2020-01-18 01:03:04', '2020-01-18 01:03:04', '8210fd3c-1a1a-4550-92d0-4ab398a25114'),
(205, 205, 1, 'support-groups', 'support-groups', 1, '2020-01-18 01:03:12', '2020-01-18 01:03:14', '7b929283-f920-4070-afcf-ec3ea4ed34bd'),
(206, 206, 1, 'support-groups', 'support-groups', 1, '2020-01-18 01:03:12', '2020-01-18 01:03:12', '47069028-e95b-4df0-b135-b7d37453d332'),
(208, 208, 1, 'family-youth-advocacy-teams', 'family-youth-advocacy-teams', 1, '2020-01-18 01:03:25', '2020-01-18 01:03:28', '05eb81ee-6bad-427b-8327-5db0f1cf47a4'),
(209, 209, 1, 'family-youth-advocacy-teams', 'family-youth-advocacy-teams', 1, '2020-01-18 01:03:26', '2020-01-18 01:03:26', '8c2e6948-4297-4425-a0c0-fb8071f9a1f8'),
(211, 211, 1, 'school-and-professional-support', 'school-and-professional-support', 1, '2020-01-18 01:03:38', '2020-01-18 01:03:41', '29ca868d-d151-47bf-bef3-deef8d376d2f'),
(212, 212, 1, 'school-and-professional-support', 'school-and-professional-support', 1, '2020-01-18 01:03:38', '2020-01-18 01:03:38', '0f965153-23a5-4393-8fac-892c6309ba0f'),
(214, 214, 1, 'gender-conference-nyc-gc-nyc', 'gender-conference-nyc-gc-nyc', 1, '2020-01-18 01:03:54', '2020-01-18 01:03:57', '61d3e279-c0a0-484c-9fd9-11ae21582dae'),
(215, 215, 1, 'gender-conference-nyc-gc-nyc', 'gender-conference-nyc-gc-nyc', 1, '2020-01-18 01:03:54', '2020-01-18 01:03:54', '27cfa436-a118-4526-b0c6-87da6a98848e'),
(217, 217, 1, 'spanish-services', 'spanish-services', 1, '2020-01-18 01:04:03', '2020-01-18 01:04:06', 'c05fc759-3cef-482b-88a0-001220cad783'),
(218, 218, 1, 'spanish-services', 'spanish-services', 1, '2020-01-18 01:04:03', '2020-01-18 01:04:03', 'b0ca85fc-7c67-41fe-998b-1f91afcc7aa8'),
(220, 220, 1, 'school-trainings', 'school-trainings', 1, '2020-01-18 01:04:18', '2020-01-18 01:04:22', '892552e0-a7cf-4fc1-944f-5c70c93ca7ea'),
(221, 221, 1, 'school-trainings', 'school-trainings', 1, '2020-01-18 01:04:18', '2020-01-18 01:04:18', 'c6ad7080-fa66-42ae-8178-8b5aa36b7931'),
(223, 223, 1, 'professional-trainings', 'professional-trainings', 1, '2020-01-18 01:04:29', '2020-01-18 01:04:31', 'fecd2bf2-1c4a-48c5-a241-b1630f228b76'),
(224, 224, 1, 'professional-trainings', 'professional-trainings', 1, '2020-01-18 01:04:29', '2020-01-18 01:04:29', '8fd63d81-cba6-4012-8000-a5b1f2cb0d24'),
(226, 226, 1, 'corporate-trainings', 'corporate-trainings', 1, '2020-01-18 01:04:41', '2020-01-18 01:04:43', '39fa2a87-d885-4f5d-9701-9252ca1a9196'),
(227, 227, 1, 'corporate-trainings', 'corporate-trainings', 1, '2020-01-18 01:04:41', '2020-01-18 01:04:41', 'b3921d5d-d658-471a-b287-e2cab5d9a661'),
(229, 229, 1, 'research-at-gfp', 'research-at-gfp', 1, '2020-01-18 01:05:16', '2020-01-18 01:05:18', 'd4000e0a-fa5d-417b-b86f-627a37b8946b'),
(230, 230, 1, 'research-at-gfp', 'research-at-gfp', 1, '2020-01-18 01:05:16', '2020-01-18 01:05:16', 'd9a304b2-e57e-4bae-9cf8-5c1af6936468'),
(232, 232, 1, 'publications', 'publications', 1, '2020-01-18 01:05:22', '2020-01-18 01:05:25', '33c54e68-c6c5-4a33-9038-309ae597f4c4'),
(233, 233, 1, 'publications', 'publications', 1, '2020-01-18 01:05:22', '2020-01-18 01:05:22', 'c93a692c-6f6c-4309-b2bc-26302a16329a'),
(235, 235, 1, 'resources-for-families', 'resources-for-families', 1, '2020-01-18 01:05:35', '2020-01-18 01:05:37', '18ede753-17cf-469f-b480-fc01df018e8c'),
(236, 236, 1, 'resources-for-families', 'resources-for-families', 1, '2020-01-18 01:05:35', '2020-01-18 01:05:35', 'a4f6b50a-ae8f-475f-a8e9-03f93739dd7c'),
(238, 238, 1, 'resources-for-professionals', 'resources-for-professionals', 1, '2020-01-18 01:05:49', '2020-01-18 01:05:52', '799b2af1-6002-4fd9-9bb9-25786df8aa82'),
(239, 239, 1, 'resources-for-professionals', 'resources-for-professionals', 1, '2020-01-18 01:05:49', '2020-01-18 01:05:49', '6a87f939-4359-4d12-8459-e8b407c79e52'),
(241, 241, 1, 'donate-now', 'donate-now', 1, '2020-01-18 01:06:04', '2020-01-18 01:06:07', '66813acb-d508-449e-a8f4-f4a5fb1739bc'),
(242, 242, 1, 'donate-now', 'donate-now', 1, '2020-01-18 01:06:04', '2020-01-18 01:06:04', 'b2adab7f-4247-441f-a4bf-b6f66726cdde'),
(244, 244, 1, 'a-night-of-a-thousand-genders', 'a-night-of-a-thousand-genders', 1, '2020-01-18 01:06:18', '2020-01-18 01:06:20', '61324ea8-2b46-4b9c-a16c-89bb44dd9abd'),
(245, 245, 1, 'a-night-of-a-thousand-genders', 'a-night-of-a-thousand-genders', 1, '2020-01-18 01:06:18', '2020-01-18 01:06:18', '6e6313e8-1b1a-40a7-a59a-eb216df1a86e'),
(247, 247, 1, 'sponsorship-corporate-partner', 'sponsorship-corporate-partner', 1, '2020-01-18 01:06:29', '2020-01-18 01:06:31', '95241705-7590-4fed-99b6-8d4e8d3b65a8'),
(248, 248, 1, 'sponsorship-corporate-partner', 'sponsorship-corporate-partner', 1, '2020-01-18 01:06:29', '2020-01-18 01:06:29', '49a76e87-609f-4e31-9168-9d4efa89078c'),
(250, 250, 1, 'give-through-your-foundation', 'give-through-your-foundation', 1, '2020-01-18 01:06:41', '2020-01-18 01:06:43', '04674f9e-9f69-4841-afb7-9b88078f6987'),
(251, 251, 1, 'give-through-your-foundation', 'give-through-your-foundation', 1, '2020-01-18 01:06:41', '2020-01-18 01:06:41', 'c19ccc49-f529-4a88-9032-fbebf99e37ca'),
(253, 253, 1, 'get-involved-volunteer', 'get-involved-volunteer', 1, '2020-01-18 01:06:54', '2020-01-18 01:06:56', '3052121a-52e4-456a-9732-2dba8f002474'),
(254, 254, 1, 'get-involved-volunteer', 'get-involved-volunteer', 1, '2020-01-18 01:06:54', '2020-01-18 01:06:54', '30aa4edf-fa00-441b-bb35-41badbfe5d0b'),
(256, 256, 1, 'staff', 'staff', 1, '2020-01-18 01:07:19', '2020-01-18 01:07:22', '2b509eba-0f69-4772-a31f-6784d52681d4'),
(257, 257, 1, 'staff', 'staff', 1, '2020-01-18 01:07:19', '2020-01-18 01:07:19', '7bf58da8-93be-4fd7-81b0-381134522432'),
(259, 259, 1, 'advisory-council', 'advisory-council', 1, '2020-01-18 01:07:40', '2020-01-18 01:07:42', '25ab2071-ca11-48b0-9285-518d7b6abcd1'),
(260, 260, 1, 'advisory-council', 'advisory-council', 1, '2020-01-18 01:07:40', '2020-01-18 01:07:40', 'b1dff921-efea-48aa-9ee7-b1f9c47dd02d'),
(262, 262, 1, 'contact', 'contact', 1, '2020-01-18 01:07:44', '2020-01-18 01:07:46', '0f65c0ff-2f52-4a9c-9f38-3ed0db47b681'),
(263, 263, 1, 'contact', 'contact', 1, '2020-01-18 01:07:45', '2020-01-18 01:07:45', '6eb0c0f1-a7b5-4171-a7c1-b431c473c574'),
(264, 264, 1, 'get-involved', 'get-in-touch', 1, '2020-01-19 01:36:31', '2020-01-19 01:36:31', '4e7ccadd-a2b1-4c46-bf7b-97ffb880229c'),
(265, 265, 1, NULL, NULL, 1, '2020-01-19 01:36:31', '2020-01-19 01:36:31', '26e911e6-945b-406a-92a2-762cfdb5e875'),
(266, 266, 1, NULL, NULL, 1, '2020-01-19 02:05:45', '2020-01-19 02:05:45', '63ad5363-f662-4275-8b04-3b6b3c2dedbb'),
(267, 267, 1, 'home-page', '__home__', 1, '2020-01-19 02:06:32', '2020-01-19 02:06:32', '13e71a10-1cef-4d0b-958a-de32f2fd19a9'),
(268, 268, 1, NULL, NULL, 1, '2020-01-19 02:06:32', '2020-01-19 02:06:32', '79d19852-fea8-4764-8b6d-5097025bfa91'),
(269, 269, 1, NULL, NULL, 1, '2020-01-19 02:06:32', '2020-01-19 02:06:32', 'bf66be82-f7a6-4c9b-8d64-5b13e50f3652'),
(270, 270, 1, NULL, NULL, 1, '2020-01-19 02:06:33', '2020-01-19 02:06:33', 'f9d08330-4e16-4b12-85fb-5426b950f499'),
(271, 271, 1, 'style-guide', 'style-guide', 1, '2020-01-21 01:57:35', '2020-01-21 01:57:35', '569c8d87-4ec3-42a2-a0eb-9e403e9102c7'),
(272, 272, 1, 'style-guide', 'style-guide', 1, '2020-01-21 01:57:35', '2020-01-21 01:57:35', 'cfe1abfe-23ed-4f08-8e55-9cf945baaeef'),
(273, 273, 1, 'style-guide', 'style-guide', 1, '2020-01-21 01:58:06', '2020-01-21 01:58:06', '391094d4-a340-4e3f-9fbb-83790c6269e1'),
(274, 274, 1, NULL, NULL, 1, '2020-01-21 01:58:20', '2020-01-21 01:58:20', '3fc07c13-373a-4ff2-a06c-cbc99934bdaa'),
(275, 275, 1, 'style-guide', 'style-guide', 1, '2020-01-21 01:58:20', '2020-01-21 01:58:20', 'e75f4634-91cb-4608-bc83-9b7aea17136a'),
(276, 276, 1, NULL, NULL, 1, '2020-01-21 01:58:20', '2020-01-21 01:58:20', '11126e20-6b84-4e5d-b9de-ed5d4fece5cd'),
(277, 277, 1, NULL, NULL, 1, '2020-01-21 02:20:06', '2020-01-21 02:20:06', '8e9ea2ca-fb69-439f-888a-d88da1a010eb'),
(278, 278, 1, NULL, NULL, 1, '2020-01-21 02:20:06', '2020-01-21 02:20:06', 'f5fa3e07-d9dd-45b6-be23-430a4af2c4c2'),
(279, 279, 1, NULL, NULL, 1, '2020-01-21 02:20:06', '2020-01-21 02:20:06', '6be80c48-01b5-4880-99db-84f438c20b3e'),
(280, 280, 1, NULL, NULL, 1, '2020-01-21 02:20:06', '2020-01-21 02:20:06', '39762563-15ec-4b2d-968c-d1bb88fed113'),
(281, 281, 1, NULL, NULL, 1, '2020-01-21 02:20:06', '2020-01-21 02:20:06', 'b9622463-50d7-41e5-a2af-09f6bd4e8b74'),
(282, 282, 1, 'style-guide', 'style-guide', 1, '2020-01-21 02:20:06', '2020-01-21 02:20:06', '2a3af268-0ac3-4fc4-8ecf-675da287a5fd'),
(283, 283, 1, NULL, NULL, 1, '2020-01-21 02:20:06', '2020-01-21 02:20:06', '24b4e6c4-db8c-43a2-9f96-16080d72b650'),
(284, 284, 1, NULL, NULL, 1, '2020-01-21 02:20:06', '2020-01-21 02:20:06', '6fbc6f47-35d4-4b50-bee6-6b651f279abe'),
(285, 285, 1, NULL, NULL, 1, '2020-01-21 02:20:07', '2020-01-21 02:20:07', '9446b025-e069-446c-95da-98e6fa65c1de'),
(286, 286, 1, NULL, NULL, 1, '2020-01-21 02:20:07', '2020-01-21 02:20:07', 'd0ecd8b1-a690-4c0e-b7e8-238fe05f4a7a'),
(287, 287, 1, NULL, NULL, 1, '2020-01-21 02:20:07', '2020-01-21 02:20:07', 'e1a6f2af-11b8-4679-a005-0b0249cc9502'),
(288, 288, 1, NULL, NULL, 1, '2020-01-21 02:20:07', '2020-01-21 02:20:07', '71793b7e-99e0-488b-bd2a-4247284bf53c'),
(289, 289, 1, 'style-guide', 'style-guide', 1, '2020-01-21 02:38:10', '2020-01-21 02:38:10', 'd5e46971-ea9d-49ba-8d8a-145cecda4d63'),
(290, 290, 1, NULL, NULL, 1, '2020-01-21 02:38:10', '2020-01-21 02:38:10', 'dca40700-94b6-43d3-99fd-6d04d9ceb594'),
(291, 291, 1, NULL, NULL, 1, '2020-01-21 02:38:10', '2020-01-21 02:38:10', '7289af62-0f34-493f-9df4-131726af1bfc'),
(292, 292, 1, NULL, NULL, 1, '2020-01-21 02:38:10', '2020-01-21 02:38:10', 'decef87e-ab27-4e34-9cdd-10e2954e3f45'),
(293, 293, 1, NULL, NULL, 1, '2020-01-21 02:38:10', '2020-01-21 02:38:10', '9e509d8c-8fac-408f-b937-37b12d6525e4'),
(294, 294, 1, NULL, NULL, 1, '2020-01-21 02:38:10', '2020-01-21 02:38:10', '9782beaf-b186-442b-b137-ac228ebbdebd'),
(295, 295, 1, NULL, NULL, 1, '2020-01-21 02:38:10', '2020-01-21 02:38:10', '3e28afc2-058a-4eaf-a0f1-b595c7dae59c'),
(296, 296, 1, 'style-guide', 'style-guide', 1, '2020-01-25 14:39:03', '2020-01-25 14:39:03', '2721132e-7216-4f31-8925-0d6a9726e166'),
(297, 297, 1, NULL, NULL, 1, '2020-01-25 14:39:03', '2020-01-25 14:39:03', '5b41a39d-6cb4-4407-a953-15d9306cdee4'),
(298, 298, 1, NULL, NULL, 1, '2020-01-25 14:39:03', '2020-01-25 14:39:03', '7be2fc7d-d4f5-4d31-bf66-437e31b5a668'),
(299, 299, 1, NULL, NULL, 1, '2020-01-25 14:39:03', '2020-01-25 14:39:03', 'ab173238-827f-4e4b-aac1-f3f3432d9f15'),
(300, 300, 1, NULL, NULL, 1, '2020-01-25 14:39:03', '2020-01-25 14:39:03', '8929fe1c-d705-4017-9646-bc88416842cb'),
(301, 301, 1, NULL, NULL, 1, '2020-01-25 14:39:03', '2020-01-25 14:39:03', 'bc53eec2-9043-407d-8054-72f431c84fcb'),
(302, 302, 1, NULL, NULL, 1, '2020-01-25 14:39:03', '2020-01-25 14:39:03', 'e36c1159-c95a-4f91-97a2-06a89540c417'),
(303, 303, 1, NULL, NULL, 1, '2020-01-25 14:42:17', '2020-01-25 14:42:17', 'fcdf15e5-a81c-4882-be31-fb1a820dafbe'),
(304, 304, 1, 'style-guide', 'style-guide', 1, '2020-01-25 14:42:36', '2020-01-25 14:42:36', '5771ca23-48ea-4fe3-8618-00857e6b8341'),
(305, 305, 1, NULL, NULL, 1, '2020-01-25 14:42:36', '2020-01-25 14:42:36', '7fb8a483-f192-460e-b687-5c1e5e813e84'),
(306, 306, 1, NULL, NULL, 1, '2020-01-25 14:42:36', '2020-01-25 14:42:36', '835e83d9-637e-47ef-bc03-a588cfe02b35'),
(307, 307, 1, NULL, NULL, 1, '2020-01-25 14:42:36', '2020-01-25 14:42:36', '44966297-fad4-4b6b-97f0-eeb8916c1b8a'),
(308, 308, 1, NULL, NULL, 1, '2020-01-25 14:42:36', '2020-01-25 14:42:36', '90a63d41-9f97-4edf-80f6-2f8d61b2e83a'),
(309, 309, 1, NULL, NULL, 1, '2020-01-25 14:42:37', '2020-01-25 14:42:37', '6d6b2f62-36fe-40ca-af4a-085607cf8f75'),
(310, 310, 1, NULL, NULL, 1, '2020-01-25 14:42:37', '2020-01-25 14:42:37', 'e8332fa1-cb27-4e45-a9c9-c254b785db73'),
(311, 311, 1, 'style-guide', 'style-guide', 1, '2020-01-25 14:45:11', '2020-01-25 14:45:11', '56a5205b-f011-4f4d-8972-bd825ddf659b'),
(312, 312, 1, NULL, NULL, 1, '2020-01-25 14:45:11', '2020-01-25 14:45:11', 'd22f198b-5d82-497a-9c1f-2e0735c1b48d'),
(313, 313, 1, NULL, NULL, 1, '2020-01-25 14:45:11', '2020-01-25 14:45:11', 'cccc8fb1-79f5-49b1-9d06-26635c5ce5d2'),
(314, 314, 1, NULL, NULL, 1, '2020-01-25 14:45:11', '2020-01-25 14:45:11', 'c79e39c0-c925-4d8c-b8d5-a7ae18a17a32'),
(315, 315, 1, NULL, NULL, 1, '2020-01-25 14:45:11', '2020-01-25 14:45:11', '480d2d8e-7ff6-4406-9926-148781df9d71'),
(316, 316, 1, NULL, NULL, 1, '2020-01-25 14:45:11', '2020-01-25 14:45:11', '5f7c9f59-d546-4054-b3ee-a5eec9270320'),
(317, 317, 1, NULL, NULL, 1, '2020-01-25 14:45:11', '2020-01-25 14:45:11', 'c18dd3d1-976d-4eb0-a9e3-e76f51af36c0'),
(318, 318, 1, NULL, NULL, 1, '2020-01-25 14:49:33', '2020-01-25 14:49:33', '5b5def73-a5c4-403a-a1d7-bb51a090bc92'),
(319, 319, 1, 'style-guide', 'style-guide', 1, '2020-01-25 14:51:00', '2020-01-25 14:51:00', '79e71861-6248-4e29-9b4b-90518e4bc225'),
(320, 320, 1, NULL, NULL, 1, '2020-01-25 14:51:00', '2020-01-25 14:51:00', '21b7023c-d4c9-4d33-b492-b0c27bf2e690'),
(321, 321, 1, NULL, NULL, 1, '2020-01-25 14:51:00', '2020-01-25 14:51:00', 'cafef614-4fca-401b-bdc8-5a1315967a4d'),
(322, 322, 1, NULL, NULL, 1, '2020-01-25 14:51:00', '2020-01-25 14:51:00', 'c6d6e362-be43-42da-a537-ce8f19e7dc35'),
(323, 323, 1, NULL, NULL, 1, '2020-01-25 14:51:00', '2020-01-25 14:51:00', '75a052dd-efb6-48c6-93c0-e83e13e2296c'),
(324, 324, 1, NULL, NULL, 1, '2020-01-25 14:51:00', '2020-01-25 14:51:00', 'c4f7148d-0d4d-449d-8518-94188a72e549'),
(325, 325, 1, NULL, NULL, 1, '2020-01-25 14:51:00', '2020-01-25 14:51:00', '314ff8be-e3bc-49a2-b2d7-79e46675fe9b'),
(326, 326, 1, NULL, NULL, 1, '2020-01-25 14:54:08', '2020-01-25 14:54:08', '95cc9887-45d1-4709-befc-911cb678e255'),
(334, 334, 1, NULL, NULL, 1, '2020-01-25 15:35:42', '2020-01-25 15:35:42', '90b84b5c-5f9a-4b8d-a68d-a9de709b764b'),
(335, 335, 1, NULL, NULL, 1, '2020-01-25 15:35:42', '2020-01-25 15:35:42', '5940172c-e204-4385-ac94-094656e57729'),
(336, 336, 1, NULL, NULL, 1, '2020-01-25 15:35:42', '2020-01-25 15:35:42', '411757a8-8162-4f3f-98fe-44e12e43655e'),
(337, 337, 1, NULL, NULL, 1, '2020-01-25 15:35:42', '2020-01-25 15:35:42', '5064a667-4c43-43a2-936d-571f24c4b437'),
(338, 338, 1, NULL, NULL, 1, '2020-01-25 15:35:43', '2020-01-25 15:35:43', 'd15cd925-6a9e-44e3-9c05-d1427281afaa'),
(339, 339, 1, NULL, NULL, 1, '2020-01-25 15:35:43', '2020-01-25 15:35:43', '54c60bf8-51e4-4051-b35c-b4a4f93bd539'),
(340, 340, 1, 'style-guide', 'style-guide', 1, '2020-01-25 15:35:43', '2020-01-25 15:35:43', '3f372562-45d3-4bb7-a13e-fe9cf5d5cc86'),
(341, 341, 1, NULL, NULL, 1, '2020-01-25 15:35:43', '2020-01-25 15:35:43', '0965faf8-dfd3-443b-a355-5d1cd6acbd12'),
(342, 342, 1, NULL, NULL, 1, '2020-01-25 15:35:43', '2020-01-25 15:35:43', 'd33bbb48-9795-487e-8255-300db9a1e545'),
(343, 343, 1, NULL, NULL, 1, '2020-01-25 15:35:43', '2020-01-25 15:35:43', '0b56c5dc-8112-4a99-8cb1-930cec846e44'),
(344, 344, 1, NULL, NULL, 1, '2020-01-25 15:35:43', '2020-01-25 15:35:43', 'e8bf3972-b143-4b89-96cd-f1dcc89c6a5a'),
(345, 345, 1, NULL, NULL, 1, '2020-01-25 15:35:43', '2020-01-25 15:35:43', 'e21fd6c7-5d46-4385-892f-4797fa35977c'),
(346, 346, 1, NULL, NULL, 1, '2020-01-25 15:35:44', '2020-01-25 15:35:44', '5c50984a-4495-4653-aa2e-72587c7fdfd1'),
(347, 347, 1, 'style-guide', 'style-guide', 1, '2020-01-25 15:37:16', '2020-01-25 15:37:16', '6143c6d9-8546-4166-a996-8b9930036e59'),
(348, 348, 1, NULL, NULL, 1, '2020-01-25 15:37:16', '2020-01-25 15:37:16', '97db0260-9e77-4bff-8c92-488b8ef0b7f4'),
(349, 349, 1, NULL, NULL, 1, '2020-01-25 15:37:16', '2020-01-25 15:37:16', 'a2b32c46-499b-4bc8-88a4-fef86197be64'),
(350, 350, 1, NULL, NULL, 1, '2020-01-25 15:37:16', '2020-01-25 15:37:16', '85b2b300-e199-42c7-9223-50358062e5c1'),
(351, 351, 1, NULL, NULL, 1, '2020-01-25 15:37:17', '2020-01-25 15:37:17', 'b01bb5d4-0fe9-4613-a980-7c4de5c553b8'),
(352, 352, 1, NULL, NULL, 1, '2020-01-25 15:37:17', '2020-01-25 15:37:17', 'a2d71676-1c5f-4b67-9e72-a12ed661703d'),
(353, 353, 1, NULL, NULL, 1, '2020-01-25 15:37:17', '2020-01-25 15:37:17', '361a4973-f776-4a96-9bcf-2d8ce5467acd'),
(354, 354, 1, 'style-guide', 'style-guide', 1, '2020-01-25 15:38:16', '2020-01-25 15:38:16', '3378a9bf-f9b2-439a-a48d-f7fdfc6b667b'),
(355, 355, 1, NULL, NULL, 1, '2020-01-25 15:38:16', '2020-01-25 15:38:16', 'e8a24ae0-c73f-41f2-83d2-9a36663b40bc'),
(356, 356, 1, NULL, NULL, 1, '2020-01-25 15:38:16', '2020-01-25 15:38:16', 'd07b585a-8b3c-4ae3-bd5c-d07bc7531d94'),
(357, 357, 1, NULL, NULL, 1, '2020-01-25 15:38:16', '2020-01-25 15:38:16', '88b01a8c-a147-432a-9369-fbfa0e9e16de'),
(358, 358, 1, NULL, NULL, 1, '2020-01-25 15:38:16', '2020-01-25 15:38:16', '47c7a3e2-ea0f-4666-b6b4-4ff570b4b613'),
(359, 359, 1, NULL, NULL, 1, '2020-01-25 15:38:16', '2020-01-25 15:38:16', '51b1992e-98d6-4ca4-9ef5-0fc5cd46e9bd'),
(360, 360, 1, NULL, NULL, 1, '2020-01-25 15:38:16', '2020-01-25 15:38:16', '3fd1709c-93bc-449c-b907-3bfdc345f5fb'),
(361, 361, 1, 'style-guide', 'style-guide', 1, '2020-01-25 15:42:22', '2020-01-25 15:42:22', '29b9064d-7721-434a-b641-837f04a2ef0d'),
(362, 362, 1, NULL, NULL, 1, '2020-01-25 15:42:22', '2020-01-25 15:42:22', '4cf4b393-abbb-4bc6-a67c-0185575a11f1'),
(363, 363, 1, NULL, NULL, 1, '2020-01-25 15:42:22', '2020-01-25 15:42:22', 'ea474891-723e-4b79-a746-8a074de33f29'),
(364, 364, 1, NULL, NULL, 1, '2020-01-25 15:42:22', '2020-01-25 15:42:22', 'd7f98015-33ce-42af-9799-9174b5a7720a'),
(365, 365, 1, NULL, NULL, 1, '2020-01-25 15:42:22', '2020-01-25 15:42:22', '43d129de-d495-41d5-9109-641aaef10936'),
(366, 366, 1, NULL, NULL, 1, '2020-01-25 15:42:22', '2020-01-25 15:42:22', '7841e266-9675-4757-91ab-6ecfa644a94a'),
(367, 367, 1, NULL, NULL, 1, '2020-01-25 15:42:22', '2020-01-25 15:42:22', 'd7bf577e-3426-46e1-916f-e658a06e13b1'),
(368, 368, 1, 'style-guide', 'style-guide', 1, '2020-01-25 15:47:31', '2020-01-25 15:47:31', '6b242ecf-2015-41dc-8d5e-278074ee8f8f'),
(369, 369, 1, NULL, NULL, 1, '2020-01-25 15:47:31', '2020-01-25 15:47:31', '216297d1-08b4-4421-a14f-d71f762cb03e'),
(370, 370, 1, NULL, NULL, 1, '2020-01-25 15:47:31', '2020-01-25 15:47:31', 'ae1a7b3a-5b42-41c7-afeb-400cb5ed833c'),
(371, 371, 1, NULL, NULL, 1, '2020-01-25 15:47:31', '2020-01-25 15:47:31', '4b04cf11-6b81-4f75-9fa5-97dcd63ec94e'),
(372, 372, 1, NULL, NULL, 1, '2020-01-25 15:47:31', '2020-01-25 15:47:31', '2c1bae33-d785-435d-9507-d70814c9519a'),
(373, 373, 1, NULL, NULL, 1, '2020-01-25 15:47:31', '2020-01-25 15:47:31', '5166786c-c051-4972-afad-3224e1103161'),
(374, 374, 1, NULL, NULL, 1, '2020-01-25 15:47:31', '2020-01-25 15:47:31', '9a34a899-0a9f-4486-90f8-2795f9a1dcbe'),
(375, 375, 1, 'style-guide', 'style-guide', 1, '2020-01-25 15:50:28', '2020-01-25 15:50:28', 'b604da67-1b80-48c4-8557-3083ad28435d'),
(376, 376, 1, NULL, NULL, 1, '2020-01-25 15:50:28', '2020-01-25 15:50:28', 'd49517ee-a95f-442c-a8aa-867bb7202e8b'),
(377, 377, 1, NULL, NULL, 1, '2020-01-25 15:50:28', '2020-01-25 15:50:28', 'c8a3baac-cbce-4ce0-9aa7-8e16da897557'),
(378, 378, 1, NULL, NULL, 1, '2020-01-25 15:50:28', '2020-01-25 15:50:28', '36e41189-e401-4b8f-8d76-8aa4a6f03551'),
(379, 379, 1, NULL, NULL, 1, '2020-01-25 15:50:28', '2020-01-25 15:50:28', '7f08c16a-fa35-4f7c-92a7-a5c80d94bf1c'),
(380, 380, 1, NULL, NULL, 1, '2020-01-25 15:50:28', '2020-01-25 15:50:28', '7bf0f240-1abe-40a5-a78b-26a3fc147772'),
(381, 381, 1, NULL, NULL, 1, '2020-01-25 15:50:28', '2020-01-25 15:50:28', '65557cf0-01f0-4e36-b3fe-26976b5d1696'),
(382, 382, 1, NULL, NULL, 1, '2020-01-25 15:53:23', '2020-01-25 15:53:23', '33500704-3ca5-4f0f-9720-7cb3fe569fc9'),
(383, 383, 1, NULL, NULL, 1, '2020-01-25 15:54:58', '2020-01-25 15:54:58', '9398d57c-be8e-43c9-9f37-b2e603efe577'),
(384, 384, 1, 'style-guide', 'style-guide', 1, '2020-01-25 15:54:58', '2020-01-25 15:54:58', '5b13d157-1066-4772-8e35-f66df0bbefd8'),
(385, 385, 1, NULL, NULL, 1, '2020-01-25 15:54:59', '2020-01-25 15:54:59', '1ba7688a-3e33-4633-a748-7829fd1688d6'),
(386, 386, 1, NULL, NULL, 1, '2020-01-25 15:54:59', '2020-01-25 15:54:59', 'c453cbc7-f76f-47f2-8a20-c87820e50825'),
(387, 387, 1, NULL, NULL, 1, '2020-01-25 15:54:59', '2020-01-25 15:54:59', 'e18cf193-6d05-4af4-953e-70a4cd23564a'),
(388, 388, 1, NULL, NULL, 1, '2020-01-25 15:54:59', '2020-01-25 15:54:59', '796f3b58-b207-47fb-85c5-3c175e4889cc'),
(389, 389, 1, NULL, NULL, 1, '2020-01-25 15:54:59', '2020-01-25 15:54:59', 'f247f424-c44f-4178-b152-30e2ef62121c'),
(390, 390, 1, NULL, NULL, 1, '2020-01-25 15:54:59', '2020-01-25 15:54:59', 'ea206212-576c-46fd-a042-d0eef9d433a6'),
(391, 391, 1, NULL, NULL, 1, '2020-01-25 15:54:59', '2020-01-25 15:54:59', '607e4db2-3ce2-4fb8-a7c7-cb6bebc23e0c'),
(392, 392, 1, 'style-guide', 'style-guide', 1, '2020-01-25 15:57:39', '2020-01-25 15:57:39', 'e5ab7a77-6b22-4e60-a9a4-211dfe34e9c3'),
(393, 393, 1, NULL, NULL, 1, '2020-01-25 15:57:39', '2020-01-25 15:57:39', 'a6c483fd-33c1-4caf-95d5-2ba4de2cc5c0'),
(394, 394, 1, NULL, NULL, 1, '2020-01-25 15:57:39', '2020-01-25 15:57:39', '7a7c12fd-036c-4c12-9395-4ae7004e9789'),
(395, 395, 1, NULL, NULL, 1, '2020-01-25 15:57:39', '2020-01-25 15:57:39', '2222a4c3-b007-4ee5-a6c3-c1477f3edadf'),
(396, 396, 1, NULL, NULL, 1, '2020-01-25 15:57:40', '2020-01-25 15:57:40', '2cc660b7-9943-42ac-a33c-30d55c719ad1'),
(397, 397, 1, NULL, NULL, 1, '2020-01-25 15:57:40', '2020-01-25 15:57:40', 'c982c81a-436c-410f-ba0b-f606abffc2b2'),
(398, 398, 1, NULL, NULL, 1, '2020-01-25 15:57:40', '2020-01-25 15:57:40', '739825b1-db0c-4279-a080-1010eb92e3be'),
(399, 399, 1, NULL, NULL, 1, '2020-01-25 15:57:40', '2020-01-25 15:57:40', '4d6b77ab-a44c-4af9-a181-7bd81960846f'),
(400, 400, 1, 'style-guide', 'style-guide', 1, '2020-01-25 16:13:18', '2020-01-25 16:13:18', 'd01e8701-2c41-4879-b6dc-ca76c8f80dc3'),
(401, 401, 1, NULL, NULL, 1, '2020-01-25 16:13:18', '2020-01-25 16:13:18', '71c53684-bdc7-4701-bce8-e5c206b499c5'),
(402, 402, 1, NULL, NULL, 1, '2020-01-25 16:13:18', '2020-01-25 16:13:18', 'da494122-28bc-4760-aeab-36d71275b3d8'),
(403, 403, 1, NULL, NULL, 1, '2020-01-25 16:13:19', '2020-01-25 16:13:19', '6eb63e14-384f-4361-968c-8e61ddf912df'),
(404, 404, 1, NULL, NULL, 1, '2020-01-25 16:13:19', '2020-01-25 16:13:19', 'eaedf8cd-52d9-4a64-a582-5f242ac683d3'),
(405, 405, 1, NULL, NULL, 1, '2020-01-25 16:13:19', '2020-01-25 16:13:19', 'de70a6e1-3065-46c2-9604-6f54cc50a4c5'),
(406, 406, 1, NULL, NULL, 1, '2020-01-25 16:13:19', '2020-01-25 16:13:19', '04c180d8-499e-454e-9edc-dc6f5eec97d6'),
(407, 407, 1, NULL, NULL, 1, '2020-01-25 16:13:19', '2020-01-25 16:13:19', '7735cc97-ff1e-4095-a23c-96ac890da6f1'),
(408, 408, 1, 'style-guide', 'style-guide', 1, '2020-01-25 16:13:37', '2020-01-25 16:13:37', 'ddf6fd09-d498-431e-8acb-ef1dbcc1a166'),
(409, 409, 1, NULL, NULL, 1, '2020-01-25 16:13:37', '2020-01-25 16:13:37', '10716e48-1e97-426b-84a3-eab1277f9170'),
(410, 410, 1, NULL, NULL, 1, '2020-01-25 16:13:37', '2020-01-25 16:13:37', 'b542e662-7f03-4632-8944-8ba697dd1d39'),
(411, 411, 1, NULL, NULL, 1, '2020-01-25 16:13:37', '2020-01-25 16:13:37', '8890ede8-d86e-49fe-b419-ed032ff9e127'),
(412, 412, 1, NULL, NULL, 1, '2020-01-25 16:13:37', '2020-01-25 16:13:37', 'ae10c8b4-fc97-4fa2-926f-0181a6af258a'),
(413, 413, 1, NULL, NULL, 1, '2020-01-25 16:13:37', '2020-01-25 16:13:37', '2594b20b-ec7c-4071-90ac-229e1706547b'),
(414, 414, 1, NULL, NULL, 1, '2020-01-25 16:13:37', '2020-01-25 16:13:37', 'fd867f68-00fa-45fa-9a8d-777955889eb6'),
(415, 415, 1, NULL, NULL, 1, '2020-01-25 16:13:37', '2020-01-25 16:13:37', 'faa0ae6c-c34d-45d7-bcd6-8cfee311cf6d'),
(416, 416, 1, 'style-guide', 'style-guide', 1, '2020-01-25 16:15:58', '2020-01-25 16:15:58', '1e78592e-7c2a-4a89-b99d-2a35f5dfedf5'),
(417, 417, 1, NULL, NULL, 1, '2020-01-25 16:15:58', '2020-01-25 16:15:58', 'd131cfbc-47ab-4540-a73b-fc588b43e28b'),
(418, 418, 1, NULL, NULL, 1, '2020-01-25 16:15:58', '2020-01-25 16:15:58', '72c5b28a-34a4-4267-a2c8-c920f6137438'),
(419, 419, 1, NULL, NULL, 1, '2020-01-25 16:15:58', '2020-01-25 16:15:58', 'da5d4708-8c44-446c-a010-73bdfb81ab07'),
(420, 420, 1, NULL, NULL, 1, '2020-01-25 16:15:58', '2020-01-25 16:15:58', 'f133e1ba-7d62-46ea-8a0e-8e95c2badb4c'),
(421, 421, 1, NULL, NULL, 1, '2020-01-25 16:15:58', '2020-01-25 16:15:58', '1c20bc61-1134-4eda-9f7d-a04b6afc28be'),
(422, 422, 1, NULL, NULL, 1, '2020-01-25 16:15:58', '2020-01-25 16:15:58', 'f8b09808-5746-4720-b0b7-bf1581023ab4'),
(423, 423, 1, NULL, NULL, 1, '2020-01-25 16:15:58', '2020-01-25 16:15:58', '9ee4b3dc-5b6f-4994-a78d-1ed086abe1f1'),
(424, 424, 1, 'style-guide', 'style-guide', 1, '2020-01-25 16:16:35', '2020-01-25 16:16:35', '53e4bde6-9c2b-43b7-ac1b-d35851912de6'),
(425, 425, 1, NULL, NULL, 1, '2020-01-25 16:16:35', '2020-01-25 16:16:35', 'd3f7b59b-150f-4683-95d8-e51acd6cd99a'),
(426, 426, 1, NULL, NULL, 1, '2020-01-25 16:16:35', '2020-01-25 16:16:35', '240fcde2-2db7-4b66-adc9-70208b479b9b'),
(427, 427, 1, NULL, NULL, 1, '2020-01-25 16:16:35', '2020-01-25 16:16:35', '21d1ce41-0dd9-4847-9f1b-70ef314792dd'),
(428, 428, 1, NULL, NULL, 1, '2020-01-25 16:16:35', '2020-01-25 16:16:35', '80259759-56e5-4e7a-b1c8-b6b709863412'),
(429, 429, 1, NULL, NULL, 1, '2020-01-25 16:16:35', '2020-01-25 16:16:35', '69ceebff-000a-413d-942e-b7e1a2c83360'),
(430, 430, 1, NULL, NULL, 1, '2020-01-25 16:16:35', '2020-01-25 16:16:35', '853d090c-233e-488f-bd00-48a30d2ebc6b'),
(431, 431, 1, NULL, NULL, 1, '2020-01-25 16:16:35', '2020-01-25 16:16:35', '8ce650dc-451a-4c06-96d5-039028414631'),
(432, 432, 1, NULL, NULL, 1, '2020-01-25 16:30:45', '2020-01-25 16:30:45', 'f94fad22-4c45-4b8e-961d-cd19483df02d'),
(433, 433, 1, NULL, NULL, 1, '2020-01-25 16:30:45', '2020-01-25 16:30:45', '6799557c-4fa3-4388-8128-0ee8ed848b9a'),
(434, 434, 1, NULL, NULL, 1, '2020-01-25 16:30:45', '2020-01-25 16:30:45', '8e39765f-a24d-41ab-8bb8-6136d1d12082'),
(435, 435, 1, 'support-groups', 'support-groups', 1, '2020-01-25 16:30:46', '2020-01-25 16:30:46', 'fda9e625-e738-4f90-a3b7-5c9dedf1be63'),
(436, 436, 1, NULL, NULL, 1, '2020-01-25 16:30:46', '2020-01-25 16:30:46', '53b0f0ce-2a16-452e-9f95-b49463145ad4'),
(437, 437, 1, NULL, NULL, 1, '2020-01-25 16:30:46', '2020-01-25 16:30:46', '182867e9-a63a-406d-b508-ab881a4a556d'),
(438, 438, 1, NULL, NULL, 1, '2020-01-25 16:30:46', '2020-01-25 16:30:46', 'ce49461e-7477-4fb1-b1b8-ceee55538cb4'),
(439, 439, 1, 'support-groups', 'support-groups', 1, '2020-01-25 16:31:35', '2020-01-25 16:31:35', '37d25177-28c7-4f0c-9d66-2b26684c4fc8'),
(440, 440, 1, NULL, NULL, 1, '2020-01-25 16:31:35', '2020-01-25 16:31:35', '004d32cb-06bf-4ff6-a715-58d039903c86'),
(441, 441, 1, NULL, NULL, 1, '2020-01-25 16:31:35', '2020-01-25 16:31:35', '736f2619-fb4e-488f-909f-56bbe874f7ce'),
(442, 442, 1, NULL, NULL, 1, '2020-01-25 16:31:35', '2020-01-25 16:31:35', '16c3d057-b30d-402b-87d7-e63877f4372b'),
(443, 443, 1, 'support-groups', 'support-groups', 1, '2020-01-25 16:41:05', '2020-01-25 16:41:05', 'e1ce31f0-082a-41ff-a909-4bf1a1958acf'),
(444, 444, 1, NULL, NULL, 1, '2020-01-25 16:41:05', '2020-01-25 16:41:05', '5cd72a4d-c3bd-419e-837c-c255fbecf5cd'),
(445, 445, 1, NULL, NULL, 1, '2020-01-25 16:41:05', '2020-01-25 16:41:05', '98b5f427-a269-4837-89e7-3a53c81b1666'),
(446, 446, 1, NULL, NULL, 1, '2020-01-25 16:41:05', '2020-01-25 16:41:05', 'bfcdc469-c375-486e-a6a4-68ce11c53459'),
(447, 447, 1, '404-page', '404-page', 1, '2020-01-25 19:58:00', '2020-01-25 19:58:00', '19b66394-4d97-4ecb-a084-b032ef8332d5');
INSERT INTO `craft_elements_sites` (`id`, `elementId`, `siteId`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(448, 448, 1, '404-page', '404-page', 1, '2020-01-25 19:59:49', '2020-01-25 19:59:49', '508d78e1-a0ba-4186-9a23-654ce02e0c6b'),
(449, 449, 1, '404-page', '404-page', 1, '2020-01-25 20:02:17', '2020-01-25 20:02:17', '51c6766f-c9f4-4c96-ad0c-069c24f1b1de'),
(450, 450, 1, '404-page', '404-page', 1, '2020-01-25 20:03:29', '2020-01-25 20:03:29', '136d8e8d-0bd7-47cc-9269-6e7dab648685'),
(451, 451, 1, 'family-therapy', 'family-therapy', 1, '2020-01-25 20:06:11', '2020-01-25 20:06:11', 'c159be7f-3bc2-4bda-8875-27bf301e370b');

-- --------------------------------------------------------

--
-- Table structure for table `craft_entries`
--

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
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_entries`
--

INSERT INTO `craft_entries` (`id`, `sectionId`, `parentId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `deletedWithEntryType`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2019-11-23 17:00:31', '2019-11-23 17:00:31', 'f70fe51d-0478-44e3-a4f4-7bc58928c366'),
(3, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2019-11-23 17:00:31', '2019-11-23 17:00:31', 'e1727af3-81c3-4f4d-9656-9d21951212c5'),
(4, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, 1, '2019-11-23 17:07:16', '2019-11-23 17:07:16', 'b3d75fc1-1780-4e97-b6fc-9800b3bf189b'),
(5, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-11-23 17:07:16', '2019-11-23 17:07:16', 'f36ed60b-cbb4-43e4-a336-aba5c6074d11'),
(6, 3, NULL, 3, NULL, '2019-11-23 17:07:00', NULL, 1, '2019-11-23 17:07:59', '2019-11-23 17:07:59', 'f02ec9fe-23ad-4e7b-9116-abb9d3f9b1f1'),
(7, 3, NULL, 3, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-11-23 17:07:59', '2019-11-23 17:07:59', 'e0a5e615-ab10-448a-a59d-e04a55a28f19'),
(11, 4, NULL, 4, NULL, '2019-11-23 18:53:00', NULL, NULL, '2019-11-23 18:53:39', '2019-11-23 18:53:39', '9c4d4edc-5d99-4c46-8fed-383b29fdfcd1'),
(12, 4, NULL, 4, NULL, '2019-11-23 18:53:00', NULL, NULL, '2019-11-23 18:53:39', '2019-11-23 18:53:39', '01dc7659-5016-4fae-a09a-0509af051418'),
(13, 4, NULL, 4, NULL, '2019-11-23 18:53:00', NULL, NULL, '2019-11-23 18:54:05', '2019-11-23 18:54:05', '2ca10b8c-09d9-4660-869c-366afe1ee71a'),
(14, 4, NULL, 4, NULL, '2019-11-23 18:53:00', NULL, NULL, '2019-11-23 18:54:34', '2019-11-23 18:54:34', '273da59c-950b-40af-9dfa-8eb3913fde9b'),
(15, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2019-11-23 20:21:15', '2019-11-23 20:21:15', '58a78778-2b4a-46e8-af72-375ce49d5625'),
(20, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2019-11-23 20:25:01', '2019-11-23 20:25:01', '9e1622f4-d269-431a-8bae-b05c215a7447'),
(23, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2019-11-23 20:54:33', '2019-11-23 20:54:33', '63f70912-78d6-46d2-a06c-6c72842f7b32'),
(26, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-11-23 22:38:17', '2019-11-23 22:38:17', 'cecc6960-d0cb-436d-88ae-a18bab84b9cf'),
(27, 3, NULL, 3, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-11-23 22:38:24', '2019-11-23 22:38:24', 'a48d7ef4-2239-40bb-8e7e-61f3b3ae0006'),
(28, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-11-23 22:39:19', '2019-11-23 22:39:19', 'a8a520b2-5dda-4a9b-b496-88ef84b065a1'),
(29, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-11-23 22:49:56', '2019-11-23 22:49:56', '5562c403-bcad-45c1-95c3-3061496c8815'),
(30, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-11-23 22:51:44', '2019-11-23 22:51:44', '6ed01f01-814b-4613-9317-719d503a4be8'),
(31, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-11-23 22:51:59', '2019-11-23 22:51:59', '20a4b972-77fe-4a70-9540-2c7db921493c'),
(32, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-11-23 22:53:05', '2019-11-23 22:53:05', '9e64ea12-ea9f-44af-8688-3f7654729ca7'),
(33, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-11-23 22:53:15', '2019-11-23 22:53:15', '9e9d6935-72f8-4f29-a54b-3252cc1b5df7'),
(34, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2019-12-01 00:04:11', '2019-12-01 00:04:11', '2a13720f-56f0-4ee8-93a9-e3f6b00d7112'),
(38, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2019-12-01 00:09:15', '2019-12-01 00:09:15', '717ac43a-f46e-45b4-bcee-857e58c167db'),
(42, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2019-12-01 00:13:23', '2019-12-01 00:13:23', 'f248a411-20d2-410d-9c6c-b51a39e09bd6'),
(46, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2019-12-01 00:14:59', '2019-12-01 00:14:59', 'c15a4167-0834-4d06-9e3b-595fb527d8ca'),
(50, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-01 00:44:38', '2019-12-01 00:44:38', '8a6bfc72-ff3e-4236-9d4b-1ab13a2a1fc8'),
(51, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-01 00:44:38', '2019-12-01 00:44:38', 'c48aeae4-8caf-417e-b089-413223fd5812'),
(52, 3, NULL, 3, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-01 00:44:49', '2019-12-01 00:44:49', 'b5cf24eb-5117-4c8c-a095-08825ea9e0e7'),
(54, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-01 00:48:14', '2019-12-01 00:48:14', 'cf87e8e4-9593-440f-b594-00706cdc3014'),
(56, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-01 00:52:47', '2019-12-01 00:52:47', 'd8817a5c-0997-4f91-a70c-734fb8efbae0'),
(58, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-01 00:52:48', '2019-12-01 00:52:48', 'd24ab335-355b-4270-98b8-6f629bb60925'),
(60, 3, NULL, 3, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-01 00:52:58', '2019-12-01 00:52:58', '79a88f51-704e-4e82-aff2-8ddfd7f807a7'),
(61, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2019-12-01 19:11:21', '2019-12-01 19:11:21', 'b4f9b53e-1c6e-4341-8cac-3fc72b97841e'),
(65, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2019-12-04 03:38:47', '2019-12-04 03:38:47', '6faa5d77-d20e-4b1f-9087-18f649b1919f'),
(72, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-04 20:03:31', '2019-12-04 20:03:31', 'd6f444ae-7fe9-419f-b869-89bc2001acee'),
(74, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2019-12-04 20:09:38', '2019-12-04 20:09:38', '41e8ca82-3aff-4cb3-99cc-834c61ab25b5'),
(78, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2019-12-04 20:10:15', '2019-12-04 20:10:15', 'd5cf3d04-868f-4e9d-a684-7fb51e525384'),
(82, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-04 20:12:28', '2019-12-04 20:12:28', 'daf112f0-c2f9-4ab0-813e-659f4d69f713'),
(84, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-04 20:12:54', '2019-12-04 20:12:54', '5ee9afc2-e256-4a1b-a56d-f9dc98ed7f4c'),
(87, 3, NULL, 3, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-04 20:14:55', '2019-12-04 20:14:55', 'c790b1ab-4844-448d-8c87-5f7d7a6ae77c'),
(89, 3, NULL, 3, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-04 20:15:27', '2019-12-04 20:15:27', 'b5458c82-3776-447d-9dd8-954acf7b1ee3'),
(91, 3, NULL, 3, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-04 20:15:40', '2019-12-04 20:15:40', '58e4141f-6fed-44a8-a222-b98516922926'),
(93, 3, NULL, 3, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-04 20:15:54', '2019-12-04 20:15:54', '2bdaec5a-1af3-4c92-863b-dbfe21b2cce2'),
(95, 3, NULL, 3, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-04 20:16:00', '2019-12-04 20:16:00', '24b18f51-73c9-4fe9-8ffc-a5c4a4728578'),
(97, 3, NULL, 3, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-04 20:16:10', '2019-12-04 20:16:10', '4f96d549-086b-4192-93a2-97cb2238b33d'),
(99, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2019-12-04 20:18:01', '2019-12-04 20:18:01', 'bbfa2891-d038-4687-9496-5be468bb5d17'),
(103, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2019-12-04 20:18:57', '2019-12-04 20:18:57', 'e3b815e6-9854-4274-bc6b-a73652647e55'),
(108, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2019-12-04 20:28:08', '2019-12-04 20:28:08', 'c4c13232-716c-4406-a4c4-55a38366663a'),
(112, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2019-12-04 20:30:35', '2019-12-04 20:30:35', 'aaebe3c8-038a-47a2-9dae-871d20d2abe1'),
(116, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2019-12-04 20:45:54', '2019-12-04 20:45:54', '846f7e42-c5d6-42bb-8aec-f70d2f3020f6'),
(121, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2019-12-04 20:50:15', '2019-12-04 20:50:15', '80ec57a0-0386-45cf-b92c-37aee3f3dc45'),
(126, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2019-12-04 21:00:19', '2019-12-04 21:00:19', '2c0cd877-e298-4eb8-9e1b-60f909689c11'),
(131, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2019-12-04 21:08:49', '2019-12-04 21:08:49', 'b2211f10-3817-4977-9b56-348ed94654ff'),
(136, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-04 21:17:12', '2019-12-04 21:17:12', '1047da11-3956-4d56-8741-461449755304'),
(138, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-04 21:17:49', '2019-12-04 21:17:49', 'e870cc12-48a6-464a-a73b-e1f0586fbcd5'),
(141, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-04 21:20:50', '2019-12-04 21:20:50', '059d4704-1b91-4715-94bd-32f80b81491a'),
(144, 3, NULL, 3, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-04 21:25:10', '2019-12-04 21:25:10', 'abd7a636-2e5a-4160-83cb-67fe91987703'),
(146, 3, NULL, 3, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-04 21:34:09', '2019-12-04 21:34:09', 'f55f9d4f-1c62-4a99-8fd0-142dc9178f11'),
(148, 3, NULL, 3, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-04 21:34:17', '2019-12-04 21:34:17', '626b6296-8337-4e12-949b-57895a828693'),
(150, 3, NULL, 3, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-04 21:34:34', '2019-12-04 21:34:34', '3f1e7c9b-390f-4e8c-91a1-aa481d71f78c'),
(152, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-05 00:37:13', '2019-12-05 00:37:13', 'e0f3548c-cefc-4523-9028-fbfdf700d3a7'),
(154, 3, NULL, 3, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-05 00:37:17', '2019-12-05 00:37:17', '6193e8c1-8116-45f6-8403-21e005b9b040'),
(157, 3, NULL, 3, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-05 00:39:38', '2019-12-05 00:39:38', 'd2b685d2-c0ae-485c-a0d4-10198060f34a'),
(159, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-12-05 03:41:52', '2019-12-05 03:41:52', '816e2381-9a7b-4ed1-aa50-e0f18e07f275'),
(162, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2019-12-11 01:37:59', '2019-12-11 01:37:59', 'd6567177-7cc4-4760-9ac0-a1b919d18dc7'),
(166, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2019-12-11 01:38:00', '2019-12-11 01:38:00', '651c854a-5044-4690-a6fd-0e549325a105'),
(174, 5, NULL, 5, 1, '2020-01-16 02:07:00', NULL, NULL, '2020-01-16 02:07:27', '2020-01-16 02:07:27', '1de6e59e-16ab-4684-b198-7bf97d8d809c'),
(176, 5, NULL, 5, 1, '2020-01-16 02:07:00', NULL, NULL, '2020-01-16 02:07:27', '2020-01-16 02:07:27', '0e5af1de-61cd-4301-9a8f-6dfb60851191'),
(179, 5, NULL, 5, 1, '2020-01-16 02:07:00', NULL, NULL, '2020-01-16 02:07:53', '2020-01-16 02:07:53', 'af4c3877-fbe4-4271-ba6e-f173622c343d'),
(180, 5, NULL, 5, 1, '2020-01-16 02:07:00', NULL, NULL, '2020-01-16 02:07:53', '2020-01-16 02:07:53', 'e5389818-105f-4356-8d67-03781b7b33bd'),
(182, 5, NULL, 5, 1, '2020-01-16 02:07:00', NULL, NULL, '2020-01-16 02:08:15', '2020-01-16 02:08:15', 'a1df34d6-c002-4716-9ec6-f3ac5c433005'),
(183, 5, NULL, 5, 1, '2020-01-16 02:07:00', NULL, NULL, '2020-01-16 02:08:15', '2020-01-16 02:08:15', '700d1995-e5b1-4b90-9eb7-08f93a9ac3ac'),
(185, 5, NULL, 5, 1, '2020-01-16 02:08:00', NULL, NULL, '2020-01-16 02:08:27', '2020-01-16 02:08:27', '4f36bd94-41ae-4f83-9097-a2fdfe7bd4b6'),
(186, 5, NULL, 5, 1, '2020-01-16 02:08:00', NULL, NULL, '2020-01-16 02:08:27', '2020-01-16 02:08:27', '80a45b8d-b5a0-4195-8b87-fdb44b206ac7'),
(188, 5, NULL, 5, 1, '2020-01-16 02:08:00', NULL, NULL, '2020-01-16 02:08:37', '2020-01-16 02:08:37', 'b745d1ac-a611-4362-ae53-90c32cc3ca33'),
(189, 5, NULL, 5, 1, '2020-01-16 02:08:00', NULL, NULL, '2020-01-16 02:08:37', '2020-01-16 02:08:37', '719e2289-b0d9-4770-957f-da7bd0f2e012'),
(190, 5, NULL, 5, 1, '2020-01-16 02:09:00', NULL, NULL, '2020-01-16 02:09:02', '2020-01-16 02:09:02', 'ca3650c8-b21a-4f9a-8be6-0f250f5ea4b6'),
(191, 5, NULL, 5, 1, '2020-01-16 02:07:00', NULL, NULL, '2020-01-16 02:10:16', '2020-01-16 02:10:16', '9665f996-bc8e-4ac9-b72a-6c6ffb7a00aa'),
(193, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, NULL, '2020-01-16 02:10:25', '2020-01-16 02:10:25', '89c57f99-592a-4fbb-9357-e967b1557e13'),
(196, 5, NULL, 5, 1, '2020-01-16 02:11:00', NULL, NULL, '2020-01-16 02:12:28', '2020-01-16 02:12:28', '6c6c8cb6-f836-4b8c-9e22-625613efb04a'),
(197, 5, NULL, 5, 1, '2020-01-16 02:11:00', NULL, NULL, '2020-01-16 02:12:28', '2020-01-16 02:12:28', 'ad875812-4123-4ce0-9a23-e9a77b1a0ebd'),
(199, 5, NULL, 5, 1, '2020-01-18 01:01:00', NULL, NULL, '2020-01-18 01:02:32', '2020-01-18 01:02:32', 'a1a2d949-c1cf-4f88-919f-7c67ef6b89a2'),
(200, 5, NULL, 5, 1, '2020-01-18 01:01:00', NULL, NULL, '2020-01-18 01:02:32', '2020-01-18 01:02:32', '38418b37-18d7-4b5e-90c5-8bd0b80da592'),
(202, 5, NULL, 5, 1, '2020-01-18 01:02:00', NULL, NULL, '2020-01-18 01:03:04', '2020-01-18 01:03:04', '3f179d19-0cef-4964-82a1-5a2af9320750'),
(203, 5, NULL, 5, 1, '2020-01-18 01:02:00', NULL, NULL, '2020-01-18 01:03:04', '2020-01-18 01:03:04', '3b852514-b831-4e22-a51f-f504ec18164c'),
(205, 5, NULL, 5, 1, '2020-01-18 01:03:00', NULL, NULL, '2020-01-18 01:03:12', '2020-01-18 01:03:12', '22e13425-2baa-43eb-b8f7-22502c33f7ca'),
(206, 5, NULL, 5, 1, '2020-01-18 01:03:00', NULL, NULL, '2020-01-18 01:03:12', '2020-01-18 01:03:12', 'f226f4bb-5c64-4b82-a5ff-9271fc200b19'),
(208, 5, NULL, 5, 1, '2020-01-18 01:03:00', NULL, NULL, '2020-01-18 01:03:25', '2020-01-18 01:03:25', '9c8be645-61c1-4621-8577-c67a85618514'),
(209, 5, NULL, 5, 1, '2020-01-18 01:03:00', NULL, NULL, '2020-01-18 01:03:26', '2020-01-18 01:03:26', '24572bb0-d9bb-4db3-9443-57e5f0310fba'),
(211, 5, NULL, 5, 1, '2020-01-18 01:03:00', NULL, NULL, '2020-01-18 01:03:38', '2020-01-18 01:03:38', 'a1840d30-695f-42f8-8cca-d394b12e9e15'),
(212, 5, NULL, 5, 1, '2020-01-18 01:03:00', NULL, NULL, '2020-01-18 01:03:38', '2020-01-18 01:03:38', '717186c9-b0dd-4a23-8b17-56ccdcee2baa'),
(214, 5, NULL, 5, 1, '2020-01-18 01:03:00', NULL, NULL, '2020-01-18 01:03:54', '2020-01-18 01:03:54', '4d49761e-abce-46a8-b063-0abbbc583612'),
(215, 5, NULL, 5, 1, '2020-01-18 01:03:00', NULL, NULL, '2020-01-18 01:03:54', '2020-01-18 01:03:54', 'd739aa50-7c7b-4221-bf29-5f55a1adc501'),
(217, 5, NULL, 5, 1, '2020-01-18 01:03:00', NULL, NULL, '2020-01-18 01:04:03', '2020-01-18 01:04:03', '8035013b-806c-4c75-bc4b-84567140d924'),
(218, 5, NULL, 5, 1, '2020-01-18 01:03:00', NULL, NULL, '2020-01-18 01:04:03', '2020-01-18 01:04:03', '600f1801-cce4-48b7-a7a3-cc1dccc427a7'),
(220, 5, NULL, 5, 1, '2020-01-18 01:04:00', NULL, NULL, '2020-01-18 01:04:18', '2020-01-18 01:04:18', 'df46e0ce-7dea-4dfa-8f5d-79f264e925c6'),
(221, 5, NULL, 5, 1, '2020-01-18 01:04:00', NULL, NULL, '2020-01-18 01:04:18', '2020-01-18 01:04:18', '1ffb2b8b-6a79-43eb-b24e-84b532a4e4f7'),
(223, 5, NULL, 5, 1, '2020-01-18 01:04:00', NULL, NULL, '2020-01-18 01:04:29', '2020-01-18 01:04:29', 'b6c14a9d-bebc-4622-bb98-5e7fd15b90be'),
(224, 5, NULL, 5, 1, '2020-01-18 01:04:00', NULL, NULL, '2020-01-18 01:04:29', '2020-01-18 01:04:29', '36e28ca8-29cf-46b1-abff-1ee43d8fd396'),
(226, 5, NULL, 5, 1, '2020-01-18 01:04:00', NULL, NULL, '2020-01-18 01:04:41', '2020-01-18 01:04:41', 'b16f07a6-9074-4a20-9055-fe74e01ffe1e'),
(227, 5, NULL, 5, 1, '2020-01-18 01:04:00', NULL, NULL, '2020-01-18 01:04:41', '2020-01-18 01:04:41', '77e6cb52-0ccb-482c-8fa9-bf24cd03471e'),
(229, 5, NULL, 5, 1, '2020-01-18 01:04:00', NULL, NULL, '2020-01-18 01:05:16', '2020-01-18 01:05:16', '8ed4ce5d-80ba-4b5c-bb56-fdbbc59b8a7e'),
(230, 5, NULL, 5, 1, '2020-01-18 01:04:00', NULL, NULL, '2020-01-18 01:05:16', '2020-01-18 01:05:16', '7e0a1ba8-166f-4df7-bca4-450012b3fc47'),
(232, 5, NULL, 5, 1, '2020-01-18 01:05:00', NULL, NULL, '2020-01-18 01:05:22', '2020-01-18 01:05:22', '46c35751-23d9-47ea-8dbb-44dc93b3b2ab'),
(233, 5, NULL, 5, 1, '2020-01-18 01:05:00', NULL, NULL, '2020-01-18 01:05:22', '2020-01-18 01:05:22', 'b22342a3-4456-4f77-afaa-e4eb7b969053'),
(235, 5, NULL, 5, 1, '2020-01-18 01:05:00', NULL, NULL, '2020-01-18 01:05:35', '2020-01-18 01:05:35', '32ec5455-6f4e-4308-afd1-03eef511f99c'),
(236, 5, NULL, 5, 1, '2020-01-18 01:05:00', NULL, NULL, '2020-01-18 01:05:35', '2020-01-18 01:05:35', 'c3e09042-7bd2-4241-9ad8-da9d90f742c2'),
(238, 5, NULL, 5, 1, '2020-01-18 01:05:00', NULL, NULL, '2020-01-18 01:05:49', '2020-01-18 01:05:49', '6fabca67-2b4c-4b44-9c52-401c8def265f'),
(239, 5, NULL, 5, 1, '2020-01-18 01:05:00', NULL, NULL, '2020-01-18 01:05:49', '2020-01-18 01:05:49', 'e5a6c7a2-22cd-47ae-8f23-6731101c9fe9'),
(241, 5, NULL, 5, 1, '2020-01-18 01:05:00', NULL, NULL, '2020-01-18 01:06:04', '2020-01-18 01:06:04', 'd163d163-6fa2-4684-8767-44ec6b5fc41d'),
(242, 5, NULL, 5, 1, '2020-01-18 01:05:00', NULL, NULL, '2020-01-18 01:06:04', '2020-01-18 01:06:04', '566bfc3b-66ec-4f98-a37e-0cce0a79d999'),
(244, 5, NULL, 5, 1, '2020-01-18 01:06:00', NULL, NULL, '2020-01-18 01:06:18', '2020-01-18 01:06:18', '0855054c-6cb1-4220-b4d5-b4d29277bf2a'),
(245, 5, NULL, 5, 1, '2020-01-18 01:06:00', NULL, NULL, '2020-01-18 01:06:18', '2020-01-18 01:06:18', 'ae99c899-5bd9-4dc3-ac7e-ce48a6e551a8'),
(247, 5, NULL, 5, 1, '2020-01-18 01:06:00', NULL, NULL, '2020-01-18 01:06:29', '2020-01-18 01:06:29', 'f7bb5b94-fa81-4d2e-b617-ce9d85886b36'),
(248, 5, NULL, 5, 1, '2020-01-18 01:06:00', NULL, NULL, '2020-01-18 01:06:29', '2020-01-18 01:06:29', '132e9435-e21d-414b-b28e-4f6376678cd0'),
(250, 5, NULL, 5, 1, '2020-01-18 01:06:00', NULL, NULL, '2020-01-18 01:06:41', '2020-01-18 01:06:41', 'b46c7cdb-9da0-4f83-8e2a-ac3e342a971a'),
(251, 5, NULL, 5, 1, '2020-01-18 01:06:00', NULL, NULL, '2020-01-18 01:06:41', '2020-01-18 01:06:41', '1c33dd0d-4831-4f64-8fe9-8b3729fdacad'),
(253, 5, NULL, 5, 1, '2020-01-18 01:06:00', NULL, NULL, '2020-01-18 01:06:54', '2020-01-18 01:06:54', '718342d4-ea2e-4546-abe6-d87142daaac8'),
(254, 5, NULL, 5, 1, '2020-01-18 01:06:00', NULL, NULL, '2020-01-18 01:06:54', '2020-01-18 01:06:54', '3c1c397c-9fb3-4c4b-978d-c7bdf8978790'),
(256, 5, NULL, 5, 1, '2020-01-18 01:06:00', NULL, NULL, '2020-01-18 01:07:19', '2020-01-18 01:07:19', '1c6629e7-535c-4181-8fcd-5715b6897653'),
(257, 5, NULL, 5, 1, '2020-01-18 01:06:00', NULL, NULL, '2020-01-18 01:07:19', '2020-01-18 01:07:19', '85d37547-06bc-424a-b491-aa2f5232bc61'),
(259, 5, NULL, 5, 1, '2020-01-18 01:07:00', NULL, NULL, '2020-01-18 01:07:40', '2020-01-18 01:07:40', 'bf5217e0-b31f-4d90-b13e-92b921bc827a'),
(260, 5, NULL, 5, 1, '2020-01-18 01:07:00', NULL, NULL, '2020-01-18 01:07:40', '2020-01-18 01:07:40', '471e8461-36f4-482a-be78-61304402eb2a'),
(262, 5, NULL, 5, 1, '2020-01-18 01:07:00', NULL, NULL, '2020-01-18 01:07:44', '2020-01-18 01:07:44', '68615a2a-ef16-4780-9a07-f4b32d3a1af7'),
(263, 5, NULL, 5, 1, '2020-01-18 01:07:00', NULL, NULL, '2020-01-18 01:07:45', '2020-01-18 01:07:45', 'e154a183-40aa-485d-9fca-d004940f0e34'),
(264, 3, NULL, 3, NULL, '2019-11-23 17:07:00', NULL, NULL, '2020-01-19 01:36:31', '2020-01-19 01:36:31', 'c717b4a5-5b93-41d8-8364-2ba19e1d1ff5'),
(267, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2020-01-19 02:06:32', '2020-01-19 02:06:32', '3ffc8555-8724-4124-8906-b20e59026470'),
(271, 6, NULL, 6, NULL, '2020-01-21 01:57:00', NULL, NULL, '2020-01-21 01:57:35', '2020-01-21 01:57:35', '5450769a-e444-47fb-8960-33c3f230d3e6'),
(272, 6, NULL, 6, NULL, '2020-01-21 01:57:00', NULL, NULL, '2020-01-21 01:57:35', '2020-01-21 01:57:35', 'f5df6b80-6d19-41a2-9fde-ba78bb07074d'),
(273, 6, NULL, 6, NULL, '2020-01-21 01:57:00', NULL, NULL, '2020-01-21 01:58:06', '2020-01-21 01:58:06', 'fc8a4470-716d-4aa7-99f5-8b5a1947ee37'),
(275, 6, NULL, 6, NULL, '2020-01-21 01:57:00', NULL, NULL, '2020-01-21 01:58:20', '2020-01-21 01:58:20', 'd02e6823-01cb-447f-8e78-97fabb13d05b'),
(282, 6, NULL, 6, NULL, '2020-01-21 01:57:00', NULL, NULL, '2020-01-21 02:20:06', '2020-01-21 02:20:06', '0b068b40-04b0-4d1a-b119-ecb4c1085f8a'),
(289, 6, NULL, 6, NULL, '2020-01-21 01:57:00', NULL, NULL, '2020-01-21 02:38:10', '2020-01-21 02:38:10', '61909401-d218-4638-bc32-e723818d4069'),
(296, 6, NULL, 6, NULL, '2020-01-21 01:57:00', NULL, NULL, '2020-01-25 14:39:03', '2020-01-25 14:39:03', '3c86a9fb-7852-48d3-8e02-37e8daae5ac9'),
(304, 6, NULL, 6, NULL, '2020-01-21 01:57:00', NULL, NULL, '2020-01-25 14:42:36', '2020-01-25 14:42:36', 'd9580c4d-9ec9-4bbc-980d-f87d3d592809'),
(311, 6, NULL, 6, NULL, '2020-01-21 01:57:00', NULL, NULL, '2020-01-25 14:45:11', '2020-01-25 14:45:11', 'ff8737a6-4cdf-49dd-b164-00ffb3f95028'),
(319, 6, NULL, 6, NULL, '2020-01-21 01:57:00', NULL, NULL, '2020-01-25 14:51:00', '2020-01-25 14:51:00', '74ca87c2-bdec-4791-a7f3-a6c0f53fdb21'),
(340, 6, NULL, 6, NULL, '2020-01-21 01:57:00', NULL, NULL, '2020-01-25 15:35:43', '2020-01-25 15:35:43', '1ec45f44-fbea-471b-ae6a-75077f102f64'),
(347, 6, NULL, 6, NULL, '2020-01-21 01:57:00', NULL, NULL, '2020-01-25 15:37:16', '2020-01-25 15:37:16', 'c23025e9-1870-4084-b700-1397b4694838'),
(354, 6, NULL, 6, NULL, '2020-01-21 01:57:00', NULL, NULL, '2020-01-25 15:38:16', '2020-01-25 15:38:16', 'abf5ea69-66bb-46b9-9d68-66af017b6606'),
(361, 6, NULL, 6, NULL, '2020-01-21 01:57:00', NULL, NULL, '2020-01-25 15:42:22', '2020-01-25 15:42:22', 'ef178075-33b8-4856-9fdd-0ebad4cddfde'),
(368, 6, NULL, 6, NULL, '2020-01-21 01:57:00', NULL, NULL, '2020-01-25 15:47:31', '2020-01-25 15:47:31', '0c4fca51-68b5-4189-860e-291f82557a1a'),
(375, 6, NULL, 6, NULL, '2020-01-21 01:57:00', NULL, NULL, '2020-01-25 15:50:28', '2020-01-25 15:50:28', '6b9f8dc8-220d-4559-97a4-39336afdb3e7'),
(384, 6, NULL, 6, NULL, '2020-01-21 01:57:00', NULL, NULL, '2020-01-25 15:54:58', '2020-01-25 15:54:58', 'd6cdc46b-df77-45af-8199-66f2d5dbc44c'),
(392, 6, NULL, 6, NULL, '2020-01-21 01:57:00', NULL, NULL, '2020-01-25 15:57:39', '2020-01-25 15:57:39', '9d594d04-ced7-4fd3-9421-27b8ed8ffdaa'),
(400, 6, NULL, 6, NULL, '2020-01-21 01:57:00', NULL, NULL, '2020-01-25 16:13:18', '2020-01-25 16:13:18', 'cc9a46d9-4b45-4be7-a169-047d1893e687'),
(408, 6, NULL, 6, NULL, '2020-01-21 01:57:00', NULL, NULL, '2020-01-25 16:13:37', '2020-01-25 16:13:37', 'f48000bd-547b-4648-8268-6282c1cf276a'),
(416, 6, NULL, 6, NULL, '2020-01-21 01:57:00', NULL, NULL, '2020-01-25 16:15:58', '2020-01-25 16:15:58', '2d8f4d25-a20b-4aee-a0e6-b88cc94ca99d'),
(424, 6, NULL, 6, NULL, '2020-01-21 01:57:00', NULL, NULL, '2020-01-25 16:16:35', '2020-01-25 16:16:35', '8b162c31-11f5-400f-948e-651ce792fa76'),
(435, 5, NULL, 5, 1, '2020-01-18 01:03:00', NULL, NULL, '2020-01-25 16:30:46', '2020-01-25 16:30:46', '06acc2d4-2c9d-45de-afd1-67928008b8ea'),
(439, 5, NULL, 5, 1, '2020-01-18 01:03:00', NULL, NULL, '2020-01-25 16:31:35', '2020-01-25 16:31:35', '097c78f5-42f6-4603-bde6-8a60246015fd'),
(443, 5, NULL, 5, 1, '2020-01-18 01:03:00', NULL, NULL, '2020-01-25 16:41:05', '2020-01-25 16:41:05', '7d74a6cb-1324-499d-85ea-23cd217654db'),
(447, 4, NULL, 4, NULL, '2019-11-23 18:53:00', NULL, NULL, '2020-01-25 19:58:00', '2020-01-25 19:58:00', '8aee5323-3ebf-4f6d-b306-4f70db3ba511'),
(448, 4, NULL, 4, NULL, '2019-11-23 18:53:00', NULL, NULL, '2020-01-25 19:59:49', '2020-01-25 19:59:49', 'a69dfa77-e87e-4821-b1ce-368138b22699'),
(449, 4, NULL, 4, NULL, '2019-11-23 18:53:00', NULL, NULL, '2020-01-25 20:02:17', '2020-01-25 20:02:17', '437c4ad5-a89b-4026-ba28-e884dd432c41'),
(450, 4, NULL, 4, NULL, '2019-11-23 18:53:00', NULL, NULL, '2020-01-25 20:03:29', '2020-01-25 20:03:29', '3d535989-d700-46a8-ab44-98ca5fb2518e'),
(451, 5, NULL, 5, 1, '2020-01-18 01:01:00', NULL, NULL, '2020-01-25 20:06:11', '2020-01-25 20:06:11', '8e6fd405-14c3-448b-933e-11bc44e15592');

-- --------------------------------------------------------

--
-- Table structure for table `craft_entrytypes`
--

CREATE TABLE `craft_entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) DEFAULT 'Title',
  `titleFormat` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_entrytypes`
--

INSERT INTO `craft_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleLabel`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 6, 'Home Page', 'homePage', 0, '', '{section.name|raw}', 1, '2019-11-23 17:00:31', '2019-12-11 01:38:00', NULL, '1fb2e564-996e-4a4d-958e-e493f4ce0c82'),
(2, 2, 7, 'About', 'aboutPage', 0, '', '{section.name|raw}', 1, '2019-11-23 17:07:16', '2019-12-05 00:37:13', '2020-01-16 02:10:25', '0cf6242f-209a-49bf-86ed-11401f07107f'),
(3, 3, 8, 'Get In Touch', 'getInvolved', 0, '', '{section.name|raw}', 1, '2019-11-23 17:07:59', '2019-12-05 00:39:38', '2020-01-19 01:36:31', '9f4b8ffa-86f7-4487-b512-dca1c83b17c6'),
(4, 4, 5, '404 Page', 'fourOhFourPage', 0, '', '{section.name|raw}', 1, '2019-11-23 18:53:39', '2020-01-25 20:02:17', NULL, 'eec01ffb-1c83-4168-8f7d-291ec9075903'),
(5, 5, 18, 'Page List', 'pageList', 1, 'Title', '', 1, '2020-01-16 01:56:34', '2020-01-25 16:40:56', NULL, '81f60665-3082-4ce5-b4ae-355d1670ae60'),
(6, 6, 22, 'Style Guide', 'styleGuide', 0, '', '{section.name|raw}', 1, '2020-01-21 01:57:35', '2020-01-21 01:58:06', NULL, '4472b7ff-29a2-4c40-8f91-95a621d0cbe9');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldgroups`
--

CREATE TABLE `craft_fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_fieldgroups`
--

INSERT INTO `craft_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'Common', '2019-11-16 18:40:28', '2019-11-16 18:40:28', '43a12f84-7764-4426-8c01-a05e8c6055c5'),
(3, 'Home', '2019-11-23 17:28:43', '2019-11-23 17:28:43', 'f3888fe6-c608-49b6-9ec5-46b91dd0c97d');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayoutfields`
--

CREATE TABLE `craft_fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_fieldlayoutfields`
--

INSERT INTO `craft_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(12, 2, 6, 1, 0, 1, '2019-11-23 18:24:32', '2019-11-23 18:24:32', '8d97a4b9-d92f-4a27-b168-8f93e6c2d19f'),
(15, 3, 9, 1, 0, 1, '2019-11-23 18:38:20', '2019-11-23 18:38:20', 'cb48fc33-1942-4d6e-9506-45ba0aa76880'),
(88, 7, 40, 2, 0, 2, '2019-12-05 00:37:13', '2019-12-05 00:37:13', 'cfdfb2e0-61f2-4f59-ae41-090534aecfad'),
(89, 7, 40, 10, 0, 3, '2019-12-05 00:37:13', '2019-12-05 00:37:13', 'dde0d9b5-8246-42f6-9ab3-80efc22e08a0'),
(90, 7, 40, 24, 0, 1, '2019-12-05 00:37:13', '2019-12-05 00:37:13', '8ce2081e-2873-4e58-b76e-5be5bcfaa78f'),
(94, 16, 42, 1, 0, 1, '2019-12-05 00:38:20', '2019-12-05 00:38:20', '87e6c4a4-ed54-4518-b05e-aaf95a4d46c2'),
(95, 8, 43, 2, 0, 2, '2019-12-05 00:39:38', '2019-12-05 00:39:38', '441b71a5-c57a-4c8b-9457-ed051d97c157'),
(96, 8, 43, 10, 0, 3, '2019-12-05 00:39:38', '2019-12-05 00:39:38', 'e1c25052-b0a2-4a7b-8320-4005af9d18fb'),
(97, 8, 43, 24, 0, 1, '2019-12-05 00:39:38', '2019-12-05 00:39:38', '438e6059-436d-4a2e-ae89-c31595a4c027'),
(98, 17, 44, 1, 0, 1, '2019-12-07 03:37:04', '2019-12-07 03:37:04', '10b64949-6768-4928-bbdb-6c7267c9253c'),
(99, 4, 45, 1, 0, 1, '2019-12-07 03:37:22', '2019-12-07 03:37:22', 'ad5a07db-cf00-4fbb-9f0a-cc80bf83f93c'),
(100, 6, 46, 24, 0, 1, '2019-12-11 01:38:00', '2019-12-11 01:38:00', '5dadb65f-83e7-44e4-8ccf-52b4def0f7d6'),
(101, 6, 46, 3, 0, 2, '2019-12-11 01:38:00', '2019-12-11 01:38:00', 'fb59661c-3c16-47a3-85ed-d5c748f4d39a'),
(124, 1, 54, 5, 0, 2, '2020-01-19 01:48:08', '2020-01-19 01:48:08', 'b2a4462c-6d9e-4bf5-8865-927bbdaf498d'),
(125, 1, 54, 6, 0, 3, '2020-01-19 01:48:08', '2020-01-19 01:48:08', '58a6320a-0154-47b7-9997-b1f653160e06'),
(126, 1, 54, 4, 1, 1, '2020-01-19 01:48:08', '2020-01-19 01:48:08', 'c0f3738f-a6d5-49f3-b7c4-77dc6ecc817f'),
(127, 9, 55, 7, 0, 2, '2020-01-19 01:48:09', '2020-01-19 01:48:09', 'f2d77c3c-9d56-42e9-82fd-3bf6c7c974a5'),
(128, 9, 55, 8, 0, 3, '2020-01-19 01:48:09', '2020-01-19 01:48:09', '35385d54-dae4-48fe-99b2-cbaf12c6d179'),
(129, 9, 55, 9, 1, 1, '2020-01-19 01:48:09', '2020-01-19 01:48:09', '708fed3f-33a2-42ed-8176-6f392d0b89b6'),
(130, 13, 56, 15, 0, 3, '2020-01-19 01:48:09', '2020-01-19 01:48:09', '74f98526-deaa-4087-8ea5-356c540286da'),
(131, 13, 56, 16, 0, 2, '2020-01-19 01:48:09', '2020-01-19 01:48:09', 'b7c892e3-cec5-4804-bbef-ee7992d51890'),
(132, 13, 56, 17, 1, 1, '2020-01-19 01:48:09', '2020-01-19 01:48:09', '3ced3322-1e29-4788-aba5-20539af71adc'),
(133, 14, 57, 18, 0, 2, '2020-01-19 01:48:09', '2020-01-19 01:48:09', 'b8c77538-0ab9-4b18-93bb-6d011a340bc9'),
(134, 14, 57, 19, 1, 1, '2020-01-19 01:48:09', '2020-01-19 01:48:09', 'de933c5f-b4f6-4f56-8fb6-f9e138361180'),
(135, 14, 57, 20, 0, 3, '2020-01-19 01:48:09', '2020-01-19 01:48:09', '48ff87a4-4b59-4c0b-844d-705f86651ca1'),
(136, 15, 58, 21, 0, 3, '2020-01-19 01:48:09', '2020-01-19 01:48:09', 'a8d1d0ed-bd76-46d5-b49b-fb7351232d05'),
(137, 15, 58, 22, 0, 2, '2020-01-19 01:48:09', '2020-01-19 01:48:09', 'de99b83e-8bea-4b0d-a162-a2aa7de72fbe'),
(138, 15, 58, 23, 1, 1, '2020-01-19 01:48:09', '2020-01-19 01:48:09', '0bd2ab93-9a08-4409-a1ab-6945d1c26e20'),
(161, 22, 70, 10, 0, 1, '2020-01-21 01:58:06', '2020-01-21 01:58:06', '11e2119a-7caf-481f-ae6b-6d3d862c80af'),
(206, 10, 83, 11, 0, 2, '2020-01-25 14:53:32', '2020-01-25 14:53:32', 'd8d59556-b4c6-4943-a7cf-67ae78183708'),
(207, 10, 83, 28, 0, 3, '2020-01-25 14:53:32', '2020-01-25 14:53:32', '86e20c5a-9fe0-4128-b0f3-98da056d3d04'),
(208, 10, 83, 29, 0, 1, '2020-01-25 14:53:32', '2020-01-25 14:53:32', '02aaed17-82f9-4034-8973-8a92a958f691'),
(209, 10, 83, 30, 0, 4, '2020-01-25 14:53:32', '2020-01-25 14:53:32', 'ad7a0b23-8dc3-4996-8498-c0df0e029785'),
(210, 10, 83, 35, 0, 5, '2020-01-25 14:53:32', '2020-01-25 14:53:32', '86a5c5f9-0c0d-4147-be35-a24d81fc323e'),
(211, 20, 84, 31, 0, 2, '2020-01-25 14:53:32', '2020-01-25 14:53:32', '1dd9fa5a-c376-49ec-ab2a-ad67228b5213'),
(212, 20, 84, 32, 0, 1, '2020-01-25 14:53:32', '2020-01-25 14:53:32', 'ee17aef2-a03a-445e-b43f-2967dbbcf71d'),
(213, 20, 84, 36, 0, 3, '2020-01-25 14:53:32', '2020-01-25 14:53:32', '03c67c6a-54b7-442f-a864-b9366ef1a883'),
(214, 21, 85, 33, 0, 2, '2020-01-25 14:53:32', '2020-01-25 14:53:32', '1e1477d8-c092-4e2a-a5e5-5a498d8f7e58'),
(215, 21, 85, 34, 0, 1, '2020-01-25 14:53:32', '2020-01-25 14:53:32', 'b3ec83c7-09ad-48c8-bd70-6a6b7c3e6dfa'),
(216, 21, 85, 37, 0, 3, '2020-01-25 14:53:32', '2020-01-25 14:53:32', '6a248632-27a4-491e-bc62-a3056e920f8f'),
(217, 18, 86, 2, 0, 3, '2020-01-25 16:40:56', '2020-01-25 16:40:56', '29e07771-8e75-496d-84df-9c9b53a1414d'),
(218, 18, 86, 10, 0, 4, '2020-01-25 16:40:56', '2020-01-25 16:40:56', '1bab908c-f68f-4817-86d4-47c793f15f43'),
(219, 18, 86, 24, 0, 1, '2020-01-25 16:40:56', '2020-01-25 16:40:56', 'aa5cf26a-3454-4a57-b614-fa65091430a0'),
(220, 18, 86, 38, 0, 2, '2020-01-25 16:40:56', '2020-01-25 16:40:56', '0dc95534-6541-4a32-8388-dab0013619ed'),
(221, 5, 87, 39, 0, 2, '2020-01-25 20:02:17', '2020-01-25 20:02:17', '6c694158-e561-4347-afae-6a090634ac1f'),
(222, 5, 87, 1, 0, 1, '2020-01-25 20:02:17', '2020-01-25 20:02:17', '39f43da7-9565-4805-9252-b97e8603b625');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayouts`
--

CREATE TABLE `craft_fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_fieldlayouts`
--

INSERT INTO `craft_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'craft\\elements\\MatrixBlock', '2019-11-23 17:22:48', '2019-11-23 17:22:48', NULL, 'fea9050b-c01a-42d5-868f-73e79e9f58f9'),
(2, 'craft\\elements\\GlobalSet', '2019-11-23 18:23:43', '2019-11-23 18:23:43', NULL, 'e764c720-5c68-41b0-a96a-7bd23e0f2fda'),
(3, 'craft\\elements\\GlobalSet', '2019-11-23 18:37:41', '2019-11-23 18:37:41', NULL, '6a5dcfed-ca4b-4255-b3c9-b537ce055e30'),
(4, 'craft\\elements\\GlobalSet', '2019-11-23 18:38:06', '2019-11-23 18:38:06', NULL, 'eba588db-0266-455f-8f97-be8263b16bca'),
(5, 'craft\\elements\\Entry', '2019-11-23 18:54:05', '2019-11-23 18:54:05', NULL, '6edc0daf-61c8-4fa1-9816-063b1a41c278'),
(6, 'craft\\elements\\Entry', '2019-11-23 20:21:15', '2019-11-23 20:21:15', NULL, 'ba9b4241-a630-4dd2-9ca8-ca03af82a53f'),
(7, 'craft\\elements\\Entry', '2019-11-23 22:38:17', '2019-11-23 22:38:17', '2020-01-16 02:10:25', '32332611-eb5b-4373-acf6-ca94873806ac'),
(8, 'craft\\elements\\Entry', '2019-11-23 22:38:24', '2019-11-23 22:38:24', '2020-01-19 01:36:31', '24a06b47-f682-44d5-9a23-162c97cc9e0c'),
(9, 'craft\\elements\\MatrixBlock', '2019-12-01 00:06:28', '2019-12-01 00:06:28', NULL, 'a456deba-0657-46c2-9d1f-e5ec56b445eb'),
(10, 'craft\\elements\\MatrixBlock', '2019-12-01 00:43:50', '2019-12-01 00:43:50', NULL, '29818bcb-76c9-48d1-89c1-c8456c0600db'),
(11, 'craft\\elements\\MatrixBlock', '2019-12-01 00:43:50', '2019-12-01 00:43:50', '2020-01-21 01:56:14', '9bc62277-e47c-456a-8728-b07ed1f01e4f'),
(12, 'craft\\elements\\MatrixBlock', '2019-12-01 00:43:51', '2019-12-01 00:43:51', '2020-01-21 01:56:14', 'e1e17a32-e7ac-4251-bc57-c1542c46d18e'),
(13, 'craft\\elements\\MatrixBlock', '2019-12-05 00:36:38', '2019-12-05 00:36:38', NULL, '2797a0ee-0bf9-4f20-a00f-4537d64c93e5'),
(14, 'craft\\elements\\MatrixBlock', '2019-12-05 00:36:38', '2019-12-05 00:36:38', NULL, 'fdd622cb-31b3-4d7f-abd1-9d8b7f24363d'),
(15, 'craft\\elements\\MatrixBlock', '2019-12-05 00:36:38', '2019-12-05 00:36:38', NULL, 'f56f471d-951c-4347-8f19-4bbf1bb53421'),
(16, 'craft\\elements\\GlobalSet', '2019-12-05 00:38:20', '2019-12-05 00:38:20', NULL, '44131e2d-c2bf-44d9-83fe-6386212e7fce'),
(17, 'craft\\elements\\GlobalSet', '2019-12-07 03:37:04', '2019-12-07 03:37:04', NULL, 'f76634af-0d2e-4a61-8c96-36c160c7335d'),
(18, 'craft\\elements\\Entry', '2020-01-16 01:58:47', '2020-01-16 01:58:47', NULL, '7602e46b-1510-432c-b889-022e13c41c2b'),
(19, 'craft\\elements\\MatrixBlock', '2020-01-21 01:41:10', '2020-01-21 01:41:10', '2020-01-21 01:42:44', 'a0518ab4-8a0f-4c02-b48d-f014c5623c0c'),
(20, 'craft\\elements\\MatrixBlock', '2020-01-21 01:56:14', '2020-01-21 01:56:14', NULL, '99ad76d4-c64d-476b-8dc2-5fd7d9dbb4c5'),
(21, 'craft\\elements\\MatrixBlock', '2020-01-21 01:56:14', '2020-01-21 01:56:14', NULL, '5d9e317d-2d97-4a82-88bf-0b00d75c3969'),
(22, 'craft\\elements\\Entry', '2020-01-21 01:58:06', '2020-01-21 01:58:06', NULL, 'a13b7500-ad4b-4412-bada-a8700cc21b6c');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fieldlayouttabs`
--

CREATE TABLE `craft_fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_fieldlayouttabs`
--

INSERT INTO `craft_fieldlayouttabs` (`id`, `layoutId`, `name`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(6, 2, 'Copy', 1, '2019-11-23 18:24:32', '2019-11-23 18:24:32', 'c98ff30e-93bf-4aca-85c7-cabaded76d17'),
(9, 3, 'Copy', 1, '2019-11-23 18:38:20', '2019-11-23 18:38:20', 'a3a31944-cf3a-4f0f-ba29-5cac724d5cf1'),
(40, 7, 'Common', 1, '2019-12-05 00:37:13', '2019-12-05 00:37:13', 'a7ea74a3-9134-49ad-9311-b5e1800e7d89'),
(42, 16, 'Twitter Handle', 1, '2019-12-05 00:38:20', '2019-12-05 00:38:20', '13e8509d-cb24-4865-8ba9-41bf1dede27a'),
(43, 8, 'Common', 1, '2019-12-05 00:39:38', '2019-12-05 00:39:38', '276c3930-1b60-428b-a19b-b9b3a3a77c1c'),
(44, 17, 'Facebook Handle', 1, '2019-12-07 03:37:04', '2019-12-07 03:37:04', '47ecbfe1-d70a-43a3-81b2-0cef5ee4e730'),
(45, 4, 'Instagram Handle', 1, '2019-12-07 03:37:22', '2019-12-07 03:37:22', 'a75b7ddf-131d-4894-bf5d-91706a209c76'),
(46, 6, 'Home', 1, '2019-12-11 01:38:00', '2019-12-11 01:38:00', 'd245451c-7367-40f3-ac87-f25b01fea86c'),
(54, 1, 'Content', 1, '2020-01-19 01:48:08', '2020-01-19 01:48:08', '6304072a-b2fe-4ab6-8099-1790de318c71'),
(55, 9, 'Content', 1, '2020-01-19 01:48:09', '2020-01-19 01:48:09', '0ccd4cff-dbcf-44ab-872a-cbb6eb4c3d63'),
(56, 13, 'Content', 1, '2020-01-19 01:48:09', '2020-01-19 01:48:09', 'b26d163e-f84d-4997-bc79-0691f4441df9'),
(57, 14, 'Content', 1, '2020-01-19 01:48:09', '2020-01-19 01:48:09', '270248ea-4950-473c-a98b-d72e668a4bc7'),
(58, 15, 'Content', 1, '2020-01-19 01:48:09', '2020-01-19 01:48:09', '0ec19c09-c8e8-40de-b79c-a21a9dc2ce9a'),
(63, 11, 'Content', 1, '2020-01-21 01:37:43', '2020-01-21 01:37:43', 'aa328642-ce16-4f07-89da-98e1f8da25fb'),
(64, 12, 'Content', 1, '2020-01-21 01:37:43', '2020-01-21 01:37:43', '46f2dc28-9626-464f-8ccb-17c64a7841ff'),
(65, 19, 'Content', 1, '2020-01-21 01:41:10', '2020-01-21 01:41:10', '136ce86f-0f4e-42c4-9bcb-2de9605defe6'),
(70, 22, 'Common', 1, '2020-01-21 01:58:06', '2020-01-21 01:58:06', '5ee81f71-caec-4603-aca1-5b2343136b6f'),
(83, 10, 'Content', 1, '2020-01-25 14:53:32', '2020-01-25 14:53:32', 'bb739b71-42f1-410b-9965-d648430876d9'),
(84, 20, 'Content', 1, '2020-01-25 14:53:32', '2020-01-25 14:53:32', 'a0f7af60-edda-4c1c-989d-3e97a7fae3f9'),
(85, 21, 'Content', 1, '2020-01-25 14:53:32', '2020-01-25 14:53:32', '7a42da5b-09b3-4ff0-9268-4d3b64d28e26'),
(86, 18, 'Common', 1, '2020-01-25 16:40:56', '2020-01-25 16:40:56', '64c99eee-3532-4687-8fdd-2b84846c9aee'),
(87, 5, '404', 1, '2020-01-25 20:02:17', '2020-01-25 20:02:17', 'e70b2e56-3f5e-4e0b-bd65-a8c16fa1210c');

-- --------------------------------------------------------

--
-- Table structure for table `craft_fields`
--

CREATE TABLE `craft_fields` (
  `id` int(11) NOT NULL,
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
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_fields`
--

INSERT INTO `craft_fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `searchable`, `translationMethod`, `translationKeyFormat`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'Text Field', 'textField', 'global', 'Use the widget to add text here', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"}', '2019-11-23 16:59:13', '2019-11-23 17:27:18', 'd499c44e-e0d4-47e4-a4ec-d2f7727d723f'),
(2, 1, 'Image Field', 'imageField', 'global', '', 1, 'site', NULL, 'craft\\fields\\Assets', '{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"sources\":[\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"}', '2019-11-23 17:10:00', '2019-11-23 17:17:52', '4b96664e-b12f-47fe-9f83-8eafd29af83c'),
(3, 3, 'Content Lockup', 'contentLockup', 'global', 'Add an image, video or slideshow; title, and subhead. Appears on the home page only. ', 1, 'site', NULL, 'craft\\fields\\Matrix', '{\"minBlocks\":\"\",\"maxBlocks\":\"\",\"contentTable\":\"{{%matrixcontent_contentlockup}}\",\"propagationMethod\":\"all\"}', '2019-11-23 17:22:48', '2020-01-19 01:48:08', '60048af4-ec20-4feb-b4a7-8acfbabe0683'),
(4, NULL, 'Lockup Image', 'lockupImage', 'matrixBlockType:6e01c8fe-f719-4b7f-b50a-9bff2d7cf374', 'Add one or multiple images', 1, 'site', NULL, 'craft\\fields\\Assets', '{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"allowedKinds\":null,\"sources\":\"*\",\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"}', '2019-11-23 17:22:48', '2020-01-19 01:48:08', 'f06caffa-c7e7-4c6f-bad4-defa3dc65daf'),
(5, NULL, 'Lockup Header', 'lockupHeader', 'matrixBlockType:6e01c8fe-f719-4b7f-b50a-9bff2d7cf374', 'Add the header for the lockup', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"}', '2019-11-23 17:24:01', '2020-01-19 01:48:08', '7f78a050-9047-4e53-9f2b-7ff000e06c3c'),
(6, NULL, 'Lockup Subhead', 'lockupSubhead', 'matrixBlockType:6e01c8fe-f719-4b7f-b50a-9bff2d7cf374', 'Add a subhead here', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"}', '2019-11-23 17:24:01', '2020-01-19 01:48:08', 'c1d8be44-8a5a-4a17-b22e-906a74dbb5fc'),
(7, NULL, 'Lockup Header', 'lockupHeader', 'matrixBlockType:04454127-324e-4600-80e5-b650f2f27329', '', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"}', '2019-12-01 00:06:27', '2020-01-19 01:48:09', '7bb44713-09d7-494b-a83a-a69939160e33'),
(8, NULL, 'Lockup Subhead', 'lockupSubhead', 'matrixBlockType:04454127-324e-4600-80e5-b650f2f27329', '', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"}', '2019-12-01 00:06:28', '2020-01-19 01:48:09', '81a80003-9c7b-42c0-8b0e-2c8a334d82aa'),
(9, NULL, 'Video', 'video', 'matrixBlockType:04454127-324e-4600-80e5-b650f2f27329', 'Add the video asset here', 1, 'site', NULL, 'craft\\fields\\Assets', '{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:8211780b-4991-4165-9e24-98aea3c7fd37\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"video\"],\"sources\":[\"volume:8211780b-4991-4165-9e24-98aea3c7fd37\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"}', '2019-12-01 00:06:28', '2020-01-19 01:48:09', '877923a2-640f-45c8-9f9b-fa3528911d6a'),
(10, 1, 'Entry Fields', 'entryFields', 'global', 'Add content blocks that either span 1/3, 2/3, or the full width of the page. The naming assumes the page is broken up into thirds, or, three columns', 1, 'site', NULL, 'craft\\fields\\Matrix', '{\"minBlocks\":\"\",\"maxBlocks\":\"\",\"contentTable\":\"{{%matrixcontent_entryfields}}\",\"propagationMethod\":\"all\"}', '2019-12-01 00:43:50', '2020-01-25 14:53:32', '5e84d008-2762-4327-b794-72545f962ae3'),
(11, NULL, 'Text Field', 'textField', 'matrixBlockType:7bc547ca-d99b-4a4c-bc2f-4f197497c439', 'Add copy and embedded inline images here here', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"Standard.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"}', '2019-12-01 00:43:50', '2020-01-25 14:53:32', 'a2b95ad0-688e-43b8-b7cd-b27966ade2be'),
(15, NULL, 'Lockup Subhead', 'lockupSubhead', 'matrixBlockType:6245676f-a107-446a-a920-3acee669c93c', '', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"}', '2019-12-05 00:36:38', '2020-01-19 01:48:09', '5851260e-a520-4af8-9c05-413dc91e170e'),
(16, NULL, 'Lockup Header', 'lockupHeader', 'matrixBlockType:6245676f-a107-446a-a920-3acee669c93c', '', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"}', '2019-12-05 00:36:38', '2020-01-19 01:48:09', '9f106fa9-57ec-472d-8a3c-6be975ba940c'),
(17, NULL, 'Youtube Video ID', 'embedLink', 'matrixBlockType:6245676f-a107-446a-a920-3acee669c93c', 'Add the youtube video ID here', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"TCQEcR7pi_Q\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-12-05 00:36:38', '2020-01-19 01:48:09', 'a25bbf32-1906-4a89-ac5a-0f244aa45000'),
(18, NULL, 'Lockup Header', 'lockupHeader', 'matrixBlockType:249e5662-37ce-4628-a3e3-a908af810f4d', '', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"}', '2019-12-05 00:36:38', '2020-01-19 01:48:09', 'a61d653a-5f43-4c88-b040-c216dc898827'),
(19, NULL, 'Facebook Video ID', 'embedLink', 'matrixBlockType:249e5662-37ce-4628-a3e3-a908af810f4d', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"1592319550798332\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-12-05 00:36:38', '2020-01-19 01:48:09', 'b07b1e0a-cced-487f-8637-6c051ae489d8'),
(20, NULL, 'Lockup Subhead', 'lockupSubhead', 'matrixBlockType:249e5662-37ce-4628-a3e3-a908af810f4d', '', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"}', '2019-12-05 00:36:38', '2020-01-19 01:48:09', 'fd5a144d-e168-48fb-9a93-e2a851ec0afa'),
(21, NULL, 'Lockup Subhead', 'lockupSubhead', 'matrixBlockType:3bfd6f35-44a6-4ace-bbf9-33ef19c39b76', '', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"}', '2019-12-05 00:36:38', '2020-01-19 01:48:09', '2e75faa6-d16d-43cc-8990-a6bc6d131cc5'),
(22, NULL, 'Lockup Header', 'lockupHeader', 'matrixBlockType:3bfd6f35-44a6-4ace-bbf9-33ef19c39b76', '', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"}', '2019-12-05 00:36:38', '2020-01-19 01:48:09', '6c558a71-8a0a-48fa-8cd5-d6a5236b308c'),
(23, NULL, 'Vimeo Video ID', 'embedLink', 'matrixBlockType:3bfd6f35-44a6-4ace-bbf9-33ef19c39b76', 'Add the Vimeo video ID here', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"336812660\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-12-05 00:36:38', '2020-01-19 01:48:09', 'b21ad416-eb07-401c-84cf-20347c5801f5'),
(24, 1, 'Background Color', 'backgroundColor', 'global', 'Pick a color for the page background', 1, 'none', NULL, 'craft\\fields\\Color', '{\"defaultColor\":\"\"}', '2019-12-05 00:37:05', '2019-12-05 00:37:05', '5f150873-f54d-43d9-847e-61f60318b76c'),
(28, NULL, 'Video Embed Code', 'videoEmbedCode', 'matrixBlockType:7bc547ca-d99b-4a4c-bc2f-4f197497c439', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"ie. 10153231379946729\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2020-01-21 01:56:14', '2020-01-25 14:53:32', 'd0a2e03d-014e-4bb3-856a-f206e366f201'),
(29, NULL, 'Image Field', 'imageField', 'matrixBlockType:7bc547ca-d99b-4a4c-bc2f-4f197497c439', 'Add an image', 1, 'site', NULL, 'craft\\fields\\Assets', '{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"sources\":[\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"}', '2020-01-21 01:56:14', '2020-01-25 14:53:32', 'dd6a0f8a-f33c-4cb6-935f-2a70ccbad68b'),
(30, NULL, 'Video Caption', 'videoCaption', 'matrixBlockType:7bc547ca-d99b-4a4c-bc2f-4f197497c439', '', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"}', '2020-01-21 01:56:14', '2020-01-25 14:53:32', 'e5f4e402-d0ea-40b6-afb7-baf55774c6ce'),
(31, NULL, 'Text Field', 'textField', 'matrixBlockType:36b549fe-a335-4254-95c3-4b63973b2606', '', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"Standard.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"}', '2020-01-21 01:56:14', '2020-01-25 14:53:32', '4ad4277f-9804-430b-9b23-7c7ae9861fff'),
(32, NULL, 'Image Field', 'imageField', 'matrixBlockType:36b549fe-a335-4254-95c3-4b63973b2606', 'Add an image', 1, 'site', NULL, 'craft\\fields\\Assets', '{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"sources\":[\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"}', '2020-01-21 01:56:14', '2020-01-25 14:53:32', 'b4940c29-af8b-4ca6-b4d1-5853a1c15f6d'),
(33, NULL, 'Text Field', 'textField', 'matrixBlockType:267381a2-0e74-4527-b86e-09d3c91bdeee', '', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"Standard.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"}', '2020-01-21 01:56:14', '2020-01-25 14:53:32', '3ecd366a-3b35-4eb5-819b-9c4cd68593b2'),
(34, NULL, 'Image Field', 'imageField', 'matrixBlockType:267381a2-0e74-4527-b86e-09d3c91bdeee', 'Add an image', 1, 'site', NULL, 'craft\\fields\\Assets', '{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"sources\":[\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"}', '2020-01-21 01:56:14', '2020-01-25 14:53:32', 'abb3a5df-a2a9-4dc3-aade-0098ede51bb1'),
(35, NULL, 'Top Border', 'topBorder', 'matrixBlockType:7bc547ca-d99b-4a4c-bc2f-4f197497c439', 'Check to show a border at the top of the content block', 1, 'none', NULL, 'craft\\fields\\Checkboxes', '{\"multi\":true,\"options\":[{\"label\":\"Show Border\",\"value\":\"showBorder\",\"default\":\"\"}]}', '2020-01-21 02:35:52', '2020-01-25 14:53:32', 'f80405de-65cb-4bd5-85f1-9513234f2711'),
(36, NULL, 'Top Border', 'topBorder', 'matrixBlockType:36b549fe-a335-4254-95c3-4b63973b2606', 'Check to show a border at the top of the content block', 1, 'none', NULL, 'craft\\fields\\Checkboxes', '{\"multi\":true,\"options\":[{\"label\":\"Show Border\",\"value\":\"showBorder\",\"default\":\"\"}]}', '2020-01-21 02:35:52', '2020-01-25 14:53:32', 'cb3350d8-6ba7-4f19-aa94-699bcf756ad7'),
(37, NULL, 'Top Border', 'topBorder', 'matrixBlockType:267381a2-0e74-4527-b86e-09d3c91bdeee', 'Check to show a border at the top of the content block', 1, 'none', NULL, 'craft\\fields\\Checkboxes', '{\"multi\":true,\"options\":[{\"label\":\"Show Border\",\"value\":\"showBorder\",\"default\":\"\"}]}', '2020-01-21 02:35:52', '2020-01-25 14:53:32', 'ed4f4001-22f0-4338-a60d-a0d84d8576e4'),
(38, 1, 'Section Links', 'sectionLinks', 'global', 'Select to add links to jump to entry sections', 1, 'none', NULL, 'craft\\fields\\Checkboxes', '{\"multi\":true,\"options\":[{\"label\":\"Add section jumps\",\"value\":\"addSectionJumps\",\"default\":\"\"}]}', '2020-01-25 16:40:34', '2020-01-25 16:40:34', 'ddf571c5-79db-4ffa-a333-336ad99b21fc'),
(39, 1, 'Related Entries', 'relatedEntries', 'global', '', 1, 'site', NULL, 'craft\\fields\\Entries', '{\"sources\":[\"section:9ee4afa5-01dc-4b1e-a449-1bd48fdb11ea\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":null,\"limit\":\"4\",\"selectionLabel\":\"Add an entry\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"}', '2020-01-25 20:01:49', '2020-01-25 20:01:49', '1415759b-6389-4def-bb9e-8b9ec049419d');

-- --------------------------------------------------------

--
-- Table structure for table `craft_globalsets`
--

CREATE TABLE `craft_globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_globalsets`
--

INSERT INTO `craft_globalsets` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(8, 'Header Copy', 'headerCopy', 2, '2019-11-23 18:23:43', '2019-11-23 18:24:32', '5fae239b-fc55-4e9d-913e-decd8dcc8d3a'),
(9, 'Footer Copy', 'footerCopy', 3, '2019-11-23 18:37:41', '2019-11-23 18:38:20', '883d4f51-a9a9-41fd-bfed-0fbda8ff415b'),
(10, 'Footer Instagram Handle', 'footerInstagramHandle', 4, '2019-11-23 18:38:06', '2019-12-07 03:37:22', '74f79638-484e-4e72-bc38-9ba1a4f3a3e2'),
(156, 'Footer Twitter Handle', 'footerTwitterHandle', 16, '2019-12-05 00:38:20', '2019-12-05 00:38:20', '1edefc3b-f27f-4a43-85c8-e94098d20840'),
(161, 'Footer Facebook Handle', 'footerFacebookHandle', 17, '2019-12-07 03:37:04', '2019-12-07 03:37:04', 'a646d864-70f1-450a-a002-c14e63826e84');

-- --------------------------------------------------------

--
-- Table structure for table `craft_gqlschemas`
--

CREATE TABLE `craft_gqlschemas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `scope` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `craft_info`
--

CREATE TABLE `craft_info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) NOT NULL,
  `schemaVersion` varchar(15) NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT '0',
  `config` mediumtext,
  `configMap` mediumtext,
  `fieldVersion` char(12) NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_info`
--

INSERT INTO `craft_info` (`id`, `version`, `schemaVersion`, `maintenance`, `config`, `configMap`, `fieldVersion`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '3.3.16.1', '3.3.3', 0, '{\"fieldGroups\":{\"43a12f84-7764-4426-8c01-a05e8c6055c5\":{\"name\":\"Common\"},\"f3888fe6-c608-49b6-9ec5-46b91dd0c97d\":{\"name\":\"Home\"}},\"siteGroups\":{\"51b18487-1143-446a-8d3c-0630845313c9\":{\"name\":\"Gender Family Project\"}},\"sites\":{\"35707b9d-7d83-4c03-a9d7-ac32c06e1ccb\":{\"siteGroup\":\"51b18487-1143-446a-8d3c-0630845313c9\",\"name\":\"Gender Family Project\",\"handle\":\"default\",\"language\":\"en-US\",\"hasUrls\":true,\"baseUrl\":\"/\",\"sortOrder\":1,\"primary\":true}},\"email\":{\"fromEmail\":\"jameslamarre@gmail.com\",\"fromName\":\"Gender Family Project\",\"transportType\":\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"},\"system\":{\"edition\":\"solo\",\"name\":\"Gender Family Project\",\"live\":true,\"schemaVersion\":\"3.3.3\",\"timeZone\":\"America/Los_Angeles\"},\"users\":{\"requireEmailVerification\":true,\"allowPublicRegistration\":false,\"defaultGroup\":null,\"photoVolumeUid\":null,\"photoSubpath\":\"\"},\"dateModified\":1579982537,\"fields\":{\"d499c44e-e0d4-47e4-a4ec-d2f7727d723f\":{\"name\":\"Text Field\",\"handle\":\"textField\",\"instructions\":\"Use the widget to add text here\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":\"43a12f84-7764-4426-8c01-a05e8c6055c5\"},\"4b96664e-b12f-47fe-9f83-8eafd29af83c\":{\"name\":\"Image Field\",\"handle\":\"imageField\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Assets\",\"settings\":{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"sources\":[\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":\"43a12f84-7764-4426-8c01-a05e8c6055c5\"},\"60048af4-ec20-4feb-b4a7-8acfbabe0683\":{\"name\":\"Content Lockup\",\"handle\":\"contentLockup\",\"instructions\":\"Add an image, video or slideshow; title, and subhead. Appears on the home page only. \",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Matrix\",\"settings\":{\"minBlocks\":\"\",\"maxBlocks\":\"\",\"contentTable\":\"{{%matrixcontent_contentlockup}}\",\"propagationMethod\":\"all\"},\"contentColumnType\":\"string\",\"fieldGroup\":\"f3888fe6-c608-49b6-9ec5-46b91dd0c97d\"},\"5e84d008-2762-4327-b794-72545f962ae3\":{\"name\":\"Entry Fields\",\"handle\":\"entryFields\",\"instructions\":\"Add content blocks that either span 1/3, 2/3, or the full width of the page. The naming assumes the page is broken up into thirds, or, three columns\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Matrix\",\"settings\":{\"minBlocks\":\"\",\"maxBlocks\":\"\",\"contentTable\":\"{{%matrixcontent_entryfields}}\",\"propagationMethod\":\"all\"},\"contentColumnType\":\"string\",\"fieldGroup\":\"43a12f84-7764-4426-8c01-a05e8c6055c5\"},\"5f150873-f54d-43d9-847e-61f60318b76c\":{\"name\":\"Background Color\",\"handle\":\"backgroundColor\",\"instructions\":\"Pick a color for the page background\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Color\",\"settings\":{\"defaultColor\":\"\"},\"contentColumnType\":\"string(7)\",\"fieldGroup\":\"43a12f84-7764-4426-8c01-a05e8c6055c5\"},\"ddf571c5-79db-4ffa-a333-336ad99b21fc\":{\"name\":\"Section Links\",\"handle\":\"sectionLinks\",\"instructions\":\"Select to add links to jump to entry sections\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Checkboxes\",\"settings\":{\"multi\":true,\"options\":[{\"label\":\"Add section jumps\",\"value\":\"addSectionJumps\",\"default\":\"\"}]},\"contentColumnType\":\"string\",\"fieldGroup\":\"43a12f84-7764-4426-8c01-a05e8c6055c5\"},\"1415759b-6389-4def-bb9e-8b9ec049419d\":{\"name\":\"Related Entries\",\"handle\":\"relatedEntries\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Entries\",\"settings\":{\"sources\":[\"section:9ee4afa5-01dc-4b1e-a449-1bd48fdb11ea\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":null,\"limit\":\"4\",\"selectionLabel\":\"Add an entry\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":\"43a12f84-7764-4426-8c01-a05e8c6055c5\"}},\"sections\":{\"a35211f8-5bcb-4cde-bf30-d5e14d414a74\":{\"name\":\"Home Page\",\"handle\":\"homePage\",\"type\":\"single\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"35707b9d-7d83-4c03-a9d7-ac32c06e1ccb\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"__home__\",\"template\":\"\"}},\"entryTypes\":{\"1fb2e564-996e-4a4d-958e-e493f4ce0c82\":{\"name\":\"Home Page\",\"handle\":\"homePage\",\"hasTitleField\":false,\"titleLabel\":\"\",\"titleFormat\":\"{section.name|raw}\",\"sortOrder\":1,\"fieldLayouts\":{\"ba9b4241-a630-4dd2-9ca8-ca03af82a53f\":{\"tabs\":[{\"name\":\"Home\",\"sortOrder\":1,\"fields\":{\"5f150873-f54d-43d9-847e-61f60318b76c\":{\"required\":false,\"sortOrder\":1},\"60048af4-ec20-4feb-b4a7-8acfbabe0683\":{\"required\":false,\"sortOrder\":2}}}]}}}}},\"b94bc776-14fa-47f3-9e27-070ac0ed1e2d\":{\"name\":\"404 Page\",\"handle\":\"fourOhFourPage\",\"type\":\"single\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"35707b9d-7d83-4c03-a9d7-ac32c06e1ccb\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"404-page\",\"template\":\"404\"}},\"entryTypes\":{\"eec01ffb-1c83-4168-8f7d-291ec9075903\":{\"name\":\"404 Page\",\"handle\":\"fourOhFourPage\",\"hasTitleField\":false,\"titleLabel\":\"\",\"titleFormat\":\"{section.name|raw}\",\"sortOrder\":1,\"fieldLayouts\":{\"6edc0daf-61c8-4fa1-9816-063b1a41c278\":{\"tabs\":[{\"name\":\"404\",\"sortOrder\":1,\"fields\":{\"1415759b-6389-4def-bb9e-8b9ec049419d\":{\"required\":false,\"sortOrder\":2},\"d499c44e-e0d4-47e4-a4ec-d2f7727d723f\":{\"required\":false,\"sortOrder\":1}}}]}}}}},\"9ee4afa5-01dc-4b1e-a449-1bd48fdb11ea\":{\"name\":\"Page List\",\"handle\":\"pageList\",\"type\":\"structure\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"35707b9d-7d83-4c03-a9d7-ac32c06e1ccb\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"{slug}\",\"template\":\"views/_entry\"}},\"structure\":{\"uid\":\"698557d6-9a6c-477f-b99f-05d0dc23b5f5\",\"maxLevels\":2},\"entryTypes\":{\"81f60665-3082-4ce5-b4ae-355d1670ae60\":{\"name\":\"Page List\",\"handle\":\"pageList\",\"hasTitleField\":true,\"titleLabel\":\"Title\",\"titleFormat\":\"\",\"sortOrder\":1,\"fieldLayouts\":{\"7602e46b-1510-432c-b889-022e13c41c2b\":{\"tabs\":[{\"name\":\"Common\",\"sortOrder\":1,\"fields\":{\"4b96664e-b12f-47fe-9f83-8eafd29af83c\":{\"required\":false,\"sortOrder\":3},\"5e84d008-2762-4327-b794-72545f962ae3\":{\"required\":false,\"sortOrder\":4},\"5f150873-f54d-43d9-847e-61f60318b76c\":{\"required\":false,\"sortOrder\":1},\"ddf571c5-79db-4ffa-a333-336ad99b21fc\":{\"required\":false,\"sortOrder\":2}}}]}}}}},\"a363bf5b-8a6d-4460-a231-cbb64cd56d98\":{\"name\":\"Style Guide\",\"handle\":\"styleGuide\",\"type\":\"single\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"35707b9d-7d83-4c03-a9d7-ac32c06e1ccb\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"style-guide\",\"template\":\"views/_entry\"}},\"entryTypes\":{\"4472b7ff-29a2-4c40-8f91-95a621d0cbe9\":{\"name\":\"Style Guide\",\"handle\":\"styleGuide\",\"hasTitleField\":false,\"titleLabel\":\"\",\"titleFormat\":\"{section.name|raw}\",\"sortOrder\":1,\"fieldLayouts\":{\"a13b7500-ad4b-4412-bada-a8700cc21b6c\":{\"tabs\":[{\"name\":\"Common\",\"sortOrder\":1,\"fields\":{\"5e84d008-2762-4327-b794-72545f962ae3\":{\"required\":false,\"sortOrder\":1}}}]}}}}}},\"volumes\":{\"38402d41-2ff3-4e10-8f75-6cbc1edb2981\":{\"name\":\"Images\",\"handle\":\"images\",\"type\":\"craft\\\\volumes\\\\Local\",\"hasUrls\":true,\"url\":\"/assets/images/\",\"settings\":{\"path\":\"./assets/images/\"},\"sortOrder\":1},\"8211780b-4991-4165-9e24-98aea3c7fd37\":{\"name\":\"Videos\",\"handle\":\"videos\",\"type\":\"craft\\\\volumes\\\\Local\",\"hasUrls\":true,\"url\":\"assets/videos/\",\"settings\":{\"path\":\"assets/videos/\"},\"sortOrder\":2}},\"matrixBlockTypes\":{\"6e01c8fe-f719-4b7f-b50a-9bff2d7cf374\":{\"field\":\"60048af4-ec20-4feb-b4a7-8acfbabe0683\",\"name\":\"Content Lockup\",\"handle\":\"contentLockup\",\"sortOrder\":1,\"fields\":{\"7f78a050-9047-4e53-9f2b-7ff000e06c3c\":{\"name\":\"Lockup Header\",\"handle\":\"lockupHeader\",\"instructions\":\"Add the header for the lockup\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"c1d8be44-8a5a-4a17-b22e-906a74dbb5fc\":{\"name\":\"Lockup Subhead\",\"handle\":\"lockupSubhead\",\"instructions\":\"Add a subhead here\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"f06caffa-c7e7-4c6f-bad4-defa3dc65daf\":{\"name\":\"Lockup Image\",\"handle\":\"lockupImage\",\"instructions\":\"Add one or multiple images\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Assets\",\"settings\":{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"allowedKinds\":null,\"sources\":\"*\",\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":null}},\"fieldLayouts\":{\"fea9050b-c01a-42d5-868f-73e79e9f58f9\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"7f78a050-9047-4e53-9f2b-7ff000e06c3c\":{\"required\":false,\"sortOrder\":2},\"c1d8be44-8a5a-4a17-b22e-906a74dbb5fc\":{\"required\":false,\"sortOrder\":3},\"f06caffa-c7e7-4c6f-bad4-defa3dc65daf\":{\"required\":true,\"sortOrder\":1}}}]}}},\"04454127-324e-4600-80e5-b650f2f27329\":{\"field\":\"60048af4-ec20-4feb-b4a7-8acfbabe0683\",\"name\":\"Video Lockup\",\"handle\":\"videoLockup\",\"sortOrder\":2,\"fields\":{\"7bb44713-09d7-494b-a83a-a69939160e33\":{\"name\":\"Lockup Header\",\"handle\":\"lockupHeader\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"81a80003-9c7b-42c0-8b0e-2c8a334d82aa\":{\"name\":\"Lockup Subhead\",\"handle\":\"lockupSubhead\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"877923a2-640f-45c8-9f9b-fa3528911d6a\":{\"name\":\"Video\",\"handle\":\"video\",\"instructions\":\"Add the video asset here\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Assets\",\"settings\":{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:8211780b-4991-4165-9e24-98aea3c7fd37\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"video\"],\"sources\":[\"volume:8211780b-4991-4165-9e24-98aea3c7fd37\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":null}},\"fieldLayouts\":{\"a456deba-0657-46c2-9d1f-e5ec56b445eb\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"7bb44713-09d7-494b-a83a-a69939160e33\":{\"required\":false,\"sortOrder\":2},\"81a80003-9c7b-42c0-8b0e-2c8a334d82aa\":{\"required\":false,\"sortOrder\":3},\"877923a2-640f-45c8-9f9b-fa3528911d6a\":{\"required\":true,\"sortOrder\":1}}}]}}},\"7bc547ca-d99b-4a4c-bc2f-4f197497c439\":{\"field\":\"5e84d008-2762-4327-b794-72545f962ae3\",\"name\":\"Full Width Column Block\",\"handle\":\"fullWidthColumnBlock\",\"sortOrder\":1,\"fields\":{\"a2b95ad0-688e-43b8-b7cd-b27966ade2be\":{\"name\":\"Text Field\",\"handle\":\"textField\",\"instructions\":\"Add copy and embedded inline images here here\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Standard.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"d0a2e03d-014e-4bb3-856a-f206e366f201\":{\"name\":\"Video Embed Code\",\"handle\":\"videoEmbedCode\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"ie. 10153231379946729\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"dd6a0f8a-f33c-4cb6-935f-2a70ccbad68b\":{\"name\":\"Image Field\",\"handle\":\"imageField\",\"instructions\":\"Add an image\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Assets\",\"settings\":{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"sources\":[\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":null},\"e5f4e402-d0ea-40b6-afb7-baf55774c6ce\":{\"name\":\"Video Caption\",\"handle\":\"videoCaption\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"f80405de-65cb-4bd5-85f1-9513234f2711\":{\"name\":\"Top Border\",\"handle\":\"topBorder\",\"instructions\":\"Check to show a border at the top of the content block\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Checkboxes\",\"settings\":{\"multi\":true,\"options\":[{\"label\":\"Show Border\",\"value\":\"showBorder\",\"default\":\"\"}]},\"contentColumnType\":\"string\",\"fieldGroup\":null}},\"fieldLayouts\":{\"29818bcb-76c9-48d1-89c1-c8456c0600db\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"a2b95ad0-688e-43b8-b7cd-b27966ade2be\":{\"required\":false,\"sortOrder\":2},\"d0a2e03d-014e-4bb3-856a-f206e366f201\":{\"required\":false,\"sortOrder\":3},\"dd6a0f8a-f33c-4cb6-935f-2a70ccbad68b\":{\"required\":false,\"sortOrder\":1},\"e5f4e402-d0ea-40b6-afb7-baf55774c6ce\":{\"required\":false,\"sortOrder\":4},\"f80405de-65cb-4bd5-85f1-9513234f2711\":{\"required\":false,\"sortOrder\":5}}}]}}},\"6245676f-a107-446a-a920-3acee669c93c\":{\"field\":\"60048af4-ec20-4feb-b4a7-8acfbabe0683\",\"name\":\"Youtube Video Lockup\",\"handle\":\"youtubeVideoLockup\",\"sortOrder\":3,\"fields\":{\"5851260e-a520-4af8-9c05-413dc91e170e\":{\"name\":\"Lockup Subhead\",\"handle\":\"lockupSubhead\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"9f106fa9-57ec-472d-8a3c-6be975ba940c\":{\"name\":\"Lockup Header\",\"handle\":\"lockupHeader\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"a25bbf32-1906-4a89-ac5a-0f244aa45000\":{\"name\":\"Youtube Video ID\",\"handle\":\"embedLink\",\"instructions\":\"Add the youtube video ID here\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"TCQEcR7pi_Q\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"contentColumnType\":\"text\",\"fieldGroup\":null}},\"fieldLayouts\":{\"2797a0ee-0bf9-4f20-a00f-4537d64c93e5\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"5851260e-a520-4af8-9c05-413dc91e170e\":{\"required\":false,\"sortOrder\":3},\"9f106fa9-57ec-472d-8a3c-6be975ba940c\":{\"required\":false,\"sortOrder\":2},\"a25bbf32-1906-4a89-ac5a-0f244aa45000\":{\"required\":true,\"sortOrder\":1}}}]}}},\"249e5662-37ce-4628-a3e3-a908af810f4d\":{\"field\":\"60048af4-ec20-4feb-b4a7-8acfbabe0683\",\"name\":\"Facebook Video Lockup\",\"handle\":\"facebookVideoLockup\",\"sortOrder\":4,\"fields\":{\"a61d653a-5f43-4c88-b040-c216dc898827\":{\"name\":\"Lockup Header\",\"handle\":\"lockupHeader\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"b07b1e0a-cced-487f-8637-6c051ae489d8\":{\"name\":\"Facebook Video ID\",\"handle\":\"embedLink\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"1592319550798332\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"fd5a144d-e168-48fb-9a93-e2a851ec0afa\":{\"name\":\"Lockup Subhead\",\"handle\":\"lockupSubhead\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null}},\"fieldLayouts\":{\"fdd622cb-31b3-4d7f-abd1-9d8b7f24363d\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"a61d653a-5f43-4c88-b040-c216dc898827\":{\"required\":false,\"sortOrder\":2},\"b07b1e0a-cced-487f-8637-6c051ae489d8\":{\"required\":true,\"sortOrder\":1},\"fd5a144d-e168-48fb-9a93-e2a851ec0afa\":{\"required\":false,\"sortOrder\":3}}}]}}},\"3bfd6f35-44a6-4ace-bbf9-33ef19c39b76\":{\"field\":\"60048af4-ec20-4feb-b4a7-8acfbabe0683\",\"name\":\"Vimeo Video Lockup\",\"handle\":\"vimeoVideoLockup\",\"sortOrder\":5,\"fields\":{\"2e75faa6-d16d-43cc-8990-a6bc6d131cc5\":{\"name\":\"Lockup Subhead\",\"handle\":\"lockupSubhead\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"6c558a71-8a0a-48fa-8cd5-d6a5236b308c\":{\"name\":\"Lockup Header\",\"handle\":\"lockupHeader\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"b21ad416-eb07-401c-84cf-20347c5801f5\":{\"name\":\"Vimeo Video ID\",\"handle\":\"embedLink\",\"instructions\":\"Add the Vimeo video ID here\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"336812660\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"contentColumnType\":\"text\",\"fieldGroup\":null}},\"fieldLayouts\":{\"f56f471d-951c-4347-8f19-4bbf1bb53421\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"2e75faa6-d16d-43cc-8990-a6bc6d131cc5\":{\"required\":false,\"sortOrder\":3},\"6c558a71-8a0a-48fa-8cd5-d6a5236b308c\":{\"required\":false,\"sortOrder\":2},\"b21ad416-eb07-401c-84cf-20347c5801f5\":{\"required\":true,\"sortOrder\":1}}}]}}},\"36b549fe-a335-4254-95c3-4b63973b2606\":{\"field\":\"5e84d008-2762-4327-b794-72545f962ae3\",\"name\":\"Double Column Block\",\"handle\":\"doubleColumnBlock\",\"sortOrder\":2,\"fields\":{\"4ad4277f-9804-430b-9b23-7c7ae9861fff\":{\"name\":\"Text Field\",\"handle\":\"textField\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Standard.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"b4940c29-af8b-4ca6-b4d1-5853a1c15f6d\":{\"name\":\"Image Field\",\"handle\":\"imageField\",\"instructions\":\"Add an image\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Assets\",\"settings\":{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"sources\":[\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":null},\"cb3350d8-6ba7-4f19-aa94-699bcf756ad7\":{\"name\":\"Top Border\",\"handle\":\"topBorder\",\"instructions\":\"Check to show a border at the top of the content block\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Checkboxes\",\"settings\":{\"multi\":true,\"options\":[{\"label\":\"Show Border\",\"value\":\"showBorder\",\"default\":\"\"}]},\"contentColumnType\":\"string\",\"fieldGroup\":null}},\"fieldLayouts\":{\"99ad76d4-c64d-476b-8dc2-5fd7d9dbb4c5\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"4ad4277f-9804-430b-9b23-7c7ae9861fff\":{\"required\":false,\"sortOrder\":2},\"b4940c29-af8b-4ca6-b4d1-5853a1c15f6d\":{\"required\":false,\"sortOrder\":1},\"cb3350d8-6ba7-4f19-aa94-699bcf756ad7\":{\"required\":false,\"sortOrder\":3}}}]}}},\"267381a2-0e74-4527-b86e-09d3c91bdeee\":{\"field\":\"5e84d008-2762-4327-b794-72545f962ae3\",\"name\":\"Single Column Block\",\"handle\":\"singleColumnBlock\",\"sortOrder\":3,\"fields\":{\"3ecd366a-3b35-4eb5-819b-9c4cd68593b2\":{\"name\":\"Text Field\",\"handle\":\"textField\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Standard.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"abb3a5df-a2a9-4dc3-aade-0098ede51bb1\":{\"name\":\"Image Field\",\"handle\":\"imageField\",\"instructions\":\"Add an image\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Assets\",\"settings\":{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"sources\":[\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":null},\"ed4f4001-22f0-4338-a60d-a0d84d8576e4\":{\"name\":\"Top Border\",\"handle\":\"topBorder\",\"instructions\":\"Check to show a border at the top of the content block\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Checkboxes\",\"settings\":{\"multi\":true,\"options\":[{\"label\":\"Show Border\",\"value\":\"showBorder\",\"default\":\"\"}]},\"contentColumnType\":\"string\",\"fieldGroup\":null}},\"fieldLayouts\":{\"5d9e317d-2d97-4a82-88bf-0b00d75c3969\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"3ecd366a-3b35-4eb5-819b-9c4cd68593b2\":{\"required\":false,\"sortOrder\":2},\"abb3a5df-a2a9-4dc3-aade-0098ede51bb1\":{\"required\":false,\"sortOrder\":1},\"ed4f4001-22f0-4338-a60d-a0d84d8576e4\":{\"required\":false,\"sortOrder\":3}}}]}}}},\"plugins\":{\"redactor\":{\"edition\":\"standard\",\"enabled\":true,\"schemaVersion\":\"2.3.0\"},\"imager\":{\"edition\":\"standard\",\"enabled\":true,\"schemaVersion\":\"2.0.0\"},\"constant-contact\":{\"edition\":\"standard\",\"enabled\":true,\"schemaVersion\":\"0.0.1\"}},\"globalSets\":{\"5fae239b-fc55-4e9d-913e-decd8dcc8d3a\":{\"name\":\"Header Copy\",\"handle\":\"headerCopy\",\"fieldLayouts\":{\"e764c720-5c68-41b0-a96a-7bd23e0f2fda\":{\"tabs\":[{\"name\":\"Copy\",\"sortOrder\":1,\"fields\":{\"d499c44e-e0d4-47e4-a4ec-d2f7727d723f\":{\"required\":false,\"sortOrder\":1}}}]}}},\"883d4f51-a9a9-41fd-bfed-0fbda8ff415b\":{\"name\":\"Footer Copy\",\"handle\":\"footerCopy\",\"fieldLayouts\":{\"6a5dcfed-ca4b-4255-b3c9-b537ce055e30\":{\"tabs\":[{\"name\":\"Copy\",\"sortOrder\":1,\"fields\":{\"d499c44e-e0d4-47e4-a4ec-d2f7727d723f\":{\"required\":false,\"sortOrder\":1}}}]}}},\"74f79638-484e-4e72-bc38-9ba1a4f3a3e2\":{\"name\":\"Footer Instagram Handle\",\"handle\":\"footerInstagramHandle\",\"fieldLayouts\":{\"eba588db-0266-455f-8f97-be8263b16bca\":{\"tabs\":[{\"name\":\"Instagram Handle\",\"sortOrder\":1,\"fields\":{\"d499c44e-e0d4-47e4-a4ec-d2f7727d723f\":{\"required\":false,\"sortOrder\":1}}}]}}},\"1edefc3b-f27f-4a43-85c8-e94098d20840\":{\"name\":\"Footer Twitter Handle\",\"handle\":\"footerTwitterHandle\",\"fieldLayouts\":{\"44131e2d-c2bf-44d9-83fe-6386212e7fce\":{\"tabs\":[{\"name\":\"Twitter Handle\",\"sortOrder\":1,\"fields\":{\"d499c44e-e0d4-47e4-a4ec-d2f7727d723f\":{\"required\":false,\"sortOrder\":1}}}]}}},\"a646d864-70f1-450a-a002-c14e63826e84\":{\"name\":\"Footer Facebook Handle\",\"handle\":\"footerFacebookHandle\",\"fieldLayouts\":{\"f76634af-0d2e-4a61-8c96-36c160c7335d\":{\"tabs\":[{\"name\":\"Facebook Handle\",\"sortOrder\":1,\"fields\":{\"d499c44e-e0d4-47e4-a4ec-d2f7727d723f\":{\"required\":false,\"sortOrder\":1}}}]}}}}}', '[]', '5DcZu0nzkQL2', '2019-11-16 18:40:28', '2019-11-16 18:40:28', '7eb6a088-ec22-42e8-b449-98430b01e64e');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixblocks`
--

CREATE TABLE `craft_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_matrixblocks`
--

INSERT INTO `craft_matrixblocks` (`id`, `ownerId`, `fieldId`, `typeId`, `sortOrder`, `deletedWithOwner`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(18, 2, 3, 1, 1, NULL, '2019-11-23 20:25:01', '2019-11-23 20:25:01', '70fee1ee-7c13-4f6b-90a6-878653544835'),
(19, 2, 3, 1, 2, NULL, '2019-11-23 20:25:01', '2019-11-23 20:25:01', '63767cea-160d-4fa2-b061-cca03869354d'),
(21, 20, 3, 1, 1, NULL, '2019-11-23 20:25:01', '2019-11-23 20:25:01', 'ee0f0ff0-80d1-4ee6-aff6-c9c7b6a64bfd'),
(22, 20, 3, 1, 2, NULL, '2019-11-23 20:25:01', '2019-11-23 20:25:01', 'd892567f-fc34-47d2-a932-95de5459d45f'),
(24, 23, 3, 1, 1, NULL, '2019-11-23 20:54:33', '2019-11-23 20:54:33', '77dba976-f75d-4c36-bae6-9793d1286fdc'),
(25, 23, 3, 1, 2, NULL, '2019-11-23 20:54:33', '2019-11-23 20:54:33', 'e8adec9f-b595-4abb-8f26-cff95cc930ac'),
(35, 34, 3, 1, 1, NULL, '2019-12-01 00:04:11', '2019-12-01 00:04:11', '0247b645-55f0-4aa4-a2ca-fffd4403a0c4'),
(36, 34, 3, 1, 2, NULL, '2019-12-01 00:04:11', '2019-12-01 00:04:11', 'a1bb9542-30f4-437d-ac91-c50cca362a41'),
(37, 2, 3, 2, 3, NULL, '2019-12-01 00:09:14', '2019-12-01 00:09:14', '079e2398-02df-4def-a4d0-7dcb73eff1ea'),
(39, 38, 3, 1, 1, NULL, '2019-12-01 00:09:15', '2019-12-01 00:09:15', 'b64546e7-fce7-493f-97f7-d2c57656542d'),
(40, 38, 3, 1, 2, NULL, '2019-12-01 00:09:15', '2019-12-01 00:09:15', '552286e4-93ad-4d68-b773-abd70bdac5ef'),
(41, 38, 3, 2, 3, NULL, '2019-12-01 00:09:15', '2019-12-01 00:09:15', 'f33f1ace-c284-41bc-bf68-44910ed034bb'),
(43, 42, 3, 1, 1, NULL, '2019-12-01 00:13:23', '2019-12-01 00:13:23', '1c053f6f-601c-467b-aff1-e8cd293ef9bc'),
(44, 42, 3, 1, 2, NULL, '2019-12-01 00:13:23', '2019-12-01 00:13:23', '4be613bd-e179-468f-bb06-4df872028d95'),
(45, 42, 3, 2, 3, NULL, '2019-12-01 00:13:23', '2019-12-01 00:13:23', 'e01517c1-a98f-49a4-8a62-229f5a17159e'),
(47, 46, 3, 1, 1, NULL, '2019-12-01 00:14:59', '2019-12-01 00:14:59', 'b1cdb12e-8aa3-44e6-820b-cecc8dd5f36b'),
(48, 46, 3, 1, 2, NULL, '2019-12-01 00:14:59', '2019-12-01 00:14:59', '6a81edf8-8eb3-4a27-88b7-8d38daa28ed1'),
(49, 46, 3, 2, 3, NULL, '2019-12-01 00:14:59', '2019-12-01 00:14:59', '0f7b0125-02f1-48f6-b11d-1b81a2fcbc2d'),
(53, 4, 10, 3, 1, 0, '2019-12-01 00:48:13', '2019-12-01 00:48:13', '9c16b0c4-c57a-420c-9735-c1e6c73ac7c0'),
(55, 54, 10, 3, 1, NULL, '2019-12-01 00:48:14', '2019-12-01 00:48:14', 'b344c20a-87b5-4d3d-8505-c569265430f0'),
(57, 56, 10, 3, 1, NULL, '2019-12-01 00:52:47', '2019-12-01 00:52:47', '3bd93e73-0359-4f6b-a80b-cf334c18300f'),
(59, 58, 10, 3, 1, NULL, '2019-12-01 00:52:48', '2019-12-01 00:52:48', 'a3245d1d-48f0-4b33-b41f-af87c5f42d20'),
(62, 61, 3, 1, 1, NULL, '2019-12-01 19:11:22', '2019-12-01 19:11:22', '444b91db-eab3-4192-a050-23b476823c2f'),
(63, 61, 3, 1, 2, NULL, '2019-12-01 19:11:22', '2019-12-01 19:11:22', 'e44188fb-4b51-4939-9a40-6343968e7325'),
(64, 61, 3, 2, 3, NULL, '2019-12-01 19:11:22', '2019-12-01 19:11:22', '3c3daf9e-7020-4a79-a3f4-dd8007b33f29'),
(66, 65, 3, 1, 1, NULL, '2019-12-04 03:38:48', '2019-12-04 03:38:48', 'b97300d7-5a9f-4532-85f3-a512c8d73a60'),
(67, 65, 3, 1, 2, NULL, '2019-12-04 03:38:48', '2019-12-04 03:38:48', 'dbd64813-bf65-41b8-93c0-753b990be046'),
(68, 65, 3, 2, 3, NULL, '2019-12-04 03:38:48', '2019-12-04 03:38:48', '871e1618-be44-4e2e-80f6-30d0980d4e7f'),
(71, 4, 10, 3, 1, 1, '2019-12-04 20:03:31', '2019-12-04 20:03:31', 'c1edbafc-4f60-4a81-8df2-24cc8b6a8048'),
(73, 72, 10, 3, 1, NULL, '2019-12-04 20:03:31', '2019-12-04 20:03:31', '6e61fd57-42ba-43fc-8173-09b7ae6d6e05'),
(75, 74, 3, 1, 1, NULL, '2019-12-04 20:09:38', '2019-12-04 20:09:38', '7e464fb1-4266-42e6-816b-8a31f624e504'),
(76, 74, 3, 1, 2, NULL, '2019-12-04 20:09:38', '2019-12-04 20:09:38', 'afc2de2a-1465-48c3-ad3c-1a4116d47085'),
(77, 74, 3, 2, 3, NULL, '2019-12-04 20:09:38', '2019-12-04 20:09:38', 'e39e9155-01a0-40f8-9353-b997311cf0a7'),
(79, 78, 3, 1, 1, NULL, '2019-12-04 20:10:15', '2019-12-04 20:10:15', 'ca4ab5ca-6da4-49c9-bdb1-554b26e629cd'),
(80, 78, 3, 1, 2, NULL, '2019-12-04 20:10:15', '2019-12-04 20:10:15', '87de00c9-047e-4307-b744-21a33f539f46'),
(81, 78, 3, 2, 3, NULL, '2019-12-04 20:10:15', '2019-12-04 20:10:15', '4682af82-881d-4612-9cf6-66c295a5074f'),
(83, 82, 10, 3, 1, NULL, '2019-12-04 20:12:28', '2019-12-04 20:12:28', 'f018c203-0883-4361-9a08-b38312b361b7'),
(85, 84, 10, 3, 1, NULL, '2019-12-04 20:12:54', '2019-12-04 20:12:54', '575fa393-6f37-4dd6-a3a9-f974172058a5'),
(86, 6, 10, 3, 1, 1, '2019-12-04 20:14:55', '2019-12-04 20:14:55', '59c9c26b-08d6-4d05-9e03-5550811cfdb9'),
(88, 87, 10, 3, 1, NULL, '2019-12-04 20:14:55', '2019-12-04 20:14:55', '78822d75-1bd8-49b2-a267-c4b4bfca3eb1'),
(90, 89, 10, 3, 1, NULL, '2019-12-04 20:15:27', '2019-12-04 20:15:27', '43da0ff2-de93-4f69-b2fe-965af9b8f184'),
(92, 91, 10, 3, 1, NULL, '2019-12-04 20:15:40', '2019-12-04 20:15:40', '2da9a837-9485-419a-8328-b7d6ad2f10ee'),
(94, 93, 10, 3, 1, NULL, '2019-12-04 20:15:54', '2019-12-04 20:15:54', 'c36ee8e7-8cde-4b05-8298-80ae036cceb8'),
(96, 95, 10, 3, 1, NULL, '2019-12-04 20:16:00', '2019-12-04 20:16:00', '504158bb-e879-4b20-b135-6451e037051a'),
(98, 97, 10, 3, 1, NULL, '2019-12-04 20:16:10', '2019-12-04 20:16:10', '478eb81b-227f-4de2-8eb6-c0271164ca53'),
(100, 99, 3, 1, 1, NULL, '2019-12-04 20:18:01', '2019-12-04 20:18:01', '46ae5871-57ca-4384-bc1c-6a3227c95a0a'),
(101, 99, 3, 1, 2, NULL, '2019-12-04 20:18:01', '2019-12-04 20:18:01', '6e70ca5a-a844-4c8e-9eeb-50927c77b9f5'),
(102, 99, 3, 2, 3, NULL, '2019-12-04 20:18:01', '2019-12-04 20:18:01', 'd780cb1a-fd48-499e-a486-228ac4a6e041'),
(104, 103, 3, 1, 1, NULL, '2019-12-04 20:18:57', '2019-12-04 20:18:57', '9cac1d77-a254-4827-b017-9614457ef5c1'),
(105, 103, 3, 1, 2, NULL, '2019-12-04 20:18:57', '2019-12-04 20:18:57', 'c0af52b7-eac1-49c6-b964-e262a40c7a31'),
(106, 103, 3, 2, 3, NULL, '2019-12-04 20:18:57', '2019-12-04 20:18:57', '1e05e641-bd13-422a-a7ac-8d637788fa6d'),
(109, 108, 3, 1, 1, NULL, '2019-12-04 20:28:08', '2019-12-04 20:28:08', '28a5989b-31a2-4585-ac63-06febb4255eb'),
(110, 108, 3, 1, 2, NULL, '2019-12-04 20:28:08', '2019-12-04 20:28:08', 'e31f14af-f4df-475f-b655-3d2cbcc6abe1'),
(111, 108, 3, 2, 3, NULL, '2019-12-04 20:28:08', '2019-12-04 20:28:08', 'dab7aa3b-5710-498d-a700-1afdf8230c76'),
(113, 112, 3, 1, 1, NULL, '2019-12-04 20:30:35', '2019-12-04 20:30:35', 'abcfec16-2205-4c85-90ae-79c1c4c4f2ae'),
(114, 112, 3, 1, 2, NULL, '2019-12-04 20:30:36', '2019-12-04 20:30:36', '04c11027-e40f-4794-a7f9-4d2c9ea478b9'),
(115, 112, 3, 2, 3, NULL, '2019-12-04 20:30:36', '2019-12-04 20:30:36', 'a4b8578a-9026-46d7-8a40-ba7bbbfe812b'),
(117, 116, 3, 1, 1, NULL, '2019-12-04 20:45:54', '2019-12-04 20:45:54', '75522b47-e16f-4d51-95f6-1062f3d0e3c0'),
(118, 116, 3, 1, 2, NULL, '2019-12-04 20:45:54', '2019-12-04 20:45:54', 'bcd3b2eb-6282-4c36-b14f-57ceee696089'),
(119, 116, 3, 2, 3, NULL, '2019-12-04 20:45:54', '2019-12-04 20:45:54', '848ced05-fed3-4af5-b59a-808d78f02a62'),
(122, 121, 3, 1, 1, NULL, '2019-12-04 20:50:15', '2019-12-04 20:50:15', 'c0d0764f-978f-4912-ae4b-00ddb77709fb'),
(123, 121, 3, 1, 2, NULL, '2019-12-04 20:50:15', '2019-12-04 20:50:15', 'e8b70f51-685f-4bee-bafe-04798cba6084'),
(124, 121, 3, 2, 3, NULL, '2019-12-04 20:50:15', '2019-12-04 20:50:15', '85da81ce-3242-45c8-b489-fb778daeeeb8'),
(127, 126, 3, 1, 1, NULL, '2019-12-04 21:00:19', '2019-12-04 21:00:19', 'ca76030a-62b5-4df7-b496-55d5310bc86c'),
(128, 126, 3, 1, 2, NULL, '2019-12-04 21:00:19', '2019-12-04 21:00:19', '09228d9f-aadb-48b5-884b-706a5aa2fd2e'),
(129, 126, 3, 2, 3, NULL, '2019-12-04 21:00:19', '2019-12-04 21:00:19', '64719f0c-2938-45fe-bc74-c493c4b66351'),
(132, 131, 3, 1, 1, NULL, '2019-12-04 21:08:49', '2019-12-04 21:08:49', '6447f944-8800-4598-80fa-4d72f015118c'),
(133, 131, 3, 1, 2, NULL, '2019-12-04 21:08:49', '2019-12-04 21:08:49', '90aa5525-c2a5-4168-b9fb-67c16f27c4ba'),
(134, 131, 3, 2, 3, NULL, '2019-12-04 21:08:49', '2019-12-04 21:08:49', '1fa99a99-899c-4ea1-bf41-9870ff5e87ba'),
(137, 136, 10, 3, 1, NULL, '2019-12-04 21:17:12', '2019-12-04 21:17:12', '4880928a-7305-4a01-b6d5-c8dbe0fa4a3e'),
(139, 138, 10, 3, 1, NULL, '2019-12-04 21:17:49', '2019-12-04 21:17:49', '683cb4a5-c81b-4f5f-bd8b-7769dc182d9b'),
(142, 141, 10, 3, 1, NULL, '2019-12-04 21:20:50', '2019-12-04 21:20:50', 'e7a9bb3d-4a12-4062-9590-316cbddf4707'),
(145, 144, 10, 3, 1, NULL, '2019-12-04 21:25:10', '2019-12-04 21:25:10', '9e5d28ec-fb82-4a6e-bfd1-698de8bc23bd'),
(147, 146, 10, 3, 1, NULL, '2019-12-04 21:34:09', '2019-12-04 21:34:09', '27dae070-5b3d-4674-ab6d-dde9f3e312df'),
(149, 148, 10, 3, 1, NULL, '2019-12-04 21:34:17', '2019-12-04 21:34:17', '1f5d9de1-1368-4284-bbd3-f67ecd9d5393'),
(151, 150, 10, 3, 1, NULL, '2019-12-04 21:34:34', '2019-12-04 21:34:34', '52a3ea75-fdef-4187-bb35-5e693ca641e9'),
(153, 152, 10, 3, 1, NULL, '2019-12-05 00:37:13', '2019-12-05 00:37:13', '86880486-a1af-485f-85f5-f5eef6e63e9b'),
(155, 154, 10, 3, 1, NULL, '2019-12-05 00:37:17', '2019-12-05 00:37:17', '2be96515-bee2-4510-9b56-d520e2f66425'),
(158, 157, 10, 3, 1, NULL, '2019-12-05 00:39:38', '2019-12-05 00:39:38', '16e2ead3-0f43-4d90-93e7-40f79ac372bc'),
(160, 159, 10, 3, 1, NULL, '2019-12-05 03:41:53', '2019-12-05 03:41:53', '1317f9a2-d230-4ad2-af77-1b170275e4d0'),
(163, 162, 3, 1, 1, NULL, '2019-12-11 01:38:00', '2019-12-11 01:38:00', 'e04b10a6-ff92-4f79-b2d9-d5602612a49a'),
(164, 162, 3, 1, 2, NULL, '2019-12-11 01:38:00', '2019-12-11 01:38:00', 'b2f0791d-df9c-41c7-b92d-bcf48ce720c4'),
(165, 162, 3, 2, 3, NULL, '2019-12-11 01:38:00', '2019-12-11 01:38:00', '3f9cc1f4-a1a4-49aa-b353-5c58f03f8c2b'),
(167, 166, 3, 1, 1, NULL, '2019-12-11 01:38:01', '2019-12-11 01:38:01', '4b046307-5692-407e-9772-6eb4884a2d6c'),
(168, 166, 3, 1, 2, NULL, '2019-12-11 01:38:01', '2019-12-11 01:38:01', '815bb751-06ad-4ba7-af2e-73a9bad323a5'),
(169, 166, 3, 2, 3, NULL, '2019-12-11 01:38:01', '2019-12-11 01:38:01', 'e39cbfd5-025e-402e-bb8d-7ef5ac8734ec'),
(175, 174, 10, 3, 1, NULL, '2020-01-16 02:07:27', '2020-01-16 02:07:27', '38e40af4-92b3-478c-b46f-ea265699d716'),
(177, 176, 10, 3, 1, NULL, '2020-01-16 02:07:27', '2020-01-16 02:07:27', 'fe06ed20-91b0-4f2e-8d11-6ebf04bd12dd'),
(192, 191, 10, 3, 1, NULL, '2020-01-16 02:10:16', '2020-01-16 02:10:16', '6ce01be9-103f-4e0f-acd7-dc19e6496c38'),
(194, 193, 10, 3, 1, NULL, '2020-01-16 02:10:25', '2020-01-16 02:10:25', '6f158437-a490-4591-859b-11f9b59ee64c'),
(265, 264, 10, 3, 1, NULL, '2020-01-19 01:36:31', '2020-01-19 01:36:31', '084e5483-2fcf-43fd-b5e4-067147e04b4c'),
(268, 267, 3, 1, 1, NULL, '2020-01-19 02:06:32', '2020-01-19 02:06:32', 'b7a71fca-f57b-4399-8155-694dcc4a20e2'),
(269, 267, 3, 1, 2, NULL, '2020-01-19 02:06:32', '2020-01-19 02:06:32', 'eafc92a5-67ec-403d-9f88-a5a60e9d47d5'),
(270, 267, 3, 2, 3, NULL, '2020-01-19 02:06:33', '2020-01-19 02:06:33', 'bb40120a-9fda-4cc3-b431-c1f0c744e458'),
(274, 271, 10, 3, 1, 0, '2020-01-21 01:58:20', '2020-01-21 01:58:20', '3658739a-b27d-4621-b1c1-932b5fd8c653'),
(276, 275, 10, 3, 1, NULL, '2020-01-21 01:58:20', '2020-01-21 01:58:20', '01840782-5412-4e2a-add8-d43f8cff9048'),
(277, 271, 10, 10, 2, 0, '2020-01-21 02:20:06', '2020-01-21 02:20:06', '8ae6ae1e-5d8a-42e0-91fc-d51688a2a382'),
(278, 271, 10, 11, 3, 0, '2020-01-21 02:20:06', '2020-01-21 02:20:06', 'd4c5d68f-e325-4199-838c-427d1c4c7e9d'),
(279, 271, 10, 11, 4, 0, '2020-01-21 02:20:06', '2020-01-21 02:20:06', '36f29630-9226-43b6-ab8a-2ffcd58ffcf5'),
(280, 271, 10, 11, 5, 0, '2020-01-21 02:20:06', '2020-01-21 02:20:06', '7573248d-6c8f-45ee-a56c-afe17bfad4d5'),
(281, 271, 10, 11, 6, 0, '2020-01-21 02:20:06', '2020-01-21 02:20:06', 'c3b41c26-8988-4ce2-bf96-11c3b0e6c1f3'),
(283, 282, 10, 3, 1, NULL, '2020-01-21 02:20:06', '2020-01-21 02:20:06', 'b8499565-4bbe-45d0-ac52-ce3c7a4d8e80'),
(284, 282, 10, 10, 2, NULL, '2020-01-21 02:20:07', '2020-01-21 02:20:07', '2a65c902-b685-4834-bb30-870308d02d93'),
(285, 282, 10, 11, 3, NULL, '2020-01-21 02:20:07', '2020-01-21 02:20:07', 'a3f20276-fe35-4a8c-a034-80f91af96ac3'),
(286, 282, 10, 11, 4, NULL, '2020-01-21 02:20:07', '2020-01-21 02:20:07', '7405f044-dd57-4efb-9405-f8463a66d0ca'),
(287, 282, 10, 11, 5, NULL, '2020-01-21 02:20:07', '2020-01-21 02:20:07', '19eb87fb-5944-4718-b40b-118b9dd096b1'),
(288, 282, 10, 11, 6, NULL, '2020-01-21 02:20:07', '2020-01-21 02:20:07', '375953b1-0ed9-4350-9436-dfb2ff591366'),
(290, 289, 10, 3, 1, NULL, '2020-01-21 02:38:10', '2020-01-21 02:38:10', '10dbd9a4-1bfe-4c00-ac75-c76166e63caf'),
(291, 289, 10, 10, 2, NULL, '2020-01-21 02:38:10', '2020-01-21 02:38:10', '4abfb65f-5c5d-4fdb-8313-bde1f039e965'),
(292, 289, 10, 11, 3, NULL, '2020-01-21 02:38:10', '2020-01-21 02:38:10', 'b216ce6f-0c36-44d0-b7d7-384fa87a6e62'),
(293, 289, 10, 11, 4, NULL, '2020-01-21 02:38:10', '2020-01-21 02:38:10', '1111e502-c423-445b-a71c-7a8d26bbb8f2'),
(294, 289, 10, 11, 5, NULL, '2020-01-21 02:38:10', '2020-01-21 02:38:10', '505e5a52-0676-4449-a5e7-010c388c51dc'),
(295, 289, 10, 11, 6, NULL, '2020-01-21 02:38:10', '2020-01-21 02:38:10', 'a8eb1c23-57ed-451d-b894-7fb4756a72e0'),
(297, 296, 10, 3, 1, NULL, '2020-01-25 14:39:03', '2020-01-25 14:39:03', '9e1e0084-565f-4242-8c15-b1029ae3167e'),
(298, 296, 10, 10, 2, NULL, '2020-01-25 14:39:03', '2020-01-25 14:39:03', '3c361d24-da8e-4467-b2e4-6c9e9e3316ae'),
(299, 296, 10, 11, 3, NULL, '2020-01-25 14:39:03', '2020-01-25 14:39:03', '0f98e5e9-2ed6-4db5-9916-5950add2c8c9'),
(300, 296, 10, 11, 4, NULL, '2020-01-25 14:39:03', '2020-01-25 14:39:03', 'b7ebee1c-ce23-4d04-8775-2b7add9dc4d4'),
(301, 296, 10, 11, 5, NULL, '2020-01-25 14:39:03', '2020-01-25 14:39:03', 'd7d825ee-4bca-4827-9455-2ca1d19289e8'),
(302, 296, 10, 11, 6, NULL, '2020-01-25 14:39:03', '2020-01-25 14:39:03', '2ea73eb2-8e4e-4b08-92c0-59be26d4dff6'),
(305, 304, 10, 3, 1, NULL, '2020-01-25 14:42:36', '2020-01-25 14:42:36', '7ee992fa-006f-413a-9a4a-cb982cace25d'),
(306, 304, 10, 10, 2, NULL, '2020-01-25 14:42:36', '2020-01-25 14:42:36', 'b246cbf8-a120-4af1-bfab-176081c12d38'),
(307, 304, 10, 11, 3, NULL, '2020-01-25 14:42:36', '2020-01-25 14:42:36', '26be8dfc-cb73-4d73-ae20-cd8491664d79'),
(308, 304, 10, 11, 4, NULL, '2020-01-25 14:42:37', '2020-01-25 14:42:37', '67b07995-3f11-4f12-a5d6-f3a8186537a3'),
(309, 304, 10, 11, 5, NULL, '2020-01-25 14:42:37', '2020-01-25 14:42:37', 'd418f169-32a2-4d84-bc60-8a1ad36ee9fa'),
(310, 304, 10, 11, 6, NULL, '2020-01-25 14:42:37', '2020-01-25 14:42:37', '37d935e2-0c61-4929-8105-4982a222573b'),
(312, 311, 10, 3, 1, NULL, '2020-01-25 14:45:11', '2020-01-25 14:45:11', 'ff8bdf9d-519a-482e-bd4b-95df08cc05c0'),
(313, 311, 10, 10, 2, NULL, '2020-01-25 14:45:11', '2020-01-25 14:45:11', '56e4fd98-7bea-4b3d-85b7-eb775da3bc84'),
(314, 311, 10, 11, 3, NULL, '2020-01-25 14:45:11', '2020-01-25 14:45:11', '862015f3-2676-4eae-aba1-319d4e492e49'),
(315, 311, 10, 11, 4, NULL, '2020-01-25 14:45:11', '2020-01-25 14:45:11', 'f98624d1-af7e-46fc-9be0-a6e40db07554'),
(316, 311, 10, 11, 5, NULL, '2020-01-25 14:45:11', '2020-01-25 14:45:11', '7bde8ff6-8c84-431c-ba17-195bea1bd79b'),
(317, 311, 10, 11, 6, NULL, '2020-01-25 14:45:11', '2020-01-25 14:45:11', 'cfd1ef09-8bc7-4486-bc8f-6bf0548fbad7'),
(320, 319, 10, 3, 1, NULL, '2020-01-25 14:51:00', '2020-01-25 14:51:00', 'c223a565-d96c-4e6f-839b-eefbb4d1abdb'),
(321, 319, 10, 10, 2, NULL, '2020-01-25 14:51:00', '2020-01-25 14:51:00', '5273cbab-1bdb-4af0-a842-11c9d765d3de'),
(322, 319, 10, 11, 3, NULL, '2020-01-25 14:51:00', '2020-01-25 14:51:00', 'd7511de8-1232-451d-bc2f-a1701fafd335'),
(323, 319, 10, 11, 4, NULL, '2020-01-25 14:51:00', '2020-01-25 14:51:00', '60033b6c-3b4d-4cd2-af80-ce0e78780564'),
(324, 319, 10, 11, 5, NULL, '2020-01-25 14:51:00', '2020-01-25 14:51:00', '6bfb9e16-e7cc-4ad0-a4e6-d1cd130014b8'),
(325, 319, 10, 11, 6, NULL, '2020-01-25 14:51:00', '2020-01-25 14:51:00', '019882f0-5498-480b-8774-8823f7b8779f'),
(334, 271, 10, 3, 1, NULL, '2020-01-25 15:35:42', '2020-01-25 15:35:42', '7d427c9c-c30b-4ecd-b1c3-33bb95f8ad0c'),
(335, 271, 10, 10, 2, NULL, '2020-01-25 15:35:42', '2020-01-25 15:35:42', '2545ef55-6f5c-455e-8f4f-946402bedff3'),
(336, 271, 10, 11, 3, NULL, '2020-01-25 15:35:42', '2020-01-25 15:35:42', '2e596b81-2a27-4e78-b906-0d4e39cbfdb1'),
(337, 271, 10, 11, 4, NULL, '2020-01-25 15:35:42', '2020-01-25 15:35:42', 'fe1fe7ff-1f9f-4230-bf81-3563e5bcaecc'),
(338, 271, 10, 11, 5, NULL, '2020-01-25 15:35:43', '2020-01-25 15:35:43', 'bc48d5aa-28b2-4fd7-bf71-e6f90106c0a8'),
(339, 271, 10, 11, 6, NULL, '2020-01-25 15:35:43', '2020-01-25 15:35:43', 'f776a556-f15d-433b-bdaf-63f1c5d50d73'),
(341, 340, 10, 3, 1, NULL, '2020-01-25 15:35:43', '2020-01-25 15:35:43', 'cc4462e9-afde-4655-aaa6-dcecef8e2dbd'),
(342, 340, 10, 10, 2, NULL, '2020-01-25 15:35:43', '2020-01-25 15:35:43', '54331205-e303-46da-b9e1-7c4cb9192497'),
(343, 340, 10, 11, 3, NULL, '2020-01-25 15:35:43', '2020-01-25 15:35:43', '3cfb12f7-0202-4d88-a12c-c50156cf595d'),
(344, 340, 10, 11, 4, NULL, '2020-01-25 15:35:43', '2020-01-25 15:35:43', 'b4e09a9c-0db8-4eda-a8ae-390e9f93d73b'),
(345, 340, 10, 11, 5, NULL, '2020-01-25 15:35:43', '2020-01-25 15:35:43', '7c07d445-adb7-48b6-b047-4a57268a5263'),
(346, 340, 10, 11, 6, NULL, '2020-01-25 15:35:44', '2020-01-25 15:35:44', '30b2ff9b-2448-4b31-8df8-0dc39e2b8211'),
(348, 347, 10, 3, 1, NULL, '2020-01-25 15:37:16', '2020-01-25 15:37:16', '413f8bc9-c368-406c-809b-97af7b7acae8'),
(349, 347, 10, 10, 2, NULL, '2020-01-25 15:37:16', '2020-01-25 15:37:16', 'f0bf0bf0-3bc6-4bb1-ba97-694b02aecc49'),
(350, 347, 10, 11, 3, NULL, '2020-01-25 15:37:16', '2020-01-25 15:37:16', '5cd2e6da-6f3b-413e-a760-df0d76e3cfa0'),
(351, 347, 10, 11, 4, NULL, '2020-01-25 15:37:17', '2020-01-25 15:37:17', 'ad80ff05-0ae1-4b2e-a1b2-3824ee6db372'),
(352, 347, 10, 11, 5, NULL, '2020-01-25 15:37:17', '2020-01-25 15:37:17', 'c0a9e76c-0472-42af-85b2-2551bfd808b3'),
(353, 347, 10, 11, 6, NULL, '2020-01-25 15:37:17', '2020-01-25 15:37:17', 'eb48091f-13bb-4380-8b9b-8e8d2f289cdf'),
(355, 354, 10, 3, 1, NULL, '2020-01-25 15:38:16', '2020-01-25 15:38:16', '3c4db8a4-f272-409b-9093-4e995029cc2a'),
(356, 354, 10, 10, 2, NULL, '2020-01-25 15:38:16', '2020-01-25 15:38:16', '6caf5724-2425-4038-941f-db7fb628f2ae'),
(357, 354, 10, 11, 3, NULL, '2020-01-25 15:38:16', '2020-01-25 15:38:16', '9db88142-188a-4120-90e8-cba45bd1c89a'),
(358, 354, 10, 11, 4, NULL, '2020-01-25 15:38:16', '2020-01-25 15:38:16', '884ec9f6-f67a-4971-a1ce-bb128b458512'),
(359, 354, 10, 11, 5, NULL, '2020-01-25 15:38:16', '2020-01-25 15:38:16', '0ec41d2f-d0af-46d4-aa06-2bce9ffd2ae1'),
(360, 354, 10, 11, 6, NULL, '2020-01-25 15:38:16', '2020-01-25 15:38:16', 'e3d84221-767b-42dd-ab76-2cf076ea9dbd'),
(362, 361, 10, 3, 1, NULL, '2020-01-25 15:42:22', '2020-01-25 15:42:22', '5ed52dd7-6591-4a2e-acd8-4428a680268f'),
(363, 361, 10, 10, 2, NULL, '2020-01-25 15:42:22', '2020-01-25 15:42:22', 'e1706665-1842-4045-abbc-6f9716d4d336'),
(364, 361, 10, 11, 3, NULL, '2020-01-25 15:42:22', '2020-01-25 15:42:22', '8d796703-7db3-4fb1-966f-d007a803e720'),
(365, 361, 10, 11, 4, NULL, '2020-01-25 15:42:22', '2020-01-25 15:42:22', '97eee1dd-32ee-4596-aea7-067c031a9012'),
(366, 361, 10, 11, 5, NULL, '2020-01-25 15:42:22', '2020-01-25 15:42:22', '0e946146-015f-45b7-8b8a-438fbc7bf779'),
(367, 361, 10, 11, 6, NULL, '2020-01-25 15:42:22', '2020-01-25 15:42:22', '0e264681-a424-4ceb-97f2-cd67c4b6c699'),
(369, 368, 10, 3, 1, NULL, '2020-01-25 15:47:31', '2020-01-25 15:47:31', '80c17b2e-4199-43ae-9b54-97cd048b72e5'),
(370, 368, 10, 10, 2, NULL, '2020-01-25 15:47:31', '2020-01-25 15:47:31', '41c449a7-38ad-4e4f-b238-0fded97eac0b'),
(371, 368, 10, 11, 3, NULL, '2020-01-25 15:47:31', '2020-01-25 15:47:31', 'a1881af2-642e-48dc-a177-d65aa47fbb2f'),
(372, 368, 10, 11, 4, NULL, '2020-01-25 15:47:31', '2020-01-25 15:47:31', '83653d12-ed8a-48fd-a611-f1b5e4481082'),
(373, 368, 10, 11, 5, NULL, '2020-01-25 15:47:31', '2020-01-25 15:47:31', '2560f120-65a8-43fa-96f7-3b5c8cd8c219'),
(374, 368, 10, 11, 6, NULL, '2020-01-25 15:47:31', '2020-01-25 15:47:31', 'd0aa2f16-e27e-4891-a226-29a86618cd2e'),
(376, 375, 10, 3, 1, NULL, '2020-01-25 15:50:28', '2020-01-25 15:50:28', '591d779d-998b-466e-8013-ea8f89caf631'),
(377, 375, 10, 10, 2, NULL, '2020-01-25 15:50:28', '2020-01-25 15:50:28', '6a0ae771-5754-4872-b92d-976ef9c70c31'),
(378, 375, 10, 11, 3, NULL, '2020-01-25 15:50:28', '2020-01-25 15:50:28', 'a11a1dc1-41d9-469f-a889-096a51298eec'),
(379, 375, 10, 11, 4, NULL, '2020-01-25 15:50:28', '2020-01-25 15:50:28', '5a5fa752-5f16-4d8c-98c0-5f55c510e5c3'),
(380, 375, 10, 11, 5, NULL, '2020-01-25 15:50:28', '2020-01-25 15:50:28', '3b2637f3-025e-476c-b0ae-cdfae03ad7fc'),
(381, 375, 10, 11, 6, NULL, '2020-01-25 15:50:28', '2020-01-25 15:50:28', 'c5e17f97-8ab2-4b39-bdd0-4da0a05bba96'),
(383, 271, 10, 10, 7, NULL, '2020-01-25 15:54:58', '2020-01-25 15:54:58', '838d1afe-939e-4a09-88e5-abdc80c0f5e1'),
(385, 384, 10, 3, 1, NULL, '2020-01-25 15:54:59', '2020-01-25 15:54:59', '9f4c795c-3227-41d9-9765-637372bdb084'),
(386, 384, 10, 10, 2, NULL, '2020-01-25 15:54:59', '2020-01-25 15:54:59', 'c3a50032-1e2e-4915-b2ea-a37dd66cb1f1'),
(387, 384, 10, 11, 3, NULL, '2020-01-25 15:54:59', '2020-01-25 15:54:59', 'fc3b18ec-1e4b-4751-905c-7e3d5399df51'),
(388, 384, 10, 11, 4, NULL, '2020-01-25 15:54:59', '2020-01-25 15:54:59', '870ccc76-086c-4a1c-a68d-4547242d29b5'),
(389, 384, 10, 11, 5, NULL, '2020-01-25 15:54:59', '2020-01-25 15:54:59', 'c866fe29-62bb-414c-93a2-21b944078272'),
(390, 384, 10, 11, 6, NULL, '2020-01-25 15:54:59', '2020-01-25 15:54:59', 'be94c6b8-b1d3-4261-baa8-7d18c845f32d'),
(391, 384, 10, 10, 7, NULL, '2020-01-25 15:54:59', '2020-01-25 15:54:59', '86d02255-30d1-4712-9f09-e9a96129685f'),
(393, 392, 10, 3, 1, NULL, '2020-01-25 15:57:39', '2020-01-25 15:57:39', '68694f4a-4405-4890-9442-7c4eb7bc1b7f'),
(394, 392, 10, 10, 2, NULL, '2020-01-25 15:57:39', '2020-01-25 15:57:39', 'dddbad80-4fa3-4359-9fbd-7a9799fffc5e'),
(395, 392, 10, 11, 3, NULL, '2020-01-25 15:57:39', '2020-01-25 15:57:39', 'e3371477-7700-446f-99e4-79306d009e73'),
(396, 392, 10, 11, 4, NULL, '2020-01-25 15:57:40', '2020-01-25 15:57:40', 'a9bd9298-1483-416d-a92a-d981ca0ba733'),
(397, 392, 10, 11, 5, NULL, '2020-01-25 15:57:40', '2020-01-25 15:57:40', '8efee31b-de23-41f4-81c5-84851af4dc76'),
(398, 392, 10, 11, 6, NULL, '2020-01-25 15:57:40', '2020-01-25 15:57:40', 'f996ed85-3f18-42f1-989b-7646cce1faac'),
(399, 392, 10, 10, 7, NULL, '2020-01-25 15:57:40', '2020-01-25 15:57:40', '5890d249-46b2-4b2c-bdae-08aa109b6830'),
(401, 400, 10, 3, 1, NULL, '2020-01-25 16:13:18', '2020-01-25 16:13:18', 'a20be2a7-5c29-46dd-a8bc-97d0b3d44043'),
(402, 400, 10, 10, 2, NULL, '2020-01-25 16:13:18', '2020-01-25 16:13:18', '4d47a166-01bc-4ae3-951d-6fc6b8f9cd52'),
(403, 400, 10, 11, 3, NULL, '2020-01-25 16:13:19', '2020-01-25 16:13:19', 'c95fcd8c-c954-4c2f-aff5-ddba89d0be0d'),
(404, 400, 10, 11, 4, NULL, '2020-01-25 16:13:19', '2020-01-25 16:13:19', '62b8e59f-08ab-4aa1-b028-a46f9e6359cf'),
(405, 400, 10, 11, 5, NULL, '2020-01-25 16:13:19', '2020-01-25 16:13:19', '0604a499-aad4-4b6f-8439-96ec045e8482'),
(406, 400, 10, 11, 6, NULL, '2020-01-25 16:13:19', '2020-01-25 16:13:19', 'f49d78a2-0493-4279-8f17-f9df196329b7'),
(407, 400, 10, 10, 7, NULL, '2020-01-25 16:13:19', '2020-01-25 16:13:19', '67104a42-f01b-4736-bacf-b0f90a99aa29'),
(409, 408, 10, 3, 1, NULL, '2020-01-25 16:13:37', '2020-01-25 16:13:37', '8fcbc15e-fa45-4926-a367-bff581a1a8f9'),
(410, 408, 10, 10, 2, NULL, '2020-01-25 16:13:37', '2020-01-25 16:13:37', 'c0600aaf-3bd0-48b3-869c-545e4663af2a'),
(411, 408, 10, 11, 3, NULL, '2020-01-25 16:13:37', '2020-01-25 16:13:37', '71aaf8a5-f336-472c-b5f5-b32ca4ed3af9'),
(412, 408, 10, 11, 4, NULL, '2020-01-25 16:13:37', '2020-01-25 16:13:37', '4d272936-0af9-43ba-9905-a72085385c44'),
(413, 408, 10, 11, 5, NULL, '2020-01-25 16:13:37', '2020-01-25 16:13:37', '3b56e15c-1314-482a-9676-033a674bc428'),
(414, 408, 10, 11, 6, NULL, '2020-01-25 16:13:37', '2020-01-25 16:13:37', '24bb2182-5750-4105-be2e-66a5f4317a04'),
(415, 408, 10, 10, 7, NULL, '2020-01-25 16:13:37', '2020-01-25 16:13:37', '8247177d-b743-45b8-9a3d-f3e452a9937a'),
(417, 416, 10, 3, 1, NULL, '2020-01-25 16:15:58', '2020-01-25 16:15:58', 'f95743a4-e3cd-4ff5-b293-b26dfd020b8c'),
(418, 416, 10, 10, 2, NULL, '2020-01-25 16:15:58', '2020-01-25 16:15:58', '6b22f04c-b7d7-4fe3-a97c-9ed811631cda'),
(419, 416, 10, 11, 3, NULL, '2020-01-25 16:15:58', '2020-01-25 16:15:58', '87e86de4-4cf6-4ed5-88a7-b786a3321a82'),
(420, 416, 10, 11, 4, NULL, '2020-01-25 16:15:58', '2020-01-25 16:15:58', 'd025632a-d0d5-4ef7-898a-3eefb7c75903'),
(421, 416, 10, 11, 5, NULL, '2020-01-25 16:15:58', '2020-01-25 16:15:58', '640371f5-90ca-432d-82aa-0d1cba5f3c6c'),
(422, 416, 10, 11, 6, NULL, '2020-01-25 16:15:58', '2020-01-25 16:15:58', 'd1a94a25-b9eb-412f-b6f8-b911f7822948'),
(423, 416, 10, 10, 7, NULL, '2020-01-25 16:15:58', '2020-01-25 16:15:58', '6fb0472b-d9eb-4ae4-8db9-fdde1442fbb6'),
(425, 424, 10, 3, 1, NULL, '2020-01-25 16:16:35', '2020-01-25 16:16:35', '69f72df5-6780-4c69-83f3-e2a3b0151333'),
(426, 424, 10, 10, 2, NULL, '2020-01-25 16:16:35', '2020-01-25 16:16:35', '1d3d60c2-a2bb-4a94-96c4-0c4abceffb2e'),
(427, 424, 10, 11, 3, NULL, '2020-01-25 16:16:35', '2020-01-25 16:16:35', 'dfe77409-e142-4f3b-b041-ba668824bfe6'),
(428, 424, 10, 11, 4, NULL, '2020-01-25 16:16:35', '2020-01-25 16:16:35', 'd3b9b39b-1564-465b-8abd-0f397c4ad9e5'),
(429, 424, 10, 11, 5, NULL, '2020-01-25 16:16:35', '2020-01-25 16:16:35', '7a6841a2-825e-45b5-9f68-b63ac10cc6b6'),
(430, 424, 10, 11, 6, NULL, '2020-01-25 16:16:35', '2020-01-25 16:16:35', '4f71bf5b-578f-4efd-b8fa-65db023314da'),
(431, 424, 10, 10, 7, NULL, '2020-01-25 16:16:35', '2020-01-25 16:16:35', '6dd064b0-fd0a-4ee2-a8ce-efdaa5908e39'),
(432, 205, 10, 10, 1, NULL, '2020-01-25 16:30:45', '2020-01-25 16:30:45', '02ddf002-51a3-4465-bd01-6dd62157b6d9'),
(433, 205, 10, 10, 2, NULL, '2020-01-25 16:30:45', '2020-01-25 16:30:45', '66f552c2-d963-4299-84ee-2f09a0bccf4b'),
(434, 205, 10, 10, 3, NULL, '2020-01-25 16:30:45', '2020-01-25 16:30:45', '58419afd-cb11-457c-b1f4-0f08ebc588ce'),
(436, 435, 10, 10, 1, NULL, '2020-01-25 16:30:46', '2020-01-25 16:30:46', '1296e97c-1644-44b6-a783-80076e004091'),
(437, 435, 10, 10, 2, NULL, '2020-01-25 16:30:46', '2020-01-25 16:30:46', 'ca90f9e2-c7fe-42d1-8160-0ac93aaaa36a'),
(438, 435, 10, 10, 3, NULL, '2020-01-25 16:30:46', '2020-01-25 16:30:46', '0116a3e9-cda3-45f6-b507-415d5d49ae42'),
(440, 439, 10, 10, 1, NULL, '2020-01-25 16:31:35', '2020-01-25 16:31:35', '8452d5ec-472c-4331-a64e-f7bb4baf059d'),
(441, 439, 10, 10, 2, NULL, '2020-01-25 16:31:35', '2020-01-25 16:31:35', '5b7ad4f5-0013-40c4-816b-784a20ba7a60'),
(442, 439, 10, 10, 3, NULL, '2020-01-25 16:31:35', '2020-01-25 16:31:35', '09177ad9-530b-43c3-98f9-52db327c8768'),
(444, 443, 10, 10, 1, NULL, '2020-01-25 16:41:05', '2020-01-25 16:41:05', 'cf2301a4-bfcb-4db5-8759-f81c21e82002'),
(445, 443, 10, 10, 2, NULL, '2020-01-25 16:41:05', '2020-01-25 16:41:05', '31956190-e199-49f1-81a6-ec8ab08d9232'),
(446, 443, 10, 10, 3, NULL, '2020-01-25 16:41:05', '2020-01-25 16:41:05', 'a1beffdd-d186-4459-90bd-93063e772b3a');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixblocktypes`
--

CREATE TABLE `craft_matrixblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_matrixblocktypes`
--

INSERT INTO `craft_matrixblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `name`, `handle`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 3, 1, 'Content Lockup', 'contentLockup', 1, '2019-11-23 17:22:48', '2019-11-23 17:22:48', '6e01c8fe-f719-4b7f-b50a-9bff2d7cf374'),
(2, 3, 9, 'Video Lockup', 'videoLockup', 2, '2019-12-01 00:06:28', '2019-12-01 00:06:28', '04454127-324e-4600-80e5-b650f2f27329'),
(3, 10, 10, 'Full Width Column Block', 'fullWidthColumnBlock', 1, '2019-12-01 00:43:50', '2020-01-21 01:56:14', '7bc547ca-d99b-4a4c-bc2f-4f197497c439'),
(6, 3, 13, 'Youtube Video Lockup', 'youtubeVideoLockup', 3, '2019-12-05 00:36:38', '2019-12-05 00:36:38', '6245676f-a107-446a-a920-3acee669c93c'),
(7, 3, 14, 'Facebook Video Lockup', 'facebookVideoLockup', 4, '2019-12-05 00:36:38', '2019-12-05 00:36:38', '249e5662-37ce-4628-a3e3-a908af810f4d'),
(8, 3, 15, 'Vimeo Video Lockup', 'vimeoVideoLockup', 5, '2019-12-05 00:36:38', '2019-12-05 00:36:38', '3bfd6f35-44a6-4ace-bbf9-33ef19c39b76'),
(10, 10, 20, 'Double Column Block', 'doubleColumnBlock', 2, '2020-01-21 01:56:14', '2020-01-21 01:56:14', '36b549fe-a335-4254-95c3-4b63973b2606'),
(11, 10, 21, 'Single Column Block', 'singleColumnBlock', 3, '2020-01-21 01:56:14', '2020-01-21 01:56:14', '267381a2-0e74-4527-b86e-09d3c91bdeee');

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixcontent_contentlockup`
--

CREATE TABLE `craft_matrixcontent_contentlockup` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_contentLockup_lockupHeader` text,
  `field_contentLockup_lockupSubhead` text,
  `field_videoLockup_lockupHeader` text,
  `field_videoLockup_lockupSubhead` text,
  `field_youtubeVideoLockup_lockupSubhead` text,
  `field_youtubeVideoLockup_lockupHeader` text,
  `field_youtubeVideoLockup_embedLink` text,
  `field_facebookVideoLockup_lockupHeader` text,
  `field_facebookVideoLockup_embedLink` text,
  `field_facebookVideoLockup_lockupSubhead` text,
  `field_vimeoVideoLockup_lockupSubhead` text,
  `field_vimeoVideoLockup_lockupHeader` text,
  `field_vimeoVideoLockup_embedLink` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_matrixcontent_contentlockup`
--

INSERT INTO `craft_matrixcontent_contentlockup` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_contentLockup_lockupHeader`, `field_contentLockup_lockupSubhead`, `field_videoLockup_lockupHeader`, `field_videoLockup_lockupSubhead`, `field_youtubeVideoLockup_lockupSubhead`, `field_youtubeVideoLockup_lockupHeader`, `field_youtubeVideoLockup_embedLink`, `field_facebookVideoLockup_lockupHeader`, `field_facebookVideoLockup_embedLink`, `field_facebookVideoLockup_lockupSubhead`, `field_vimeoVideoLockup_lockupSubhead`, `field_vimeoVideoLockup_lockupHeader`, `field_vimeoVideoLockup_embedLink`) VALUES
(1, 18, 1, '2019-11-23 20:25:01', '2020-01-19 02:06:32', '17483ca5-42c1-406b-9de2-9fa360169bfa', '<p>MEET GFP</p>', '<p>NOTG Video here.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 19, 1, '2019-11-23 20:25:01', '2020-01-19 02:06:32', '050de2dd-8362-4758-aab9-740b9a79abeb', '<p>JOIN THE FAMILY</p>', '<p><a href=\"{entry:4:url}#entry:4:url\">Click here to learn more about the Gender and Family Project.</a></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 21, 1, '2019-11-23 20:25:01', '2019-11-23 20:25:01', '66a570ac-01cf-4d37-bbc3-b59f81c9c843', '<p>MEET GFP</p>', 'This is a subhead.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 22, 1, '2019-11-23 20:25:01', '2019-11-23 20:25:01', 'd53c8174-3670-4591-b14c-4c925d82f25f', '<p>NIGHT OF A THOUSAND GENDERS</p>', 'This is a subhead.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 24, 1, '2019-11-23 20:54:33', '2019-11-23 20:54:33', 'c2b80b21-fa15-4c56-97cb-a5aac92be4f6', 'MEET GFP', 'This is a subhead.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 25, 1, '2019-11-23 20:54:33', '2019-11-23 20:54:33', '12a24c8c-e2e2-4d3f-b6ca-8751bc43857f', 'NIGHT OF A THOUSAND GENDERS', 'This is a subhead.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 35, 1, '2019-12-01 00:04:11', '2019-12-01 00:04:11', 'd5548793-0e79-4e22-8563-6c26bc18cc85', '<p>MEET GFP</p>', '<p>This is a subhead.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 36, 1, '2019-12-01 00:04:11', '2019-12-01 00:04:11', '862b32cc-0942-4ea1-9f51-e0964c5f27d2', '<p>NIGHT OF A THOUSAND GENDERS</p>', '<p>This is a subhead.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 37, 1, '2019-12-01 00:09:14', '2020-01-19 02:06:32', 'aded4e7d-4f6a-4ab1-a191-ff0592eba20c', NULL, NULL, '<p>THE GIFT OF </p><p>GENDER AUTHENTICITY</p>', '<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 39, 1, '2019-12-01 00:09:15', '2019-12-01 00:09:15', '0181e48d-fe1a-4b64-9323-a0210313d65e', '<p>MEET GFP</p>', '<p>This is a subhead.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 40, 1, '2019-12-01 00:09:15', '2019-12-01 00:09:15', '39c10985-8673-432f-a2b8-eb89e60ac46c', '<p>NIGHT OF A THOUSAND GENDERS</p>', '<p>This is a subhead.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 41, 1, '2019-12-01 00:09:15', '2019-12-01 00:09:15', 'a103d4cd-45ec-4200-9261-5ba905c8bb47', NULL, NULL, '<p>Testing Video Header</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 43, 1, '2019-12-01 00:13:23', '2019-12-01 00:13:23', '31f4a3d0-575b-49fe-8caa-fa3e1666a39f', '<p>MEET GFP</p>', '<p>This is a subhead.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 44, 1, '2019-12-01 00:13:23', '2019-12-01 00:13:23', 'b89bec99-cbc8-4685-a7fe-cd6769b143e1', '<p>NIGHT OF A THOUSAND GENDERS</p>', '<p>This is a subhead.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 45, 1, '2019-12-01 00:13:23', '2019-12-01 00:13:23', '41a57029-814a-4dda-a8c8-b019b63b4c34', NULL, NULL, '<p>Testing Video Header</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 47, 1, '2019-12-01 00:14:59', '2019-12-01 00:14:59', '10581040-16e0-4976-b056-5b36c750ee53', '<p>MEET GFP</p>', '<p>This is a subhead.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 48, 1, '2019-12-01 00:14:59', '2019-12-01 00:14:59', '16cfa263-23e3-4f1a-b883-81b836c95d86', '<p>NIGHT OF A THOUSAND GENDERS</p>', '<p>This is a subhead.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 49, 1, '2019-12-01 00:14:59', '2019-12-01 00:14:59', 'c2f6a3de-43c3-4f12-a043-e934d9420bd3', NULL, NULL, '<p>Testing Video Header</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 62, 1, '2019-12-01 19:11:22', '2019-12-01 19:11:22', '7be93f6d-4c37-4aad-be0e-ced533b6d437', '<p>MEET GFP</p>', '<p>This is a subhead.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 63, 1, '2019-12-01 19:11:22', '2019-12-01 19:11:22', '2524fa0b-4ca9-463e-91a7-a9749529819b', '<p>NIGHT OF A THOUSAND GENDERS</p>', '<p>This is a subhead.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 64, 1, '2019-12-01 19:11:22', '2019-12-01 19:11:22', 'b6547309-6490-4fee-8d4b-7517d2fc1235', NULL, NULL, '<p>Testing Video Header</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 66, 1, '2019-12-04 03:38:48', '2019-12-04 03:38:48', '5da52d32-a683-4613-8f6f-57c8ac0b28c8', '<p>MEET GFP</p>', '<p>This is a subhead.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 67, 1, '2019-12-04 03:38:48', '2019-12-04 03:38:48', '3148d63c-501e-4c58-8a45-efafdc32a451', '<p>NIGHT OF A THOUSAND GENDERS</p>', '<p>This is a subhead.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 68, 1, '2019-12-04 03:38:48', '2019-12-04 03:38:48', 'cec91a0b-5f53-4a28-aa88-7ab040eaa6b2', NULL, NULL, '<p>Testing Video Header</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 75, 1, '2019-12-04 20:09:38', '2019-12-04 20:09:38', 'ba1dc723-713e-4eed-94ef-e39c6c997c63', '<p>MEET GFP</p>', '<p>NOTG Video</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 76, 1, '2019-12-04 20:09:38', '2019-12-04 20:09:38', 'cc7be168-0b32-4801-a04a-cc4195f2f927', '<p>JOIN THE FAMILY</p><p></p>', '<p><a href=\"{entry:4:url}\">Pride photo</a></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 77, 1, '2019-12-04 20:09:38', '2019-12-04 20:09:38', '8ebf21b4-63c6-48ea-9022-f59c77e7cfba', NULL, NULL, '<p>THE GIFT OF GENDER AUTHENTICITY</p>', '<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 79, 1, '2019-12-04 20:10:15', '2019-12-04 20:10:15', '26f8aa7b-5088-4e10-ba25-818e7d0721d3', '<p>MEET GFP</p>', '<p>NOTG Video here.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 80, 1, '2019-12-04 20:10:15', '2019-12-04 20:10:15', '041691e6-a814-43be-8607-fe8a650fbdd7', '<p><a href=\"{entry:4:url}\">JOIN THE FAMILY</a></p>', '<p><a href=\"{entry:4:url}\">Pride photo</a></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 81, 1, '2019-12-04 20:10:15', '2019-12-04 20:10:15', '94b33934-4b62-4b8b-b891-44079bc3641b', NULL, NULL, '<p>THE GIFT OF GENDER AUTHENTICITY</p>', '<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 100, 1, '2019-12-04 20:18:01', '2019-12-04 20:18:01', 'f418b19d-01a9-4542-9ecf-1ca8d4d522f0', '<p>MEET GFP</p>', '<p>NOTG Video here.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 101, 1, '2019-12-04 20:18:01', '2019-12-04 20:18:01', '206404b8-561a-466c-9de1-1f192562269e', '<p>JOIN THE FAMILY</p>', '<p><a href=\"{entry:4:url}\">Pride photo</a></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 102, 1, '2019-12-04 20:18:01', '2019-12-04 20:18:01', 'e8bed9e7-ad11-439d-ba77-e9c12b37baa5', NULL, NULL, '<p>THE GIFT OF GENDER AUTHENTICITY</p>', '<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 104, 1, '2019-12-04 20:18:57', '2019-12-04 20:18:57', '87566eda-4994-4ded-a592-7a62b86417a3', '<p>MEET GFP</p>', '<p>NOTG Video here.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 105, 1, '2019-12-04 20:18:57', '2019-12-04 20:18:57', '11f1a67a-82df-4543-aada-009430c1d1ab', '<p>JOIN THE FAMILY</p>', '<p><a href=\"{entry:4:url}\">Click here to learn more about the Gender and Family Project.</a></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 106, 1, '2019-12-04 20:18:57', '2019-12-04 20:18:57', '58421c9a-d73d-4a7b-8971-8f484dce8882', NULL, NULL, '<p>THE GIFT OF GENDER AUTHENTICITY</p>', '<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 109, 1, '2019-12-04 20:28:08', '2019-12-04 20:28:08', 'f4506f6f-b3f9-4b7a-9c4e-e04735b0bd7a', '<p>MEET GFP</p>', '<p>NOTG Video here.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 110, 1, '2019-12-04 20:28:08', '2019-12-04 20:28:08', 'c0fb9424-cae0-49dc-b900-f176fd26dfc6', '<p>JOIN THE FAMILY</p>', '<p><a href=\"{entry:4:url}\">Click here to learn more about the Gender and Family Project.</a></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 111, 1, '2019-12-04 20:28:08', '2019-12-04 20:28:08', '6fc553d7-1c22-4901-b01e-3b572ecdb93c', NULL, NULL, '<p>THE GIFT OF GENDER AUTHENTICITY</p>', '<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 113, 1, '2019-12-04 20:30:35', '2019-12-04 20:30:35', '9e43f4e6-7a59-43f0-a382-8d19280570df', '<p>MEET GFP</p>', '<p>NOTG Video here.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 114, 1, '2019-12-04 20:30:36', '2019-12-04 20:30:36', 'f17ba8db-a3af-4587-9f28-3e6bf15da135', '<p>JOIN THE FAMILY</p>', '<p><a href=\"{entry:4:url}\">Click here to learn more about the Gender and Family Project.</a></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 115, 1, '2019-12-04 20:30:36', '2019-12-04 20:30:36', '59c51e7a-0eb3-4e3a-a0d1-7019d33ae489', NULL, NULL, '<p>THE GIFT OF </p><p>GENDER AUTHENTICITY</p>', '<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 117, 1, '2019-12-04 20:45:54', '2019-12-04 20:45:54', '265c4c8a-4292-40c6-b142-10ac8791ca87', '<p>MEET GFP</p>', '<p>NOTG Video here.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 118, 1, '2019-12-04 20:45:54', '2019-12-04 20:45:54', '8f6e7c9f-810f-4f94-b592-e905c0d52bd1', '<p>JOIN THE FAMILY</p>', '<p><a href=\"{entry:4:url}\">Click here to learn more about the Gender and Family Project.</a></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 119, 1, '2019-12-04 20:45:54', '2019-12-04 20:45:54', '16fc6ce9-ed8b-4c3f-b207-560eba9f9b97', NULL, NULL, '<p>THE GIFT OF </p><p>GENDER AUTHENTICITY</p>', '<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 122, 1, '2019-12-04 20:50:15', '2019-12-04 20:50:15', '93734aea-45f2-40e4-90fa-21c2124939a2', '<p>MEET GFP</p>', '<p>NOTG Video here.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 123, 1, '2019-12-04 20:50:15', '2019-12-04 20:50:15', '8e0e054d-5079-49f6-bcd7-45be7911d7d4', '<p>JOIN THE FAMILY</p>', '<p><a href=\"{entry:4:url}\">Click here to learn more about the Gender and Family Project.</a></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 124, 1, '2019-12-04 20:50:15', '2019-12-04 20:50:15', '16399f90-4083-4509-9b10-b83468563a6b', NULL, NULL, '<p>THE GIFT OF </p><p>GENDER AUTHENTICITY</p>', '<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 127, 1, '2019-12-04 21:00:19', '2019-12-04 21:00:19', '368b2ce6-82ba-49fa-8d61-81f912b22614', '<p>MEET GFP</p>', '<p>NOTG Video here.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 128, 1, '2019-12-04 21:00:19', '2019-12-04 21:00:19', '98948087-2b86-45f2-a320-e64ad3c1d2f3', '<p>JOIN THE FAMILY</p>', '<p><a href=\"{entry:4:url}\">Click here to learn more about the Gender and Family Project.</a></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 129, 1, '2019-12-04 21:00:19', '2019-12-04 21:00:19', 'ba2bb0ff-6c52-42af-ba11-c00dc1f3a6c7', NULL, NULL, '<p>THE GIFT OF </p><p>GENDER AUTHENTICITY</p>', '<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 132, 1, '2019-12-04 21:08:49', '2019-12-04 21:08:49', '9370b8ca-b7af-42b4-a803-ee1f1b5d7684', '<p>MEET GFP</p>', '<p>NOTG Video here.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 133, 1, '2019-12-04 21:08:49', '2019-12-04 21:08:49', 'f4d6086d-9188-44ca-805d-47a0f404099f', '<p>JOIN THE FAMILY</p>', '<p><a href=\"{entry:4:url}\">Click here to learn more about the Gender and Family Project.</a></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 134, 1, '2019-12-04 21:08:49', '2019-12-04 21:08:49', 'bc6e6898-60c7-463c-9e85-2f809c5480b9', NULL, NULL, '<p>THE GIFT OF </p><p>GENDER AUTHENTICITY</p>', '<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 163, 1, '2019-12-11 01:38:00', '2019-12-11 01:38:00', '6c48e9f7-02db-4d2b-81aa-6f90363268ed', '<p>MEET GFP</p>', '<p>NOTG Video here.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 164, 1, '2019-12-11 01:38:00', '2019-12-11 01:38:00', '5ffb5660-b8f5-41fc-b730-aa13fadc9a8e', '<p>JOIN THE FAMILY</p>', '<p><a href=\"{entry:4:url}\">Click here to learn more about the Gender and Family Project.</a></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 165, 1, '2019-12-11 01:38:00', '2019-12-11 01:38:00', '78d7ed4b-e9a4-4eb2-aa66-0fab2a4534e2', NULL, NULL, '<p>THE GIFT OF </p><p>GENDER AUTHENTICITY</p>', '<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 167, 1, '2019-12-11 01:38:01', '2019-12-11 01:38:01', 'f6d16d42-2300-4325-93d4-6b3410bafeae', '<p>MEET GFP</p>', '<p>NOTG Video here.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 168, 1, '2019-12-11 01:38:01', '2019-12-11 01:38:01', '94fafd58-6f50-420d-b075-c75a1168abe6', '<p>JOIN THE FAMILY</p>', '<p><a href=\"{entry:4:url}\">Click here to learn more about the Gender and Family Project.</a></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 169, 1, '2019-12-11 01:38:01', '2019-12-11 01:38:01', '75090c40-d453-4c4d-8d20-9beaa798e4bd', NULL, NULL, '<p>THE GIFT OF </p><p>GENDER AUTHENTICITY</p>', '<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 268, 1, '2020-01-19 02:06:32', '2020-01-19 02:06:32', '172dc735-73d8-4dfc-b05d-70d912649ac3', '<p>MEET GFP</p>', '<p>NOTG Video here.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 269, 1, '2020-01-19 02:06:32', '2020-01-19 02:06:32', '993107eb-5d7a-4ea8-b538-992f3c216a84', '<p>JOIN THE FAMILY</p>', '<p><a href=\"{entry:4:url}#entry:4:url\">Click here to learn more about the Gender and Family Project.</a></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 270, 1, '2020-01-19 02:06:33', '2020-01-19 02:06:33', '107d2189-7d38-4745-8896-a1aef866eca6', NULL, NULL, '<p>THE GIFT OF </p><p>GENDER AUTHENTICITY</p>', '<p>Watch GFP Founder and Director Jean Malpas give his TedX Talk. </p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `craft_matrixcontent_entryfields`
--

CREATE TABLE `craft_matrixcontent_entryfields` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_fullWidthColumnBlock_textField` text,
  `field_fullWidthColumnBlock_videoEmbedCode` text,
  `field_fullWidthColumnBlock_videoCaption` text,
  `field_doubleColumnBlock_textField` text,
  `field_singleColumnBlock_textField` text,
  `field_fullWidthColumnBlock_topBorder` varchar(255) DEFAULT NULL,
  `field_doubleColumnBlock_topBorder` varchar(255) DEFAULT NULL,
  `field_singleColumnBlock_topBorder` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_matrixcontent_entryfields`
--

INSERT INTO `craft_matrixcontent_entryfields` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_fullWidthColumnBlock_textField`, `field_fullWidthColumnBlock_videoEmbedCode`, `field_fullWidthColumnBlock_videoCaption`, `field_doubleColumnBlock_textField`, `field_singleColumnBlock_textField`, `field_fullWidthColumnBlock_topBorder`, `field_doubleColumnBlock_topBorder`, `field_singleColumnBlock_topBorder`) VALUES
(1, 53, 1, '2019-12-01 00:48:13', '2019-12-01 00:52:48', '29c026bd-6da6-4190-a43b-2412a8272a32', '<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p><p><em>I’m a proud member of the LGBTQ community, but I know that we need to do more to make sure the trans community is protected, accepted, and respected. Violence against transgender people, particularly trans women of color, is alarmingly high. I’m grateful that programs like the Gender &amp; Family Project are providing support to transgender individuals and their families.</em></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 55, 1, '2019-12-01 00:48:14', '2019-12-01 00:48:14', 'fdf66a0a-7f3d-4b25-a020-f89890828ce2', '<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p><p><em>I’m a proud member of the LGBTQ community, but I know that we need to do more to make sure the trans community is protected, accepted, and respected. Violence against transgender people, particularly trans women of color, is alarmingly high. I’m grateful that programs like the Gender &amp; Family Project are providing support to transgender individuals and their families.</em></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 57, 1, '2019-12-01 00:52:47', '2019-12-01 00:52:47', 'd31eee62-f787-4ff1-960d-96a745b03bcc', '<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p><p><em>I’m a proud member of the LGBTQ community, but I know that we need to do more to make sure the trans community is protected, accepted, and respected. Violence against transgender people, particularly trans women of color, is alarmingly high. I’m grateful that programs like the Gender &amp; Family Project are providing support to transgender individuals and their families.</em></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 59, 1, '2019-12-01 00:52:48', '2019-12-01 00:52:48', 'ae0d1858-d9eb-4bce-804a-b109e8519b8d', '<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p><p><em>I’m a proud member of the LGBTQ community, but I know that we need to do more to make sure the trans community is protected, accepted, and respected. Violence against transgender people, particularly trans women of color, is alarmingly high. I’m grateful that programs like the Gender &amp; Family Project are providing support to transgender individuals and their families.</em></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 71, 1, '2019-12-04 20:03:31', '2020-01-16 02:10:25', '5ed32b1c-8687-4588-a390-ac8453209081', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><p><strong><br /></strong></p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><em><a href=\"http://google.com\"><br /></a></em><a href=\"http://google.com\">What we do</a><em><br /></em></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li> Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations<br /></li></ul>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 73, 1, '2019-12-04 20:03:31', '2019-12-04 20:03:31', '5bd277c4-e29a-48ef-b3ba-de384a63bcc6', '<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations<br /></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 83, 1, '2019-12-04 20:12:28', '2019-12-04 20:12:28', 'e330d0ab-786b-42bf-80b5-befe91571557', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><p>What We Do</p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations<br /></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 85, 1, '2019-12-04 20:12:54', '2019-12-04 20:12:54', '9da31bd5-ef68-49f4-98ed-b8fa1521050e', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><p><br /></p><p><strong>What We Do</strong></p><p><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations<br /></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 86, 1, '2019-12-04 20:14:55', '2020-01-19 01:36:31', '4fab88db-7771-4d97-9ab9-35fba43afa8e', '<p><em><strong>To get started with services at GFP, all families must first complete our screening and intake process.</strong></em></p><p><em><strong><br /></strong></em></p><p><em><strong>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</strong></em></p><p><em><strong><br /></strong></em></p><p><em><strong>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</strong></em></p><p><em><br /></em></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org</strong></p><p><strong> </strong>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 88, 1, '2019-12-04 20:14:55', '2019-12-04 20:14:55', 'faf66dd9-48a3-437e-8cf9-0a5e0f66ed0b', '<p><em>To get started with services at GFP, all families must first complete our screening and intake process.</em></p><p><em>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</em></p><p><em>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</em></p><p><br /></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org </strong></p><p>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 90, 1, '2019-12-04 20:15:27', '2019-12-04 20:15:27', '8847de32-99fc-46ea-9928-18a17e33c9a1', '<p><em>To get started with services at GFP, all families must first complete our screening and intake process.</em></p><p><em><br /></em></p><p><em>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</em></p><p><em><br /></em></p><p><em>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</em></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p><br /></p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p><br /></p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org </strong></p><p><br /></p><p>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 92, 1, '2019-12-04 20:15:40', '2019-12-04 20:15:40', '482294f4-0a24-4dac-bffe-154bdfa329b1', '<p><em>To get started with services at GFP, all families must first complete our screening and intake process.</em></p><p><em><br /></em></p><p><em>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</em></p><p><em><br /></em></p><p><em>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</em></p><p><br /></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org </strong></p><p>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 94, 1, '2019-12-04 20:15:54', '2019-12-04 20:15:54', '9a5a633c-f35a-4caf-bf64-da9b11c46e5c', '<p><em>To get started with services at GFP, all families must first complete our screening and intake process.</em></p><p><em><br /></em></p><p><em>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</em></p><p><em><br /></em></p><p><em>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</em></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p><br /></p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p><br /></p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org </strong></p><p><br /></p><p>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 96, 1, '2019-12-04 20:16:00', '2019-12-04 20:16:00', 'af50ba59-3660-4fd2-a49d-8a45cd303437', '<p><em>To get started with services at GFP, all families must first complete our screening and intake process.</em></p><p><em><br /></em></p><p><em>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</em></p><p><em><br /></em></p><p><em>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</em></p><p><em><br /></em></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org </strong></p><p>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 98, 1, '2019-12-04 20:16:10', '2019-12-04 20:16:10', 'db6ec3d9-508b-47df-8ddb-1b02eb157728', '<p><em>To get started with services at GFP, all families must first complete our screening and intake process.</em></p><p><em><br /></em></p><p><em>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</em></p><p><em><br /></em></p><p><em>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</em></p><p><em><br /></em></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p><br /></p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p><br /></p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org</strong></p><p><br /></p><p><strong> </strong>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 137, 1, '2019-12-04 21:17:12', '2019-12-04 21:17:12', '4089e9b6-e84a-44e7-9d38-0b2de9b2b570', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><p><strong>What We Do</strong></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations<br /></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 139, 1, '2019-12-04 21:17:49', '2019-12-04 21:17:49', 'bd288cd6-8cbc-41c7-a4c3-6ff03d0cfd5a', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><p><strong><br /></strong></p><p><strong>What We Do</strong></p><p><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations<br /></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 142, 1, '2019-12-04 21:20:50', '2019-12-04 21:20:50', '4173636c-9278-4630-8fef-fe0c24863e03', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><p><strong><br /></strong></p><p><strong>What We Do</strong></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations<br /></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 145, 1, '2019-12-04 21:25:10', '2019-12-04 21:25:10', 'f9f259b0-4d45-4a44-8ba3-23b37fdd0a5e', '<p><em>To get started with services at GFP, all families must first complete our screening and intake process.</em></p><p><em><br /></em></p><p><em>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</em></p><p><em><br /></em></p><p><em>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</em></p><p><em><br /></em></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org</strong></p><p><strong> </strong>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 147, 1, '2019-12-04 21:34:09', '2019-12-04 21:34:09', '5291b9b7-e630-4f08-97cc-f583d5011e65', '<p><em>To get started with services at GFP, all families must first complete our screening and intake process.</em></p><p><em><br /></em></p><p><em>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</em></p><p><em><br /></em></p><p><em>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</em></p><p><em><br /></em></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p><br /></p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p><br /></p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org</strong></p><p><br /></p><p><strong> </strong>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 149, 1, '2019-12-04 21:34:17', '2019-12-04 21:34:17', '9588bccc-d019-46a7-8eec-c258d4783ea6', '<p><em><strong>To get started with services at GFP, all families must first complete our screening and intake process.</strong></em></p><p><em><strong><br /></strong></em></p><p><em><strong>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</strong></em></p><p><em><br /></em></p><p><em>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</em></p><p><em><br /></em></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org</strong></p><p><strong> </strong>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 151, 1, '2019-12-04 21:34:34', '2019-12-04 21:34:34', 'ecf051c6-22d5-49ca-b834-284a033289fd', '<p><em><strong>To get started with services at GFP, all families must first complete our screening and intake process.</strong></em></p><p><em><strong><br /></strong></em></p><p><em><strong>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</strong></em></p><p><em><strong><br /></strong></em></p><p><em><strong>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</strong></em></p><p><em><br /></em></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org</strong></p><p><strong> </strong>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 153, 1, '2019-12-05 00:37:13', '2019-12-05 00:37:13', '264a12eb-4456-4767-ab5f-cdb3ea9cb808', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><p><strong><br /></strong></p><p><strong>What We Do</strong></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations<br /></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 155, 1, '2019-12-05 00:37:17', '2019-12-05 00:37:17', '172d92d0-566e-413f-91b3-d9af7c5ca85d', '<p><em><strong>To get started with services at GFP, all families must first complete our screening and intake process.</strong></em></p><p><em><strong><br /></strong></em></p><p><em><strong>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</strong></em></p><p><em><strong><br /></strong></em></p><p><em><strong>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</strong></em></p><p><em><br /></em></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org</strong></p><p><strong> </strong>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 158, 1, '2019-12-05 00:39:38', '2019-12-05 00:39:38', '569176ae-599f-4e4f-a1dc-47ddd425ad83', '<p><em><strong>To get started with services at GFP, all families must first complete our screening and intake process.</strong></em></p><p><em><strong><br /></strong></em></p><p><em><strong>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</strong></em></p><p><em><strong><br /></strong></em></p><p><em><strong>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</strong></em></p><p><em><br /></em></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org</strong></p><p><strong> </strong>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 160, 1, '2019-12-05 03:41:53', '2019-12-05 03:41:53', 'b9a3b2e0-fa4c-4a0c-be0e-dab7968b272c', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><p><strong><br /></strong></p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><em><a href=\"http://google.com\"><br /></a></em><a href=\"http://google.com\">What we do</a><em><br /></em></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li> Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations<br /></li></ul>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 171, 1, '2020-01-16 02:07:16', '2020-01-16 02:07:16', 'd5704cfe-e5a6-4c09-a66a-3c5cd16a04a1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 172, 1, '2020-01-16 02:07:18', '2020-01-16 02:07:18', '330b86bf-d62b-4fe5-b3e0-37c36a0c0e81', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 175, 1, '2020-01-16 02:07:27', '2020-01-16 02:10:16', 'c03de40d-8956-4659-8908-9c546e0c1181', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 177, 1, '2020-01-16 02:07:27', '2020-01-16 02:07:27', '3b49e79d-26a4-4226-a06e-53c046dab3b7', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `craft_matrixcontent_entryfields` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_fullWidthColumnBlock_textField`, `field_fullWidthColumnBlock_videoEmbedCode`, `field_fullWidthColumnBlock_videoCaption`, `field_doubleColumnBlock_textField`, `field_singleColumnBlock_textField`, `field_fullWidthColumnBlock_topBorder`, `field_doubleColumnBlock_topBorder`, `field_singleColumnBlock_topBorder`) VALUES
(33, 192, 1, '2020-01-16 02:10:16', '2020-01-16 02:10:16', 'd70403e9-0c10-4347-864d-8cc3958ffa36', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 194, 1, '2020-01-16 02:10:25', '2020-01-16 02:10:25', '3a34aedf-db68-4854-86c2-55aa9e2827f1', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><p><strong><br /></strong></p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><em><a href=\"http://google.com\"><br /></a></em><a href=\"http://google.com\">What we do</a><em><br /></em></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li> Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations<br /></li></ul>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 265, 1, '2020-01-19 01:36:31', '2020-01-19 01:36:31', 'af4d76d8-4d82-4f26-a864-947683c858c7', '<p><em><strong>To get started with services at GFP, all families must first complete our screening and intake process.</strong></em></p><p><em><strong><br /></strong></em></p><p><em><strong>The first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services. We will also ask you for some preliminary information about your family so that we can determine how we can best support you.</strong></em></p><p><em><strong><br /></strong></em></p><p><em><strong>During the initial phone screening, we can schedule you for an in-person intake, where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff. By the end of this intake session, our intake clinician and your family will come to a mutual decision about appropriate next steps.</strong></em></p><p><em><br /></em></p><p>If you are reaching out regarding The Gender &amp; Family Project group and therapy services, please email or call GFP Program Assistant at <strong>mdedini@ackerman.org</strong> - 212.879.4900 ext 370. If you are already a client at GFP, please contact Alexis Diaz, Coordinator of Clinical &amp; Community Services at <strong>adiaz@ackerman.org</strong> or 212.879.4900 ext 307.</p><p>If you are reaching out about GFP training and advocacy services, please contact Nadia Swanson, Coordinator of Training &amp; Capacity Building at <strong>nswanson@ackerman.org</strong>.</p><p>If you are interested in corporate or individual partnerships, donations, or organizing an event to support GFP, please contact Jane Rennert, Coordinator of Development &amp; Communications at <strong>jrennert@ackerman.org</strong></p><p><strong> </strong>If you are interested to learn more about our research and dissemination methods, please contact Elizabeth Glaeser, Coordinator of Research &amp; Dissemination at <strong>lglaeser@ackerman.org</strong>.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 274, 1, '2020-01-21 01:58:20', '2020-01-25 14:51:00', 'e0ca1cb8-6048-493f-b293-51c4775e24e1', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, '[]', NULL, NULL),
(37, 276, 1, '2020-01-21 01:58:20', '2020-01-21 01:58:20', '671cb7d6-64d3-4ee5-a19f-b13075ddac1f', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 277, 1, '2020-01-21 02:20:06', '2020-01-25 14:51:00', 'aa55a954-4bb6-4fc3-ae12-eba6396530c8', NULL, NULL, NULL, '<h2>Double Content Block - h2</h2><p>Testing a double content block</p><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.<br /></p>', NULL, NULL, '[\"showBorder\"]', NULL),
(39, 278, 1, '2020-01-21 02:20:06', '2020-01-25 14:51:00', '447c6de1-6aa0-4b38-a573-b02b97f6ada2', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. </p><p>To request an initial phone screening:</p><figure style=\"float:left;width:16px;max-width:16px;margin:0px 10px 10px 0px;\"><img src=\"{asset:303:url}\" alt=\"\" /></figure><p>Test </p><figure style=\"float:right;width:16px;max-width:16px;margin:0px 0px 10px 10px;\"><img src=\"{asset:318:url}\" alt=\"\" /></figure>', NULL, NULL, '[\"showBorder\"]'),
(40, 279, 1, '2020-01-21 02:20:06', '2020-01-25 14:51:00', '3d57e7c4-1c36-4159-b951-bf6ce02e28ac', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(41, 280, 1, '2020-01-21 02:20:06', '2020-01-25 14:51:00', 'b4a9dbac-b0d1-456b-bc22-116f7644fab3', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(42, 281, 1, '2020-01-21 02:20:06', '2020-01-25 14:51:00', 'ee2ab8bb-023c-49da-8851-5173c8cbf896', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(43, 283, 1, '2020-01-21 02:20:06', '2020-01-21 02:20:06', '17ede4a8-ae30-4f7c-aca9-2d8649a9b0cc', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 284, 1, '2020-01-21 02:20:06', '2020-01-21 02:20:06', 'dc0c312d-72d6-4cb1-b879-9b01e7ef2391', NULL, NULL, NULL, '<h2>Double Content Block - h2</h2><p>Testing a double content block</p><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.<br /></p>', NULL, NULL, NULL, NULL),
(45, 285, 1, '2020-01-21 02:20:07', '2020-01-21 02:20:07', '720da0c1-1a03-49b1-ae3a-1cf54a82fd63', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2><p>Testing a single content block</p><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p>', NULL, NULL, NULL),
(46, 286, 1, '2020-01-21 02:20:07', '2020-01-21 02:20:07', '26b59df2-875f-41cc-8338-4f31a2f47c46', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, NULL),
(47, 287, 1, '2020-01-21 02:20:07', '2020-01-21 02:20:07', '5cc5e537-adb2-4736-bcb6-f73b33cde0dd', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, NULL),
(48, 288, 1, '2020-01-21 02:20:07', '2020-01-21 02:20:07', '647262e4-4f29-4c45-a2d0-99ade42f4abc', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, NULL),
(49, 290, 1, '2020-01-21 02:38:10', '2020-01-21 02:38:10', '17709145-c073-4605-9ab3-1ccff5a54b2e', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, '[]', NULL, NULL),
(50, 291, 1, '2020-01-21 02:38:10', '2020-01-21 02:38:10', '5715c49c-e558-47cc-bd0a-52a1df13fc32', NULL, NULL, NULL, '<h2>Double Content Block - h2</h2><p>Testing a double content block</p><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.<br /></p>', NULL, NULL, '[\"showBorder\"]', NULL),
(51, 292, 1, '2020-01-21 02:38:10', '2020-01-21 02:38:10', '70372e5d-b2e1-4808-a398-f0fe103e54c2', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2><p>Testing a single content block</p><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p>', NULL, NULL, '[\"showBorder\"]'),
(52, 293, 1, '2020-01-21 02:38:10', '2020-01-21 02:38:10', '548fe9f9-8ac2-43ee-9bba-21a1d4ec702b', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(53, 294, 1, '2020-01-21 02:38:10', '2020-01-21 02:38:10', '892c30e6-6e14-49c3-926c-0884a732b171', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(54, 295, 1, '2020-01-21 02:38:10', '2020-01-21 02:38:10', '9b0f8079-1a51-43d2-9c65-187e9b66968b', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(55, 297, 1, '2020-01-25 14:39:03', '2020-01-25 14:39:03', 'b4ff644f-080e-4e5e-aa83-d3472bb862af', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, '[]', NULL, NULL),
(56, 298, 1, '2020-01-25 14:39:03', '2020-01-25 14:39:03', '1bd12944-9e83-48fc-bd79-9d9de0edcc81', NULL, NULL, NULL, '<h2>Double Content Block - h2</h2><p>Testing a double content block</p><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.<br /></p>', NULL, NULL, '[\"showBorder\"]', NULL),
(57, 299, 1, '2020-01-25 14:39:03', '2020-01-25 14:39:03', '83995e2c-1bca-4f65-a2f1-1b5406e0f8e0', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. </p><p>To request an initial phone screening:</p>', NULL, NULL, '[\"showBorder\"]'),
(58, 300, 1, '2020-01-25 14:39:03', '2020-01-25 14:39:03', 'd9a63c25-43f3-4f9e-92bf-131000841d6f', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(59, 301, 1, '2020-01-25 14:39:03', '2020-01-25 14:39:03', '44ecc015-cd0c-4a3b-95eb-579986881e4c', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(60, 302, 1, '2020-01-25 14:39:03', '2020-01-25 14:39:03', '10c01682-450a-414d-9d2f-57c0db71bcba', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(61, 305, 1, '2020-01-25 14:42:36', '2020-01-25 14:42:36', 'afb21e96-6f30-4fa8-8836-caaa42ac36a9', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, '[]', NULL, NULL),
(62, 306, 1, '2020-01-25 14:42:36', '2020-01-25 14:42:36', '87ec97d7-5c70-42c8-90d3-65138147f6c8', NULL, NULL, NULL, '<h2>Double Content Block - h2</h2><p>Testing a double content block</p><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.<br /></p>', NULL, NULL, '[\"showBorder\"]', NULL),
(63, 307, 1, '2020-01-25 14:42:36', '2020-01-25 14:42:36', 'bc6f493e-81fd-4645-a158-23a04844d20e', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. </p><p>To request an initial phone screening:</p><figure><img src=\"{asset:303:url}\" alt=\"\" /></figure><p>Test</p>', NULL, NULL, '[\"showBorder\"]'),
(64, 308, 1, '2020-01-25 14:42:37', '2020-01-25 14:42:37', '7e2a94ad-be7b-41c1-84d6-d1430f9144be', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(65, 309, 1, '2020-01-25 14:42:37', '2020-01-25 14:42:37', '4fd69797-5e47-449f-b3de-a140bbefc4e2', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(66, 310, 1, '2020-01-25 14:42:37', '2020-01-25 14:42:37', '0cb065b3-1000-4f69-9832-6f1f44a5312b', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(67, 312, 1, '2020-01-25 14:45:11', '2020-01-25 14:45:11', '0873924b-197b-4d90-8cf6-d2222fbe7b3e', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, '[]', NULL, NULL),
(68, 313, 1, '2020-01-25 14:45:11', '2020-01-25 14:45:11', 'ef309a9c-40c4-48c2-9bcd-b7833fb6f464', NULL, NULL, NULL, '<h2>Double Content Block - h2</h2><p>Testing a double content block</p><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.<br /></p>', NULL, NULL, '[\"showBorder\"]', NULL),
(69, 314, 1, '2020-01-25 14:45:11', '2020-01-25 14:45:11', '2068b165-065c-4948-9e79-2b94bb645bc6', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. </p><p>To request an initial phone screening:</p><figure style=\"float:left;width:16px;max-width:16px;margin:0px 10px 10px 0px;\"><img src=\"{asset:303:url}\" alt=\"\" /></figure><p>Test</p>', NULL, NULL, '[\"showBorder\"]'),
(70, 315, 1, '2020-01-25 14:45:11', '2020-01-25 14:45:11', '27118c9c-c8d1-474b-b599-0579859ca353', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(71, 316, 1, '2020-01-25 14:45:11', '2020-01-25 14:45:11', '0354a139-0f18-4660-a33c-31c215bffb23', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(72, 317, 1, '2020-01-25 14:45:11', '2020-01-25 14:45:11', '58663d29-6316-4a87-8c24-a09ca9575250', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(73, 320, 1, '2020-01-25 14:51:00', '2020-01-25 14:51:00', '334b0144-f689-4de4-b02a-6c3703f7b9d5', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, '[]', NULL, NULL),
(74, 321, 1, '2020-01-25 14:51:00', '2020-01-25 14:51:00', 'c89fb154-7669-4af3-a1df-9d514015933a', NULL, NULL, NULL, '<h2>Double Content Block - h2</h2><p>Testing a double content block</p><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.<br /></p>', NULL, NULL, '[\"showBorder\"]', NULL),
(75, 322, 1, '2020-01-25 14:51:00', '2020-01-25 14:51:00', '10a18940-d04b-4633-9467-b3c3b9a76002', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. </p><p>To request an initial phone screening:</p><figure style=\"float:left;width:16px;max-width:16px;margin:0px 10px 10px 0px;\"><img src=\"{asset:303:url}\" alt=\"\" /></figure><p>Test </p><figure style=\"float:right;width:16px;max-width:16px;margin:0px 0px 10px 10px;\"><img src=\"{asset:318:url}\" alt=\"\" /></figure>', NULL, NULL, '[\"showBorder\"]'),
(76, 323, 1, '2020-01-25 14:51:00', '2020-01-25 14:51:00', '179ab857-4fa2-4009-8137-cc5b12553426', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(77, 324, 1, '2020-01-25 14:51:00', '2020-01-25 14:51:00', '6c615a95-c9e6-449e-8df9-a69df77946cf', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(78, 325, 1, '2020-01-25 14:51:00', '2020-01-25 14:51:00', 'd34e8e1c-3386-41f9-bc52-2740c0d4bf64', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(85, 334, 1, '2020-01-25 15:35:42', '2020-01-25 16:16:35', '5d30183a-5de9-4b41-9472-b1a0b8a81c05', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, '[]', NULL, NULL),
(86, 335, 1, '2020-01-25 15:35:42', '2020-01-25 16:16:35', 'd9422f24-8a2d-4749-9ce9-a80fadac8234', NULL, NULL, NULL, '<blockquote>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.<br /></blockquote>', NULL, NULL, '[\"showBorder\"]', NULL),
(87, 336, 1, '2020-01-25 15:35:42', '2020-01-25 16:16:35', 'de0b985b-51d9-4421-84d2-8f4a3eac33f2', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. </p><h4>To request an initial phone screening:</h4><figure style=\"float:left;width:16px;max-width:16px;margin:0px 10px 10px 0px;\"><strong><img src=\"{asset:303:url}\" alt=\"\" /></strong></figure><p><a class=\"arrow\" href=\"http://google.com/\">Test </a></p>', NULL, NULL, '[\"showBorder\"]'),
(88, 337, 1, '2020-01-25 15:35:42', '2020-01-25 16:16:35', '63889260-c018-483b-bca9-2a497d088600', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(89, 338, 1, '2020-01-25 15:35:43', '2020-01-25 16:16:35', '8a01474c-545d-4d69-b6b4-8c953d00bebc', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(90, 339, 1, '2020-01-25 15:35:43', '2020-01-25 16:16:35', '7d901b56-2b9c-4e9a-b21b-793bc0bb72c5', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(91, 341, 1, '2020-01-25 15:35:43', '2020-01-25 15:35:43', '17586f5c-2f2a-4a99-ba07-82c847483011', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, '[]', NULL, NULL),
(92, 342, 1, '2020-01-25 15:35:43', '2020-01-25 15:35:43', '0cd88df2-2152-4e75-8c5a-2d12010c8f45', NULL, NULL, NULL, '<h2>Double Content Block - h2</h2><p>Testing a double content block</p><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.<br /></p>', NULL, NULL, '[\"showBorder\"]', NULL),
(93, 343, 1, '2020-01-25 15:35:43', '2020-01-25 15:35:43', 'b5267366-6f6c-429d-8553-7b766e7e27e4', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. </p><p><strong>To request an initial phone screening:</strong></p><figure style=\"float:left;width:16px;max-width:16px;margin:0px 10px 10px 0px;\"><strong><img src=\"{asset:303:url}\" alt=\"\" /></strong></figure><a class=\"arrow\"><strong>Test </strong></a>', NULL, NULL, '[\"showBorder\"]'),
(94, 344, 1, '2020-01-25 15:35:43', '2020-01-25 15:35:43', 'c4f08ad2-5c45-438b-ae0a-ea0b3a711406', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(95, 345, 1, '2020-01-25 15:35:43', '2020-01-25 15:35:43', '237e7cfb-bf57-462b-983b-6da30f5104f9', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(96, 346, 1, '2020-01-25 15:35:44', '2020-01-25 15:35:44', '5bfee99f-9e85-4128-b595-f67c2d266f65', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(97, 348, 1, '2020-01-25 15:37:16', '2020-01-25 15:37:16', '06662383-7e8c-4aa9-bed1-c591267b9070', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, '[]', NULL, NULL),
(98, 349, 1, '2020-01-25 15:37:16', '2020-01-25 15:37:16', '619d0376-14a9-4a27-8d1e-b57ff4068c6a', NULL, NULL, NULL, '<h2>Double Content Block - h2</h2><p>Testing a double content block</p><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.<br /></p>', NULL, NULL, '[\"showBorder\"]', NULL),
(99, 350, 1, '2020-01-25 15:37:16', '2020-01-25 15:37:16', '93560c28-8df4-4f31-891f-586cf6db8648', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. </p><h4>To request an initial phone screening:</h4><figure style=\"float:left;width:16px;max-width:16px;margin:0px 10px 10px 0px;\"><strong><img src=\"{asset:303:url}\" alt=\"\" /></strong></figure><p><a class=\"arrow\"><strong>Test </strong></a></p>', NULL, NULL, '[\"showBorder\"]'),
(100, 351, 1, '2020-01-25 15:37:17', '2020-01-25 15:37:17', 'ebbb6465-9373-4c3d-91e8-aa6eb15f1026', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(101, 352, 1, '2020-01-25 15:37:17', '2020-01-25 15:37:17', 'a3b04383-c137-41e3-9d88-a00c760394c4', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(102, 353, 1, '2020-01-25 15:37:17', '2020-01-25 15:37:17', 'e9ae01ff-fc10-471f-aa1c-1f0c05e02150', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(103, 355, 1, '2020-01-25 15:38:16', '2020-01-25 15:38:16', '3166be31-d276-435b-8ec9-95f96ae1f98a', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, '[]', NULL, NULL),
(104, 356, 1, '2020-01-25 15:38:16', '2020-01-25 15:38:16', '4cbc07f0-4a3a-4ec3-812a-0cf9ec51fc5a', NULL, NULL, NULL, '<h2>Double Content Block - h2</h2><p>Testing a double content block</p><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.<br /></p>', NULL, NULL, '[\"showBorder\"]', NULL),
(105, 357, 1, '2020-01-25 15:38:16', '2020-01-25 15:38:16', '0831fff0-6ac4-4819-b374-b71a7755f44c', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. </p><h4>To request an initial phone screening:</h4><figure style=\"float:left;width:16px;max-width:16px;margin:0px 10px 10px 0px;\"><strong><img src=\"{asset:303:url}\" alt=\"\" /></strong></figure><p><a class=\"arrow\">Test </a></p>', NULL, NULL, '[\"showBorder\"]'),
(106, 358, 1, '2020-01-25 15:38:16', '2020-01-25 15:38:16', '06b52d6c-088a-4b6b-9230-fd9b15a07896', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(107, 359, 1, '2020-01-25 15:38:16', '2020-01-25 15:38:16', '34b35d5a-817a-4424-a93e-f2dec3b861d3', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(108, 360, 1, '2020-01-25 15:38:16', '2020-01-25 15:38:16', 'b5480c87-6b6b-4b17-908e-17b2cdd056e3', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(109, 362, 1, '2020-01-25 15:42:22', '2020-01-25 15:42:22', '79371feb-49b2-40af-927a-796e2f5dcf85', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, '[]', NULL, NULL),
(110, 363, 1, '2020-01-25 15:42:22', '2020-01-25 15:42:22', 'a502daca-90aa-4780-ba23-2876d632da35', NULL, NULL, NULL, '<h2>Double Content Block - h2</h2><p>Testing a double content block</p><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.<br /></p>', NULL, NULL, '[\"showBorder\"]', NULL),
(111, 364, 1, '2020-01-25 15:42:22', '2020-01-25 15:42:22', '4af6701d-9a17-4bde-a1b4-8f9ac7199660', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. </p><h4>To request an initial phone screening:</h4><figure style=\"float:left;width:16px;max-width:16px;margin:0px 10px 10px 0px;\"><strong><img src=\"{asset:303:url}\" alt=\"\" /></strong></figure><p><a class=\"arrow\" href=\"http://google.com/\">Test </a></p>', NULL, NULL, '[\"showBorder\"]'),
(112, 365, 1, '2020-01-25 15:42:22', '2020-01-25 15:42:22', 'ac9906ff-d0cd-4a77-a2d8-557f0c8543fe', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(113, 366, 1, '2020-01-25 15:42:22', '2020-01-25 15:42:22', 'be24d6ba-24e4-40bf-975b-7aec2d73d0d4', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(114, 367, 1, '2020-01-25 15:42:22', '2020-01-25 15:42:22', '26744603-ae89-4876-a495-6467f58bc028', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]');
INSERT INTO `craft_matrixcontent_entryfields` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_fullWidthColumnBlock_textField`, `field_fullWidthColumnBlock_videoEmbedCode`, `field_fullWidthColumnBlock_videoCaption`, `field_doubleColumnBlock_textField`, `field_singleColumnBlock_textField`, `field_fullWidthColumnBlock_topBorder`, `field_doubleColumnBlock_topBorder`, `field_singleColumnBlock_topBorder`) VALUES
(115, 369, 1, '2020-01-25 15:47:31', '2020-01-25 15:47:31', '19bb0aa9-2275-452a-9281-0f838280b517', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, '[]', NULL, NULL),
(116, 370, 1, '2020-01-25 15:47:31', '2020-01-25 15:47:31', '6c64f80c-8e6a-4a7c-b0e4-95088d3b5b60', NULL, NULL, NULL, '<h2>Double Content Block - h2</h2><blockquote>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.<br /></blockquote>', NULL, NULL, '[\"showBorder\"]', NULL),
(117, 371, 1, '2020-01-25 15:47:31', '2020-01-25 15:47:31', '48e63567-3d8f-4e51-ac5e-d17e6349a1af', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. </p><h4>To request an initial phone screening:</h4><figure style=\"float:left;width:16px;max-width:16px;margin:0px 10px 10px 0px;\"><strong><img src=\"{asset:303:url}\" alt=\"\" /></strong></figure><p><a class=\"arrow\" href=\"http://google.com/\">Test </a></p>', NULL, NULL, '[\"showBorder\"]'),
(118, 372, 1, '2020-01-25 15:47:31', '2020-01-25 15:47:31', '89ff7df1-0c69-42db-ab47-4235a920b517', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(119, 373, 1, '2020-01-25 15:47:31', '2020-01-25 15:47:31', 'b9bae453-d982-4e6e-9078-dc8c7093490f', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(120, 374, 1, '2020-01-25 15:47:31', '2020-01-25 15:47:31', '35a0fd6f-73ed-4bf8-8fd0-00efc62a2a3a', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(121, 376, 1, '2020-01-25 15:50:28', '2020-01-25 15:50:28', 'c19c9621-5b3b-4dcb-b41a-5a7ef1b1e9b6', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, '[]', NULL, NULL),
(122, 377, 1, '2020-01-25 15:50:28', '2020-01-25 15:50:28', 'e92a9ad8-2b76-4fea-bb1a-cad81177fd79', NULL, NULL, NULL, '<blockquote>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.<br /></blockquote>', NULL, NULL, '[\"showBorder\"]', NULL),
(123, 378, 1, '2020-01-25 15:50:28', '2020-01-25 15:50:28', 'bbd0a346-641a-45d0-993d-066139e19bec', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. </p><h4>To request an initial phone screening:</h4><figure style=\"float:left;width:16px;max-width:16px;margin:0px 10px 10px 0px;\"><strong><img src=\"{asset:303:url}\" alt=\"\" /></strong></figure><p><a class=\"arrow\" href=\"http://google.com/\">Test </a></p>', NULL, NULL, '[\"showBorder\"]'),
(124, 379, 1, '2020-01-25 15:50:28', '2020-01-25 15:50:28', '362ef91c-f043-4952-b243-e899c66bad29', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(125, 380, 1, '2020-01-25 15:50:28', '2020-01-25 15:50:28', '776378c0-92d6-49b5-9f09-4a6f4798f9c3', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(126, 381, 1, '2020-01-25 15:50:28', '2020-01-25 15:50:28', 'abedd65e-168b-4630-a9b5-0151e0ffda62', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(127, 383, 1, '2020-01-25 15:54:58', '2020-01-25 16:16:35', '474a3f6b-0e6e-4529-af4e-b3d207b0c634', NULL, NULL, NULL, '<figure style=\"max-width:100px;float:left;width:299px;margin:0px 10px 10px 0px;\"><img src=\"{asset:382:url}\" width=\"100\" height=\"76\" style=\"width:100px;height:76px;\" alt=\"\" /></figure><h2>“Between Pink and Blue”</h2><p>Published May 2012 with Publisher</p><p>Here is an article description of something written by Jean Malpas.<br /></p><p><a class=\"arrow\">Click here to read an article</a></p>', NULL, NULL, '[]', NULL),
(128, 385, 1, '2020-01-25 15:54:59', '2020-01-25 15:54:59', 'db6c8ab0-da77-4f25-adf3-a127a5373758', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, '[]', NULL, NULL),
(129, 386, 1, '2020-01-25 15:54:59', '2020-01-25 15:54:59', '60687273-d3bd-49ed-a36d-e4980b969601', NULL, NULL, NULL, '<blockquote>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.<br /></blockquote>', NULL, NULL, '[\"showBorder\"]', NULL),
(130, 387, 1, '2020-01-25 15:54:59', '2020-01-25 15:54:59', '14d12701-2a7d-41ab-a379-945201ba0e3b', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. </p><h4>To request an initial phone screening:</h4><figure style=\"float:left;width:16px;max-width:16px;margin:0px 10px 10px 0px;\"><strong><img src=\"{asset:303:url}\" alt=\"\" /></strong></figure><p><a class=\"arrow\" href=\"http://google.com/\">Test </a></p>', NULL, NULL, '[\"showBorder\"]'),
(131, 388, 1, '2020-01-25 15:54:59', '2020-01-25 15:54:59', '15fb7bad-aada-4868-8597-3caff8a663ab', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(132, 389, 1, '2020-01-25 15:54:59', '2020-01-25 15:54:59', 'bb9fb731-d0a6-4ad9-add7-152ce3f71499', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(133, 390, 1, '2020-01-25 15:54:59', '2020-01-25 15:54:59', 'b22844a1-8055-47ed-9651-75c947424aad', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(134, 391, 1, '2020-01-25 15:54:59', '2020-01-25 15:54:59', 'eb48df70-9c7b-4eb0-87a7-4e82d4dd3d73', NULL, NULL, NULL, '<figure style=\"float:left;width:16px;max-width:16px;margin:0px 10px 10px 0px;\"><img src=\"{asset:382:url}\" alt=\"\" /></figure><h2>“Between Pink and Blue”</h2><p>Published May 2012 with Publisher</p><p>Here is an article description of something written by Jean Malpas.<br /></p>', NULL, NULL, '[]', NULL),
(135, 393, 1, '2020-01-25 15:57:39', '2020-01-25 15:57:39', 'b027beae-c7bf-46e3-a64a-246297ffab68', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, '[]', NULL, NULL),
(136, 394, 1, '2020-01-25 15:57:39', '2020-01-25 15:57:39', '3a234af1-9030-437a-bed2-bca1e945250c', NULL, NULL, NULL, '<blockquote>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.<br /></blockquote>', NULL, NULL, '[\"showBorder\"]', NULL),
(137, 395, 1, '2020-01-25 15:57:39', '2020-01-25 15:57:39', '43c4f12d-837b-4d8c-89b3-ff99eb5695fb', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. </p><h4>To request an initial phone screening:</h4><figure style=\"float:left;width:16px;max-width:16px;margin:0px 10px 10px 0px;\"><strong><img src=\"{asset:303:url}\" alt=\"\" /></strong></figure><p><a class=\"arrow\" href=\"http://google.com/\">Test </a></p>', NULL, NULL, '[\"showBorder\"]'),
(138, 396, 1, '2020-01-25 15:57:40', '2020-01-25 15:57:40', '10a562e7-9f98-4456-9f04-939aa011fb41', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(139, 397, 1, '2020-01-25 15:57:40', '2020-01-25 15:57:40', '85a6bcca-3f9b-4dc6-acc2-ee225af5c47c', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(140, 398, 1, '2020-01-25 15:57:40', '2020-01-25 15:57:40', 'ee2ef0b8-c2fd-4f22-b342-5ba23e5700a5', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(141, 399, 1, '2020-01-25 15:57:40', '2020-01-25 15:57:40', '207ad92e-0f77-45f0-a7db-9efc7166a6f0', NULL, NULL, NULL, '<figure style=\"float:left;width:16px;max-width:16px;margin:0px 10px 10px 0px;\"><img src=\"{asset:382:url}\" alt=\"\" /></figure><h2>“Between Pink and Blue”</h2><p>Published May 2012 with Publisher</p><p>Here is an article description of something written by Jean Malpas.<br /></p><a class=\"arrow\">Click here to read an article</a>', NULL, NULL, '[]', NULL),
(142, 401, 1, '2020-01-25 16:13:18', '2020-01-25 16:13:18', '145969f6-e527-4317-8483-776977caa95f', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, '[]', NULL, NULL),
(143, 402, 1, '2020-01-25 16:13:18', '2020-01-25 16:13:18', '3001506a-b66a-4275-b47c-fe49be59f3de', NULL, NULL, NULL, '<blockquote>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.<br /></blockquote>', NULL, NULL, '[\"showBorder\"]', NULL),
(144, 403, 1, '2020-01-25 16:13:19', '2020-01-25 16:13:19', '92e8fc12-3f62-4211-ba95-03abae9f87b7', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. </p><h4>To request an initial phone screening:</h4><figure style=\"float:left;width:16px;max-width:16px;margin:0px 10px 10px 0px;\"><strong><img src=\"{asset:303:url}\" alt=\"\" /></strong></figure><p><a class=\"arrow\" href=\"http://google.com/\">Test </a></p>', NULL, NULL, '[\"showBorder\"]'),
(145, 404, 1, '2020-01-25 16:13:19', '2020-01-25 16:13:19', 'af69b1b2-5225-4ac2-83a1-48ce8f3ccf23', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(146, 405, 1, '2020-01-25 16:13:19', '2020-01-25 16:13:19', 'a017e9de-a2fd-4e36-bc2c-e1b542db689c', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(147, 406, 1, '2020-01-25 16:13:19', '2020-01-25 16:13:19', 'f27ec9a6-d4cf-4a33-954e-cea657615423', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(148, 407, 1, '2020-01-25 16:13:19', '2020-01-25 16:13:19', 'e7d6cea5-14cf-4637-b898-53ebf4821eb8', NULL, NULL, NULL, '<figure style=\"max-width:299px;float:left;width:299px;margin:0px 10px 10px 0px;\"><img src=\"{asset:382:url}\" width=\"299\" height=\"228\" style=\"width:299px;height:228px;\" alt=\"\" /></figure><h2>“Between Pink and Blue”</h2><p>Published May 2012 with Publisher</p><p>Here is an article description of something written by Jean Malpas.<br /></p><p><a class=\"arrow\">Click here to read an article</a></p>', NULL, NULL, '[]', NULL),
(149, 409, 1, '2020-01-25 16:13:37', '2020-01-25 16:13:37', '6d211949-a3a2-4878-93d9-b58ce28d2e91', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, '[]', NULL, NULL),
(150, 410, 1, '2020-01-25 16:13:37', '2020-01-25 16:13:37', '1fa7ba9c-1417-4a8e-9177-1fd8597fed3a', NULL, NULL, NULL, '<blockquote>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.<br /></blockquote>', NULL, NULL, '[\"showBorder\"]', NULL),
(151, 411, 1, '2020-01-25 16:13:37', '2020-01-25 16:13:37', '97ad9245-b021-4f54-80e3-8b514d0e1615', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. </p><h4>To request an initial phone screening:</h4><figure style=\"float:left;width:16px;max-width:16px;margin:0px 10px 10px 0px;\"><strong><img src=\"{asset:303:url}\" alt=\"\" /></strong></figure><p><a class=\"arrow\" href=\"http://google.com/\">Test </a></p>', NULL, NULL, '[\"showBorder\"]'),
(152, 412, 1, '2020-01-25 16:13:37', '2020-01-25 16:13:37', 'e3d40e6f-9bb7-4b5d-a0e3-ce9e3e65c4fc', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(153, 413, 1, '2020-01-25 16:13:37', '2020-01-25 16:13:37', '67b6f962-6acb-404f-87e0-c64f77152373', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(154, 414, 1, '2020-01-25 16:13:37', '2020-01-25 16:13:37', 'a5ffa5d6-6f7b-43c2-8dcc-79df74485a6a', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(155, 415, 1, '2020-01-25 16:13:37', '2020-01-25 16:13:37', '90b398e4-d249-4de1-8ab0-0ce0d1e4f8cc', NULL, NULL, NULL, '<figure style=\"max-width:227px;float:left;width:299px;margin:0px 10px 10px 0px;\"><img src=\"{asset:382:url}\" width=\"227\" height=\"174\" style=\"width:227px;height:174px;\" alt=\"\" /></figure><h2>“Between Pink and Blue”</h2><p>Published May 2012 with Publisher</p><p>Here is an article description of something written by Jean Malpas.<br /></p><p><a class=\"arrow\">Click here to read an article</a></p>', NULL, NULL, '[]', NULL),
(156, 417, 1, '2020-01-25 16:15:58', '2020-01-25 16:15:58', 'e28169a0-86b7-4b7a-9a07-3bfc263545a3', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, '[]', NULL, NULL),
(157, 418, 1, '2020-01-25 16:15:58', '2020-01-25 16:15:58', 'fe2e01ab-2948-4857-ba3d-3b716fb4e99c', NULL, NULL, NULL, '<blockquote>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.<br /></blockquote>', NULL, NULL, '[\"showBorder\"]', NULL),
(158, 419, 1, '2020-01-25 16:15:58', '2020-01-25 16:15:58', '6db44e3d-db4b-4116-9d52-0360b7336d3e', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. </p><h4>To request an initial phone screening:</h4><figure style=\"float:left;width:16px;max-width:16px;margin:0px 10px 10px 0px;\"><strong><img src=\"{asset:303:url}\" alt=\"\" /></strong></figure><p><a class=\"arrow\" href=\"http://google.com/\">Test </a></p>', NULL, NULL, '[\"showBorder\"]'),
(159, 420, 1, '2020-01-25 16:15:58', '2020-01-25 16:15:58', 'd9000578-e14a-4282-b986-337c5763744d', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(160, 421, 1, '2020-01-25 16:15:58', '2020-01-25 16:15:58', '06a0f480-b72b-4f6d-8d75-47a89e03d35e', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(161, 422, 1, '2020-01-25 16:15:58', '2020-01-25 16:15:58', '8b65fc30-bede-4496-bee2-e207616ae9e4', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(162, 423, 1, '2020-01-25 16:15:58', '2020-01-25 16:15:58', 'bfc6128e-1564-4828-9d2a-832598dd3e40', NULL, NULL, NULL, '<figure style=\"max-width:102px;float:left;width:299px;margin:0px 10px 10px 0px;\"><img src=\"{asset:382:url}\" width=\"102\" height=\"78\" style=\"width:102px;height:78px;\" alt=\"\" /></figure><h2>“Between Pink and Blue”</h2><p>Published May 2012 with Publisher</p><p>Here is an article description of something written by Jean Malpas.<br /></p><p><a class=\"arrow\">Click here to read an article</a></p>', NULL, NULL, '[]', NULL),
(163, 425, 1, '2020-01-25 16:16:35', '2020-01-25 16:16:35', '3dcfc4dc-b0e1-4157-a618-2854be5ecf64', '<p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.</p><h1>What We Do - h1</h1><h2>What We Do - h2</h2><h3>What We Do - h3</h3><h4>What We Do - h4</h4><p><strong>What We Do - b</strong></p><p><em>What We Do - i</em></p><p><a href=\"http://google.com/\"><br /></a><a href=\"http://google.com/\">What we do</a><br /></p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><ul><li>Support groups for caregivers, grandparents, siblings and family members</li><li>Play group for children and tweens 5 to 14 years old</li><li>Support group for adolescents 14 to 18 years old</li><li>Spanish-speaking caregiver support group</li><li>Family therapy and parental coaching</li><li>Affirmative psychological and gender evaluation</li><li>Training and education for educators, mental health and health providers</li><li>Corporate training and gender literacy education for groups and organizations</li></ul>', NULL, NULL, NULL, NULL, '[]', NULL, NULL),
(164, 426, 1, '2020-01-25 16:16:35', '2020-01-25 16:16:35', '136a6cc5-a762-4725-b982-0a36d06da514', NULL, NULL, NULL, '<blockquote>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. GFP was founded in 2010 and is directed by Jean Malpas, LMHC, LMFT, who has trained and published nationally and internationally on issues of gender and sexuality.<br /></blockquote>', NULL, NULL, '[\"showBorder\"]', NULL),
(165, 427, 1, '2020-01-25 16:16:35', '2020-01-25 16:16:35', 'dd994c95-0a6c-4e69-871a-0ca13532d65f', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2><p>The Gender &amp; Family Project (GFP) empowers youth, families and communities by providing gender affirmative services, training and research. GFP promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family. </p><h4>To request an initial phone screening:</h4><figure style=\"float:left;width:16px;max-width:16px;margin:0px 10px 10px 0px;\"><strong><img src=\"{asset:303:url}\" alt=\"\" /></strong></figure><p><a class=\"arrow\" href=\"http://google.com/\">Test </a></p>', NULL, NULL, '[\"showBorder\"]'),
(166, 428, 1, '2020-01-25 16:16:35', '2020-01-25 16:16:35', '36377760-9f36-4dc1-8e18-5a0b9ac027c6', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(167, 429, 1, '2020-01-25 16:16:35', '2020-01-25 16:16:35', 'cd46b3ce-6d7e-45cd-bc78-d54c8a3fc98a', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(168, 430, 1, '2020-01-25 16:16:35', '2020-01-25 16:16:35', '27e0a3f9-2473-45af-abb0-fb70a07319f1', NULL, NULL, NULL, NULL, '<h2>Single Column Block - h2</h2>', NULL, NULL, '[\"showBorder\"]'),
(169, 431, 1, '2020-01-25 16:16:35', '2020-01-25 16:16:35', '7a7945b0-850c-4807-9134-dcf0e64f8383', NULL, NULL, NULL, '<figure style=\"max-width:100px;float:left;width:299px;margin:0px 10px 10px 0px;\"><img src=\"{asset:382:url}\" width=\"100\" height=\"76\" style=\"width:100px;height:76px;\" alt=\"\" /></figure><h2>“Between Pink and Blue”</h2><p>Published May 2012 with Publisher</p><p>Here is an article description of something written by Jean Malpas.<br /></p><p><a class=\"arrow\">Click here to read an article</a></p>', NULL, NULL, '[]', NULL),
(170, 432, 1, '2020-01-25 16:30:45', '2020-01-25 16:41:05', '60d8cef9-70bd-41ee-92c6-a6377ffe3810', NULL, NULL, NULL, '<p>GFP supports the entire family through gender exploration and transition. Our family therapist can help strengthen family relationships while exploring gender-related or any other relevant challenges for the entire family. Our approach to family therapy and parental coaching is steeped into a deep understanding of research on gender development, as well as a belief in family resilience and connection as core factors for health and well being.</p>', NULL, NULL, '[]', NULL),
(171, 433, 1, '2020-01-25 16:30:45', '2020-01-25 16:41:05', 'd88620db-00ce-4fa6-8143-f67a57d59497', NULL, NULL, NULL, '<h3>FOR CAREGIVERS &amp; FAMILY MEMBERS</h3><p>Many parents feel concerned and uncertain about how to handle their children’s gender expression or identity when these identities do not align with social expectations or the child’s birth sex. While parents can access information online, they might feel isolated, and struggle to find other parents who can understand their dilemmas or appreciate their family accomplishments. While some parents find it easier to embrace gender-variance, other parents find themselves uncertain as to how best protect and nurture a child with gender fluidity.<br /><br />Our professionally facilitated support group provides parents a space to share their experiences, explore their dilemmas and hear the solutions and successes that other parents have found with their families. While emphasizing parents’ agenda, the group focuses on providing concrete means to foster positive parent-child relationships in an atmosphere that nurtures children’s development. Issues of disclosure to family members and friends, psychosocial and medical treatment, advocacy in schools, faith communities and other institutions as well as children with non-binary identities are addressed. The groups are led with an intersectional perspective, highlighting awareness about power, privilege and other forms of marginalization based on race, class, abilities and more.</p>', NULL, NULL, '[\"showBorder\"]', NULL),
(172, 434, 1, '2020-01-25 16:30:45', '2020-01-25 16:41:05', '05cc1a98-39e3-406d-82e9-1e066bbb050b', NULL, NULL, NULL, '<h3>FOR CHILDREN 5–10 YEARS OLD</h3><p>The Gender Creative Kids group is open to all gender-expansive and transgender children between the ages of 5. The group provides children with an affirming space where they can socialize, play and engage in creative activities with other children expressing comparable ranges of gender fluidity. It is especially designed to run concurrently with the parents group and conveniently allows parents to meet while their children are having supervised fun in the same building.</p>', NULL, NULL, '[\"showBorder\"]', NULL),
(173, 436, 1, '2020-01-25 16:30:46', '2020-01-25 16:30:46', '2ddccae8-44fe-49d9-8ba3-55b68dbd5adf', NULL, NULL, NULL, '<p>GFP supports the entire family through gender exploration and transition. Our family therapist can help strengthen family relationships while exploring gender-related or any other relevant challenges for the entire family. Our approach to family therapy and parental coaching is steeped into a deep understanding of research on gender development, as well as a belief in family resilience and connection as core factors for health and well being.</p>', NULL, NULL, '[]', NULL),
(174, 437, 1, '2020-01-25 16:30:46', '2020-01-25 16:30:46', '7d22ef32-9e08-4426-8fdc-3c82015573a9', NULL, NULL, NULL, '<h2>FOR CAREGIVERS &amp; FAMILY MEMBERS</h2><p>Many parents feel concerned and uncertain about how to handle their children’s gender expression or identity when these identities do not align with social expectations or the child’s birth sex. While parents can access information online, they might feel isolated, and struggle to find other parents who can understand their dilemmas or appreciate their family accomplishments. While some parents find it easier to embrace gender-variance, other parents find themselves uncertain as to how best protect and nurture a child with gender fluidity.<br /><br />Our professionally facilitated support group provides parents a space to share their experiences, explore their dilemmas and hear the solutions and successes that other parents have found with their families. While emphasizing parents’ agenda, the group focuses on providing concrete means to foster positive parent-child relationships in an atmosphere that nurtures children’s development. Issues of disclosure to family members and friends, psychosocial and medical treatment, advocacy in schools, faith communities and other institutions as well as children with non-binary identities are addressed. The groups are led with an intersectional perspective, highlighting awareness about power, privilege and other forms of marginalization based on race, class, abilities and more.</p>', NULL, NULL, '[\"showBorder\"]', NULL),
(175, 438, 1, '2020-01-25 16:30:46', '2020-01-25 16:30:46', '03851975-baab-4257-bea2-3b3693ac370b', NULL, NULL, NULL, '<h2>FOR CHILDREN 5–10 YEARS OLD</h2><p>The Gender Creative Kids group is open to all gender-expansive and transgender children between the ages of 5. The group provides children with an affirming space where they can socialize, play and engage in creative activities with other children expressing comparable ranges of gender fluidity. It is especially designed to run concurrently with the parents group and conveniently allows parents to meet while their children are having supervised fun in the same building.</p>', NULL, NULL, '[\"showBorder\"]', NULL),
(176, 440, 1, '2020-01-25 16:31:35', '2020-01-25 16:31:35', 'fd53df6d-0e2e-4417-852e-b3e74449e4e8', NULL, NULL, NULL, '<p>GFP supports the entire family through gender exploration and transition. Our family therapist can help strengthen family relationships while exploring gender-related or any other relevant challenges for the entire family. Our approach to family therapy and parental coaching is steeped into a deep understanding of research on gender development, as well as a belief in family resilience and connection as core factors for health and well being.</p>', NULL, NULL, '[]', NULL),
(177, 441, 1, '2020-01-25 16:31:35', '2020-01-25 16:31:35', '4738b229-4de5-4427-bffe-a31a0a50f8bf', NULL, NULL, NULL, '<h3>FOR CAREGIVERS &amp; FAMILY MEMBERS</h3><p>Many parents feel concerned and uncertain about how to handle their children’s gender expression or identity when these identities do not align with social expectations or the child’s birth sex. While parents can access information online, they might feel isolated, and struggle to find other parents who can understand their dilemmas or appreciate their family accomplishments. While some parents find it easier to embrace gender-variance, other parents find themselves uncertain as to how best protect and nurture a child with gender fluidity.<br /><br />Our professionally facilitated support group provides parents a space to share their experiences, explore their dilemmas and hear the solutions and successes that other parents have found with their families. While emphasizing parents’ agenda, the group focuses on providing concrete means to foster positive parent-child relationships in an atmosphere that nurtures children’s development. Issues of disclosure to family members and friends, psychosocial and medical treatment, advocacy in schools, faith communities and other institutions as well as children with non-binary identities are addressed. The groups are led with an intersectional perspective, highlighting awareness about power, privilege and other forms of marginalization based on race, class, abilities and more.</p>', NULL, NULL, '[\"showBorder\"]', NULL),
(178, 442, 1, '2020-01-25 16:31:35', '2020-01-25 16:31:35', 'dccacab3-029d-4ac0-b65b-1114e905a347', NULL, NULL, NULL, '<h3>FOR CHILDREN 5–10 YEARS OLD</h3><p>The Gender Creative Kids group is open to all gender-expansive and transgender children between the ages of 5. The group provides children with an affirming space where they can socialize, play and engage in creative activities with other children expressing comparable ranges of gender fluidity. It is especially designed to run concurrently with the parents group and conveniently allows parents to meet while their children are having supervised fun in the same building.</p>', NULL, NULL, '[\"showBorder\"]', NULL),
(179, 444, 1, '2020-01-25 16:41:05', '2020-01-25 16:41:05', '3a2f5e2b-368c-4d29-8da6-9f921e8f7d0f', NULL, NULL, NULL, '<p>GFP supports the entire family through gender exploration and transition. Our family therapist can help strengthen family relationships while exploring gender-related or any other relevant challenges for the entire family. Our approach to family therapy and parental coaching is steeped into a deep understanding of research on gender development, as well as a belief in family resilience and connection as core factors for health and well being.</p>', NULL, NULL, '[]', NULL),
(180, 445, 1, '2020-01-25 16:41:05', '2020-01-25 16:41:05', '2eeedf34-32fa-4723-9ee8-abc62f301e76', NULL, NULL, NULL, '<h3>FOR CAREGIVERS &amp; FAMILY MEMBERS</h3><p>Many parents feel concerned and uncertain about how to handle their children’s gender expression or identity when these identities do not align with social expectations or the child’s birth sex. While parents can access information online, they might feel isolated, and struggle to find other parents who can understand their dilemmas or appreciate their family accomplishments. While some parents find it easier to embrace gender-variance, other parents find themselves uncertain as to how best protect and nurture a child with gender fluidity.<br /><br />Our professionally facilitated support group provides parents a space to share their experiences, explore their dilemmas and hear the solutions and successes that other parents have found with their families. While emphasizing parents’ agenda, the group focuses on providing concrete means to foster positive parent-child relationships in an atmosphere that nurtures children’s development. Issues of disclosure to family members and friends, psychosocial and medical treatment, advocacy in schools, faith communities and other institutions as well as children with non-binary identities are addressed. The groups are led with an intersectional perspective, highlighting awareness about power, privilege and other forms of marginalization based on race, class, abilities and more.</p>', NULL, NULL, '[\"showBorder\"]', NULL),
(181, 446, 1, '2020-01-25 16:41:05', '2020-01-25 16:41:05', '3af44651-dadf-4dda-93a7-85c41cbdd8ac', NULL, NULL, NULL, '<h3>FOR CHILDREN 5–10 YEARS OLD</h3><p>The Gender Creative Kids group is open to all gender-expansive and transgender children between the ages of 5. The group provides children with an affirming space where they can socialize, play and engage in creative activities with other children expressing comparable ranges of gender fluidity. It is especially designed to run concurrently with the parents group and conveniently allows parents to meet while their children are having supervised fun in the same building.</p>', NULL, NULL, '[\"showBorder\"]', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `craft_migrations`
--

CREATE TABLE `craft_migrations` (
  `id` int(11) NOT NULL,
  `pluginId` int(11) DEFAULT NULL,
  `type` enum('app','plugin','content') NOT NULL DEFAULT 'app',
  `name` varchar(255) NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_migrations`
--

INSERT INTO `craft_migrations` (`id`, `pluginId`, `type`, `name`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 'app', 'Install', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '22df9c43-1a06-40f2-b96a-ad43503f19dd'),
(2, NULL, 'app', 'm150403_183908_migrations_table_changes', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'fc0b65b1-26fa-4204-9f66-8697c93cc807'),
(3, NULL, 'app', 'm150403_184247_plugins_table_changes', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '454f1170-13f7-4822-a08e-1fa91152881e'),
(4, NULL, 'app', 'm150403_184533_field_version', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '310cca35-b038-48bd-9e40-828f854ecf3a'),
(5, NULL, 'app', 'm150403_184729_type_columns', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '12e7a48d-d250-42d3-abcf-83aee15d3ed6'),
(6, NULL, 'app', 'm150403_185142_volumes', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'd526fdd8-af7f-494a-b495-40dd3e6e96d0'),
(7, NULL, 'app', 'm150428_231346_userpreferences', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '8c435649-509d-4664-b544-15b1370ef94b'),
(8, NULL, 'app', 'm150519_150900_fieldversion_conversion', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '326cbf58-d00e-4565-a5a7-b7b722b607ec'),
(9, NULL, 'app', 'm150617_213829_update_email_settings', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '91ac98dc-fdcf-409b-9a9d-f667531b5bd0'),
(10, NULL, 'app', 'm150721_124739_templatecachequeries', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'd1f4ca06-c914-408e-8dc5-d1056e97a845'),
(11, NULL, 'app', 'm150724_140822_adjust_quality_settings', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '8883eba8-b9af-4262-815d-0a54d43defc1'),
(12, NULL, 'app', 'm150815_133521_last_login_attempt_ip', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'cece4ac9-13a0-4a81-8160-d01b35e7a016'),
(13, NULL, 'app', 'm151002_095935_volume_cache_settings', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '0bed8ce8-d392-4683-92f9-1caa65110d60'),
(14, NULL, 'app', 'm151005_142750_volume_s3_storage_settings', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '3670cf99-b1fc-4114-af54-a750d4cc04bd'),
(15, NULL, 'app', 'm151016_133600_delete_asset_thumbnails', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'a5b28fb5-668e-4cdb-a35a-648b31d3b042'),
(16, NULL, 'app', 'm151209_000000_move_logo', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '9a5c0d8d-f183-494c-838d-969e29c056b6'),
(17, NULL, 'app', 'm151211_000000_rename_fileId_to_assetId', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'd9e38ec3-ff6a-4de2-89a5-980d978d093e'),
(18, NULL, 'app', 'm151215_000000_rename_asset_permissions', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '976586f5-f8b5-4e07-bf5a-a0edb43f5fc2'),
(19, NULL, 'app', 'm160707_000001_rename_richtext_assetsource_setting', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '0caecd35-5a89-431d-9092-f1cda6b0cea0'),
(20, NULL, 'app', 'm160708_185142_volume_hasUrls_setting', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'd8f77aa5-8a24-4006-afcd-6e26ef18497e'),
(21, NULL, 'app', 'm160714_000000_increase_max_asset_filesize', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '381525e5-f06c-4cb3-b87e-b82b31bab7ff'),
(22, NULL, 'app', 'm160727_194637_column_cleanup', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'be2bbc67-40a7-4e3b-920c-305f78a554ad'),
(23, NULL, 'app', 'm160804_110002_userphotos_to_assets', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'bdbe885d-a23f-4f34-afee-d4576e155505'),
(24, NULL, 'app', 'm160807_144858_sites', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '04ec4d9b-7fbe-4946-baa5-08178ed25696'),
(25, NULL, 'app', 'm160829_000000_pending_user_content_cleanup', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'd2099eec-e5d0-4503-bb1b-687df2c822d8'),
(26, NULL, 'app', 'm160830_000000_asset_index_uri_increase', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'c04a9807-9adf-4135-91a8-04ebf631732d'),
(27, NULL, 'app', 'm160912_230520_require_entry_type_id', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '3c974e30-c7b9-4959-8e4f-f9db3ac583af'),
(28, NULL, 'app', 'm160913_134730_require_matrix_block_type_id', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'cbc1cbb3-fd8b-443a-8a46-9c7d3972a0c8'),
(29, NULL, 'app', 'm160920_174553_matrixblocks_owner_site_id_nullable', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '353d15b1-d6c6-47fb-a6b5-07c496d7bfe5'),
(30, NULL, 'app', 'm160920_231045_usergroup_handle_title_unique', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'e8eb88ae-1181-4be3-85c2-a0ee7232a8da'),
(31, NULL, 'app', 'm160925_113941_route_uri_parts', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '43982a3c-edff-4d7b-a6b6-4ed536393e7e'),
(32, NULL, 'app', 'm161006_205918_schemaVersion_not_null', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '6981876a-629b-45c0-839a-621561fd853e'),
(33, NULL, 'app', 'm161007_130653_update_email_settings', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'f005f734-7f45-433f-89a7-6a7ff23fb041'),
(34, NULL, 'app', 'm161013_175052_newParentId', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'e8114ded-a0ad-4a0e-ae7c-52f1d754517f'),
(35, NULL, 'app', 'm161021_102916_fix_recent_entries_widgets', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '87e4133f-fcde-477f-9cce-f9cb88141a47'),
(36, NULL, 'app', 'm161021_182140_rename_get_help_widget', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '550a2c2e-20b3-42fe-b765-f9c336c79818'),
(37, NULL, 'app', 'm161025_000000_fix_char_columns', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '44bdec31-695b-495b-ab34-db8d85d848cc'),
(38, NULL, 'app', 'm161029_124145_email_message_languages', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'f9fa437d-1928-4dc7-a24e-5c89d6a0e89c'),
(39, NULL, 'app', 'm161108_000000_new_version_format', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'a4ccd767-e398-4d4a-ba0f-ecb661365db6'),
(40, NULL, 'app', 'm161109_000000_index_shuffle', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '9e37bead-28de-4db3-b4e7-5b9641e1408c'),
(41, NULL, 'app', 'm161122_185500_no_craft_app', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '9caccafc-543e-47cc-98d0-ec3593b1ee9d'),
(42, NULL, 'app', 'm161125_150752_clear_urlmanager_cache', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '075a2beb-4911-4267-b343-bdcaa3fd08eb'),
(43, NULL, 'app', 'm161220_000000_volumes_hasurl_notnull', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'e9965816-1218-4f31-bf97-adf4ce2a7fb0'),
(44, NULL, 'app', 'm170114_161144_udates_permission', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'dc66a3a3-d1a4-4663-929f-4ae62219ef75'),
(45, NULL, 'app', 'm170120_000000_schema_cleanup', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '8f2f255a-dd47-47f8-a7bf-30aab1248788'),
(46, NULL, 'app', 'm170126_000000_assets_focal_point', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '88e64407-b46f-43e3-b233-469698cbc256'),
(47, NULL, 'app', 'm170206_142126_system_name', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '8110c47c-d51d-4b7b-9c28-67cc2f34df62'),
(48, NULL, 'app', 'm170217_044740_category_branch_limits', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '3b7e4e8e-93f3-4255-9910-1d25430b5938'),
(49, NULL, 'app', 'm170217_120224_asset_indexing_columns', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'f29c3829-22e1-420b-8acf-fa8a8b709688'),
(50, NULL, 'app', 'm170223_224012_plain_text_settings', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'b6e3ae07-57e8-4a80-9f69-2304081fd4ff'),
(51, NULL, 'app', 'm170227_120814_focal_point_percentage', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2d45c3a5-f307-46ad-a6d6-7b89c8ad95f4'),
(52, NULL, 'app', 'm170228_171113_system_messages', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'ee19aa04-0da2-41e8-9fac-0d7fd5bd65fd'),
(53, NULL, 'app', 'm170303_140500_asset_field_source_settings', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '84ba26bd-4d15-42d0-bcd1-842afed0e95a'),
(54, NULL, 'app', 'm170306_150500_asset_temporary_uploads', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'e4c1f0dc-82a4-460b-b392-33d38fa7665d'),
(55, NULL, 'app', 'm170523_190652_element_field_layout_ids', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '22e94f5f-b279-453e-9e57-3d298897ec26'),
(56, NULL, 'app', 'm170612_000000_route_index_shuffle', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '7e18ebe2-3d87-4c62-aa43-3cf328f1406d'),
(57, NULL, 'app', 'm170621_195237_format_plugin_handles', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '5fc50f80-d96e-4100-9d7b-2fe207a948f0'),
(58, NULL, 'app', 'm170630_161027_deprecation_line_nullable', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '8a989e73-ef26-400d-9942-71e523af7e91'),
(59, NULL, 'app', 'm170630_161028_deprecation_changes', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'd941dea2-6498-4bce-be96-29ac08af6d86'),
(60, NULL, 'app', 'm170703_181539_plugins_table_tweaks', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '7cce04a2-b482-441e-af06-8f1204b4bfb4'),
(61, NULL, 'app', 'm170704_134916_sites_tables', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '62fec5ab-2c5a-4dc3-8cfc-015c70f8dc90'),
(62, NULL, 'app', 'm170706_183216_rename_sequences', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '9b223eac-47b4-4e65-8b53-d7b550bf982c'),
(63, NULL, 'app', 'm170707_094758_delete_compiled_traits', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '57a44858-ec2e-4617-9966-4f00581dbd87'),
(64, NULL, 'app', 'm170731_190138_drop_asset_packagist', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'f450be7c-8c07-4683-89f9-9b60b2e387e0'),
(65, NULL, 'app', 'm170810_201318_create_queue_table', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'e6aae344-8829-4b59-8398-0f4fc3e39ccc'),
(66, NULL, 'app', 'm170816_133741_delete_compiled_behaviors', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '0bce94f9-65db-4290-8c33-cbb815c52902'),
(67, NULL, 'app', 'm170903_192801_longblob_for_queue_jobs', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '1cda6f04-9e9f-4f3b-a9d9-a9baded28092'),
(68, NULL, 'app', 'm170914_204621_asset_cache_shuffle', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '6dcc5e53-d26c-4d90-b21a-be4462e158da'),
(69, NULL, 'app', 'm171011_214115_site_groups', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'cec0e927-8b40-45de-bf32-f9b142964bd6'),
(70, NULL, 'app', 'm171012_151440_primary_site', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'f8ead728-a5c8-4c7d-8abe-dcc9c1e961d4'),
(71, NULL, 'app', 'm171013_142500_transform_interlace', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'cda4eb2f-eff0-4583-a959-f9fe3b0eaefe'),
(72, NULL, 'app', 'm171016_092553_drop_position_select', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'e9f88bc3-3479-42c4-b57b-e0eb506391d3'),
(73, NULL, 'app', 'm171016_221244_less_strict_translation_method', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'ae8e7fe2-d3df-4237-a141-3ba3b0d50501'),
(74, NULL, 'app', 'm171107_000000_assign_group_permissions', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'e7f05205-d191-4185-a1d2-36cafea45bdb'),
(75, NULL, 'app', 'm171117_000001_templatecache_index_tune', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'cc0f4e18-2eac-4543-9335-5fd51fa87c6f'),
(76, NULL, 'app', 'm171126_105927_disabled_plugins', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'cf03b9e5-7676-42bc-9fa8-f8e0225bd04b'),
(77, NULL, 'app', 'm171130_214407_craftidtokens_table', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '3b310f99-73a7-4187-b244-9641306cd53c'),
(78, NULL, 'app', 'm171202_004225_update_email_settings', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '86cf350d-1533-45fd-b93a-b9d7c02599ec'),
(79, NULL, 'app', 'm171204_000001_templatecache_index_tune_deux', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'a41f5442-7d6f-4029-8f17-c15ffb676a98'),
(80, NULL, 'app', 'm171205_130908_remove_craftidtokens_refreshtoken_column', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '0f56ac9a-7ad7-4ddb-8ec3-62529a3c495f'),
(81, NULL, 'app', 'm171218_143135_longtext_query_column', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'cce96fae-b2d1-40fb-b06a-bc5593d5ef6d'),
(82, NULL, 'app', 'm171231_055546_environment_variables_to_aliases', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '4889f5d0-ae2b-4ed0-bbb0-6c5ee28bb747'),
(83, NULL, 'app', 'm180113_153740_drop_users_archived_column', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '05c9eb12-43ed-4e74-a871-3fb601780215'),
(84, NULL, 'app', 'm180122_213433_propagate_entries_setting', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'ff2cf009-e264-4b48-9852-a451f0e87215'),
(85, NULL, 'app', 'm180124_230459_fix_propagate_entries_values', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '10f1b0c1-f4cb-40b6-a448-be73401eee68'),
(86, NULL, 'app', 'm180128_235202_set_tag_slugs', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'cf272a26-5d26-4c87-b5af-1fa2c8bc9892'),
(87, NULL, 'app', 'm180202_185551_fix_focal_points', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'd53871a5-5567-46bd-9ac0-8ea24845de8f'),
(88, NULL, 'app', 'm180217_172123_tiny_ints', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'c0e33b81-5ab9-4161-8efd-791d4b96b74a'),
(89, NULL, 'app', 'm180321_233505_small_ints', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '8aeedb66-f33c-465e-9c01-c7677aa049e9'),
(90, NULL, 'app', 'm180328_115523_new_license_key_statuses', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '1658f750-ba54-4727-b694-9829bc4a7800'),
(91, NULL, 'app', 'm180404_182320_edition_changes', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '34d23bae-4a8a-4b86-a50c-026c466da7ba'),
(92, NULL, 'app', 'm180411_102218_fix_db_routes', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '0c56c4d4-e12f-44e9-bb42-a0563692a035'),
(93, NULL, 'app', 'm180416_205628_resourcepaths_table', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '16d6f623-82b3-416f-9692-304cb5042b61'),
(94, NULL, 'app', 'm180418_205713_widget_cleanup', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '876874df-1afb-4254-af86-69c46b414abc'),
(95, NULL, 'app', 'm180425_203349_searchable_fields', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'daf14293-0144-4b33-bc92-16eb9c73b70e'),
(96, NULL, 'app', 'm180516_153000_uids_in_field_settings', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'bbe5ab7f-6b69-4dc5-9351-7ef77d906c69'),
(97, NULL, 'app', 'm180517_173000_user_photo_volume_to_uid', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'f515dfcf-9411-4fdc-9b3e-0ff084ed790a'),
(98, NULL, 'app', 'm180518_173000_permissions_to_uid', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'fdb95efc-7617-4ca4-bde3-cf90ff253418'),
(99, NULL, 'app', 'm180520_173000_matrix_context_to_uids', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '21b751de-cda5-47c5-9291-083248092420'),
(100, NULL, 'app', 'm180521_173000_initial_yml_and_snapshot', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '74a63a82-4efb-4f87-9334-8bc044da1b05'),
(101, NULL, 'app', 'm180731_162030_soft_delete_sites', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'd02265fa-2c22-4e30-87f3-534373c5662f'),
(102, NULL, 'app', 'm180810_214427_soft_delete_field_layouts', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '6057ead9-bd6c-49c6-8ec9-c31d80408807'),
(103, NULL, 'app', 'm180810_214439_soft_delete_elements', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'ce76f46f-a1d9-48ff-b5f8-6769accf2cf1'),
(104, NULL, 'app', 'm180824_193422_case_sensitivity_fixes', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'aa32ee8a-d09e-4fdf-9514-027fd5a6520d'),
(105, NULL, 'app', 'm180901_151639_fix_matrixcontent_tables', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '18249c8d-c089-47cc-92ee-64104be536b3'),
(106, NULL, 'app', 'm180904_112109_permission_changes', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '502e9371-ea99-4499-a6d8-d4c2c49fb806'),
(107, NULL, 'app', 'm180910_142030_soft_delete_sitegroups', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '33477eeb-fd70-45f6-988f-b036de71236e'),
(108, NULL, 'app', 'm181011_160000_soft_delete_asset_support', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '50a15edf-6641-48de-91f4-a8477e93392b'),
(109, NULL, 'app', 'm181016_183648_set_default_user_settings', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '166f1cb7-b312-44e0-a140-58eb792d99bf'),
(110, NULL, 'app', 'm181017_225222_system_config_settings', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'f2783982-cfd4-4f19-ba91-a8d9cd61b730'),
(111, NULL, 'app', 'm181018_222343_drop_userpermissions_from_config', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '96b21c99-dab6-4e72-9897-1f7df8907f81'),
(112, NULL, 'app', 'm181029_130000_add_transforms_routes_to_config', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '9ac34744-90c7-4763-9172-1c3f8759857f'),
(113, NULL, 'app', 'm181112_203955_sequences_table', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'f3c597b9-1d58-4e79-8ca9-7893be252d7d'),
(114, NULL, 'app', 'm181121_001712_cleanup_field_configs', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '50091958-5ad9-4687-bc83-490cb8b91151'),
(115, NULL, 'app', 'm181128_193942_fix_project_config', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'cf59bd08-2746-4ed3-97e9-03b8b4012031'),
(116, NULL, 'app', 'm181130_143040_fix_schema_version', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '42ab0e99-dcf6-45a9-9aef-22a5f3e225f1'),
(117, NULL, 'app', 'm181211_143040_fix_entry_type_uids', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '9e79c1fa-5162-46c1-a4a4-e6d24ed5d8af'),
(118, NULL, 'app', 'm181213_102500_config_map_aliases', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'ea290e07-2e2f-4122-b06a-dfa4c017c275'),
(119, NULL, 'app', 'm181217_153000_fix_structure_uids', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '5e85b4fe-94bb-422c-ad52-556bc768d380'),
(120, NULL, 'app', 'm190104_152725_store_licensed_plugin_editions', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '9319982d-5bf9-4fa0-be9b-3383f576a906'),
(121, NULL, 'app', 'm190108_110000_cleanup_project_config', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '38480536-29f8-4948-b0e9-928556da7ad2'),
(122, NULL, 'app', 'm190108_113000_asset_field_setting_change', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '248fc302-187e-44d4-b284-951e329faa81'),
(123, NULL, 'app', 'm190109_172845_fix_colspan', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'a0aaf86d-4fc2-48fc-bb98-07d9dfc46200'),
(124, NULL, 'app', 'm190110_150000_prune_nonexisting_sites', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'ee0fa222-9fc3-45df-a14d-208af05a5b2d'),
(125, NULL, 'app', 'm190110_214819_soft_delete_volumes', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '6baedb94-33ef-44d2-bc32-4014785594d1'),
(126, NULL, 'app', 'm190112_124737_fix_user_settings', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'c44bb85e-36f5-4ebe-88f2-a9c7b46f9a53'),
(127, NULL, 'app', 'm190112_131225_fix_field_layouts', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '9203af17-c1e5-4aa6-962d-286cf77292bf'),
(128, NULL, 'app', 'm190112_201010_more_soft_deletes', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'db4661e0-252a-475f-98e2-122fa5513feb'),
(129, NULL, 'app', 'm190114_143000_more_asset_field_setting_changes', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'f8bd41cf-4d55-46f8-92c6-168670a77f28'),
(130, NULL, 'app', 'm190121_120000_rich_text_config_setting', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'c7bc031f-cad4-4487-9393-43bb91a8aabc'),
(131, NULL, 'app', 'm190125_191628_fix_email_transport_password', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '08167c56-ea14-4b85-9a66-562f7ea092dc'),
(132, NULL, 'app', 'm190128_181422_cleanup_volume_folders', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '96e8f575-7fe0-4db1-9fb5-8280ec0cb92c'),
(133, NULL, 'app', 'm190205_140000_fix_asset_soft_delete_index', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '79905ae9-7539-48ab-b254-2edf7d30fb43'),
(134, NULL, 'app', 'm190208_140000_reset_project_config_mapping', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '9eda9a98-abed-45c7-b2c7-8f3bfebd5303'),
(135, NULL, 'app', 'm190218_143000_element_index_settings_uid', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'd7458a04-a980-457d-8e11-1d817601ea9f'),
(136, NULL, 'app', 'm190312_152740_element_revisions', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '42fd6531-ddc1-4477-a854-20e334a20201'),
(137, NULL, 'app', 'm190327_235137_propagation_method', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '68809a10-f1f7-45f5-84a5-311653a8586e'),
(138, NULL, 'app', 'm190401_223843_drop_old_indexes', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '021faef1-06a5-4ee2-9974-bfc414d156f3'),
(139, NULL, 'app', 'm190416_014525_drop_unique_global_indexes', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'b524946b-2859-4de4-9cc6-fa75d602925c'),
(140, NULL, 'app', 'm190417_085010_add_image_editor_permissions', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '6bcef71a-46db-46d2-8f29-3b2a00816b81'),
(141, NULL, 'app', 'm190502_122019_store_default_user_group_uid', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '31a18f77-1db0-4963-b35e-090f28696881'),
(142, NULL, 'app', 'm190504_150349_preview_targets', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'cfeb26b3-b658-4f2f-9bb4-e3dbe02680b4'),
(143, NULL, 'app', 'm190516_184711_job_progress_label', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2aa6d152-0170-4170-854e-3cee154a644b'),
(144, NULL, 'app', 'm190523_190303_optional_revision_creators', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '9f210fc6-7d63-4892-bf46-52a526626b0d'),
(145, NULL, 'app', 'm190529_204501_fix_duplicate_uids', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'bc0e324a-ffea-4611-a37f-9c89b14fa9f3'),
(146, NULL, 'app', 'm190605_223807_unsaved_drafts', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'e2fed87b-4c4e-4ae2-b5e4-de20bb0112f8'),
(147, NULL, 'app', 'm190607_230042_entry_revision_error_tables', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '6909aff6-1fc1-48c7-9d52-ce5cf8649e8a'),
(148, NULL, 'app', 'm190608_033429_drop_elements_uid_idx', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '8cc92d2f-2c9d-4555-8c61-cf79c65449b0'),
(149, NULL, 'app', 'm190617_164400_add_gqlschemas_table', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '108abe88-b664-4608-b4d1-c509cfdbacd1'),
(150, NULL, 'app', 'm190624_234204_matrix_propagation_method', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'e3139232-df2a-4b77-ab80-cd829ee82d5f'),
(151, NULL, 'app', 'm190711_153020_drop_snapshots', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'dc1f9f2f-ac2c-4386-87d8-37f0ea7190c9'),
(152, NULL, 'app', 'm190712_195914_no_draft_revisions', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '87ba996c-87c0-4626-8eca-710d0ea8b975'),
(153, NULL, 'app', 'm190723_140314_fix_preview_targets_column', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '5860167b-e77b-4f8b-bb59-4ede5942389e'),
(154, NULL, 'app', 'm190820_003519_flush_compiled_templates', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '3f7996d0-9d3e-423d-98e5-a5c03faf6190'),
(155, NULL, 'app', 'm190823_020339_optional_draft_creators', '2019-11-16 18:40:29', '2019-11-16 18:40:29', '2019-11-16 18:40:29', 'e01b693c-85ab-430b-86ff-5cde62abe9cc'),
(156, 1, 'plugin', 'm180430_204710_remove_old_plugins', '2019-11-23 17:26:10', '2019-11-23 17:26:10', '2019-11-23 17:26:10', '6c3ff201-179f-4083-9010-327f0c27aeed'),
(157, 1, 'plugin', 'Install', '2019-11-23 17:26:10', '2019-11-23 17:26:10', '2019-11-23 17:26:10', 'f149224b-f2f7-41e3-aaf1-0d12247a84cd'),
(158, 1, 'plugin', 'm190225_003922_split_cleanup_html_settings', '2019-11-23 17:26:10', '2019-11-23 17:26:10', '2019-11-23 17:26:10', '75c046d5-1366-449c-8c2b-d9c6b7bf0518');

-- --------------------------------------------------------

--
-- Table structure for table `craft_plugins`
--

CREATE TABLE `craft_plugins` (
  `id` int(11) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `schemaVersion` varchar(255) NOT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','astray','unknown') NOT NULL DEFAULT 'unknown',
  `licensedEdition` varchar(255) DEFAULT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_plugins`
--

INSERT INTO `craft_plugins` (`id`, `handle`, `version`, `schemaVersion`, `licenseKeyStatus`, `licensedEdition`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'redactor', '2.4.0', '2.3.0', 'unknown', NULL, '2019-11-23 17:26:10', '2019-11-23 17:26:10', '2020-01-25 14:33:36', '990171d0-3761-4133-af78-8842df56648a'),
(2, 'imager', 'v2.3.0', '2.0.0', 'unknown', NULL, '2019-11-23 20:43:55', '2019-11-23 20:43:55', '2020-01-25 14:33:36', 'ce78e4a2-d615-4273-a1f8-2ee185b55230'),
(3, 'constant-contact', '0.1.2', '0.0.1', 'unknown', NULL, '2019-12-04 04:45:19', '2019-12-04 04:45:19', '2020-01-25 14:33:36', 'b6151e78-3c92-43ce-bf40-db92d33eb73e');

-- --------------------------------------------------------

--
-- Table structure for table `craft_queue`
--

CREATE TABLE `craft_queue` (
  `id` int(11) NOT NULL,
  `job` longblob NOT NULL,
  `description` text,
  `timePushed` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) UNSIGNED NOT NULL DEFAULT '1024',
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int(11) DEFAULT NULL,
  `progress` smallint(6) NOT NULL DEFAULT '0',
  `progressLabel` varchar(255) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `fail` tinyint(1) DEFAULT '0',
  `dateFailed` datetime DEFAULT NULL,
  `error` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `craft_relations`
--

CREATE TABLE `craft_relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceSiteId` int(11) DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_relations`
--

INSERT INTO `craft_relations` (`id`, `fieldId`, `sourceId`, `sourceSiteId`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(3, 4, 21, NULL, 16, 1, '2019-11-23 20:25:01', '2019-11-23 20:25:01', '9ba24e71-03dc-457d-b497-12a731ebd1eb'),
(4, 4, 22, NULL, 17, 1, '2019-11-23 20:25:01', '2019-11-23 20:25:01', '91616bea-6127-474b-8c25-35a2a82f0fb8'),
(7, 4, 24, NULL, 16, 1, '2019-11-23 20:54:33', '2019-11-23 20:54:33', '4636a609-18a1-421f-8a20-e7666ea42712'),
(8, 4, 25, NULL, 17, 1, '2019-11-23 20:54:33', '2019-11-23 20:54:33', 'bdcf698a-4016-48a7-93af-8f44419d0ef9'),
(10, 2, 28, NULL, 17, 1, '2019-11-23 22:39:19', '2019-11-23 22:39:19', 'd2f5a49f-3672-4542-9669-a215f3fc55a7'),
(12, 2, 29, NULL, 17, 1, '2019-11-23 22:49:56', '2019-11-23 22:49:56', '70925295-8332-4912-aed5-f048f56392c5'),
(14, 2, 30, NULL, 17, 1, '2019-11-23 22:51:44', '2019-11-23 22:51:44', 'fcb5db8f-c9ff-4487-b43b-2ba2624dcbd2'),
(16, 2, 31, NULL, 17, 1, '2019-11-23 22:51:59', '2019-11-23 22:51:59', 'fff19d23-2279-452c-a18a-ca995593c2d4'),
(18, 2, 32, NULL, 17, 1, '2019-11-23 22:53:05', '2019-11-23 22:53:05', '2ac2ea05-b013-4163-898e-4fc055267d67'),
(20, 2, 33, NULL, 17, 1, '2019-11-23 22:53:15', '2019-11-23 22:53:15', 'eeb205f6-557f-4689-9247-2e5fc0a27d5c'),
(25, 4, 35, NULL, 16, 1, '2019-12-01 00:04:11', '2019-12-01 00:04:11', '383c94b7-a641-4ae7-abc0-ea14709c1ce2'),
(26, 4, 36, NULL, 17, 1, '2019-12-01 00:04:11', '2019-12-01 00:04:11', '8f69c74d-d157-49c3-ba24-92ff497b38f0'),
(29, 4, 39, NULL, 16, 1, '2019-12-01 00:09:15', '2019-12-01 00:09:15', 'c6b6aced-f42e-4c28-8f59-eb1cc74e35b2'),
(30, 4, 40, NULL, 17, 1, '2019-12-01 00:09:15', '2019-12-01 00:09:15', '851ed26d-7a38-4fc8-b765-692014050c8f'),
(33, 4, 43, NULL, 16, 1, '2019-12-01 00:13:23', '2019-12-01 00:13:23', '90e5e887-f81a-44e5-8b1f-7fd3a4e67a03'),
(34, 4, 44, NULL, 17, 1, '2019-12-01 00:13:23', '2019-12-01 00:13:23', '9df5848b-80a2-444f-9665-421a60cca339'),
(37, 4, 47, NULL, 16, 1, '2019-12-01 00:14:59', '2019-12-01 00:14:59', '4aa8a707-7d6a-449b-a615-01accb31c88a'),
(38, 4, 48, NULL, 17, 1, '2019-12-01 00:14:59', '2019-12-01 00:14:59', '22850f51-a097-448e-bb62-099ef1009ba6'),
(40, 2, 50, NULL, 17, 1, '2019-12-01 00:44:38', '2019-12-01 00:44:38', '9ff4e387-762a-473a-9dda-d04800495848'),
(42, 2, 51, NULL, 17, 1, '2019-12-01 00:44:38', '2019-12-01 00:44:38', 'b3bfe837-7bca-422d-a012-54920b7aa15b'),
(45, 4, 62, NULL, 16, 1, '2019-12-01 19:11:22', '2019-12-01 19:11:22', '3e2ff7a1-9d2a-4f29-a7d4-3f31565a2a45'),
(46, 4, 63, NULL, 17, 1, '2019-12-01 19:11:22', '2019-12-01 19:11:22', '485f415b-0050-4ae8-99a6-aa5dde538124'),
(49, 4, 66, NULL, 16, 1, '2019-12-04 03:38:48', '2019-12-04 03:38:48', '75939e1a-1710-498a-a140-070a426c420d'),
(50, 4, 67, NULL, 17, 1, '2019-12-04 03:38:48', '2019-12-04 03:38:48', 'b1a79492-a295-4e98-a2cc-1e4510b87832'),
(55, 2, 72, NULL, 17, 1, '2019-12-04 20:03:31', '2019-12-04 20:03:31', 'ee442bc7-2ed9-406b-b287-fc90976ca1a0'),
(58, 4, 75, NULL, 16, 1, '2019-12-04 20:09:38', '2019-12-04 20:09:38', '4934db8e-273a-4102-8b6a-0bcbb7822af7'),
(59, 4, 76, NULL, 17, 1, '2019-12-04 20:09:38', '2019-12-04 20:09:38', '8c58fe3e-84a2-47eb-b959-6ee779066b85'),
(62, 4, 79, NULL, 16, 1, '2019-12-04 20:10:15', '2019-12-04 20:10:15', '722fc83a-dd2a-4179-a42b-8db0ba280603'),
(63, 4, 80, NULL, 17, 1, '2019-12-04 20:10:15', '2019-12-04 20:10:15', '3f1c0bc6-432c-482d-92d3-a12e3b23a89f'),
(65, 2, 82, NULL, 17, 1, '2019-12-04 20:12:28', '2019-12-04 20:12:28', '7949cfe4-f609-4da7-a220-8de1966af126'),
(67, 2, 84, NULL, 17, 1, '2019-12-04 20:12:54', '2019-12-04 20:12:54', '84bae0f9-eb72-4288-8d22-212bad20cc25'),
(70, 4, 100, NULL, 16, 1, '2019-12-04 20:18:01', '2019-12-04 20:18:01', '44d684d1-7a0d-4c4d-8f78-3c3e224210a0'),
(71, 4, 101, NULL, 17, 1, '2019-12-04 20:18:01', '2019-12-04 20:18:01', '73d99098-174b-48bf-856e-2ace10051a4e'),
(74, 4, 104, NULL, 16, 1, '2019-12-04 20:18:57', '2019-12-04 20:18:57', '11e8fd4a-a441-4159-be06-85feb8b680d5'),
(75, 4, 105, NULL, 17, 1, '2019-12-04 20:18:57', '2019-12-04 20:18:57', '9f1c5e16-e866-40b7-82c1-1443f8b1ed5a'),
(78, 4, 109, NULL, 16, 1, '2019-12-04 20:28:08', '2019-12-04 20:28:08', 'f298c3bc-7421-4b43-b4e3-84b94780d609'),
(79, 4, 110, NULL, 107, 1, '2019-12-04 20:28:08', '2019-12-04 20:28:08', 'b897d063-e42c-4d93-8e55-ab1e3b3f6902'),
(82, 4, 113, NULL, 16, 1, '2019-12-04 20:30:35', '2019-12-04 20:30:35', '1d21b621-93eb-408f-9206-88184af16574'),
(83, 4, 114, NULL, 107, 1, '2019-12-04 20:30:36', '2019-12-04 20:30:36', '04ed1911-a48f-473f-a2b7-91a294f0ef7a'),
(86, 4, 117, NULL, 16, 1, '2019-12-04 20:45:54', '2019-12-04 20:45:54', '84dcfd11-76a2-4920-a76c-ec523048ad08'),
(87, 4, 118, NULL, 107, 1, '2019-12-04 20:45:54', '2019-12-04 20:45:54', 'fe27007b-d70a-4c39-b09a-1d2f75120932'),
(90, 4, 122, NULL, 16, 1, '2019-12-04 20:50:15', '2019-12-04 20:50:15', '3fc38ad7-9ff5-477b-8fcd-6f88ae1df666'),
(91, 4, 123, NULL, 107, 1, '2019-12-04 20:50:15', '2019-12-04 20:50:15', '0fb90baf-8d4b-4f20-9af7-0324f4f70846'),
(94, 4, 127, NULL, 16, 1, '2019-12-04 21:00:19', '2019-12-04 21:00:19', '1f26ecc6-d64e-4200-a57f-e8b58662d5bd'),
(95, 4, 128, NULL, 107, 1, '2019-12-04 21:00:19', '2019-12-04 21:00:19', 'db69bcd2-1b09-4895-bb4b-9f04b55c630d'),
(98, 4, 132, NULL, 16, 1, '2019-12-04 21:08:49', '2019-12-04 21:08:49', '0718ef48-029c-4b37-9f1c-6ef98be91fa2'),
(99, 4, 133, NULL, 130, 1, '2019-12-04 21:08:49', '2019-12-04 21:08:49', '7dfaac68-bea1-4eba-94e7-5bb80e951278'),
(101, 2, 136, NULL, 135, 1, '2019-12-04 21:17:12', '2019-12-04 21:17:12', 'af9f5be9-3690-4374-b656-dadc6a7254c5'),
(103, 2, 138, NULL, 135, 1, '2019-12-04 21:17:49', '2019-12-04 21:17:49', 'c3823009-e729-4b65-8a52-89eb4bb1ae7b'),
(105, 2, 141, NULL, 135, 1, '2019-12-04 21:20:50', '2019-12-04 21:20:50', 'eaf9bf46-3c13-4b17-be73-48a087a9668e'),
(107, 2, 144, NULL, 143, 1, '2019-12-04 21:25:10', '2019-12-04 21:25:10', '8772d289-c854-405e-b914-6b64366be045'),
(109, 2, 146, NULL, 143, 1, '2019-12-04 21:34:09', '2019-12-04 21:34:09', 'cd75ec3d-1682-4058-9b9d-3872ff12893a'),
(111, 2, 148, NULL, 143, 1, '2019-12-04 21:34:17', '2019-12-04 21:34:17', '61c3302b-bae9-4604-b6c2-9df63713429d'),
(113, 2, 150, NULL, 143, 1, '2019-12-04 21:34:34', '2019-12-04 21:34:34', '6f421f71-e9a0-4d75-bc7a-d8e6c87e35d7'),
(115, 2, 152, NULL, 135, 1, '2019-12-05 00:37:13', '2019-12-05 00:37:13', '912541ed-c9f3-4b9b-9c6a-b1720451dee5'),
(118, 2, 154, NULL, 143, 1, '2019-12-05 00:37:17', '2019-12-05 00:37:17', '4456d9f3-5a02-484b-a8d0-39c92a1736dd'),
(121, 2, 157, NULL, 143, 1, '2019-12-05 00:39:38', '2019-12-05 00:39:38', 'e0d1814e-cabd-453d-a0a2-68a798b0aca3'),
(126, 2, 159, NULL, 135, 1, '2019-12-05 03:41:52', '2019-12-05 03:41:52', '1e7b6819-93f2-495d-bb9b-0c80834eb464'),
(129, 4, 163, NULL, 16, 1, '2019-12-11 01:38:00', '2019-12-11 01:38:00', '5f5f6cef-98c3-490c-be08-4e74479ffe19'),
(130, 4, 164, NULL, 130, 1, '2019-12-11 01:38:00', '2019-12-11 01:38:00', '51c4c4a0-fceb-4ad2-a3cd-f33b74580ba7'),
(133, 4, 167, NULL, 16, 1, '2019-12-11 01:38:01', '2019-12-11 01:38:01', 'eb4783ea-16f4-49b0-a252-fd596ab9b8fd'),
(134, 4, 168, NULL, 130, 1, '2019-12-11 01:38:01', '2019-12-11 01:38:01', '4a00624e-6ed2-44f4-b33b-0bedddbf371b'),
(135, 2, 174, NULL, 135, 1, '2020-01-16 02:10:16', '2020-01-16 02:10:16', '8cce96aa-900e-4799-950e-74b9d95a7df2'),
(136, 2, 191, NULL, 135, 1, '2020-01-16 02:10:16', '2020-01-16 02:10:16', '395f80f1-7b79-48a7-a5a6-6dbb7045ae78'),
(137, 2, 4, NULL, 135, 1, '2020-01-16 02:10:25', '2020-01-16 02:10:25', 'ada48247-c119-4581-b7bb-96002fb6c1c7'),
(138, 2, 193, NULL, 135, 1, '2020-01-16 02:10:25', '2020-01-16 02:10:25', '0866c8ff-8e3b-40a9-934e-f6bcfe9d92e1'),
(139, 2, 6, NULL, 143, 1, '2020-01-19 01:36:31', '2020-01-19 01:36:31', 'fe4884ec-1ffd-4446-956f-56576d42d873'),
(140, 2, 264, NULL, 143, 1, '2020-01-19 01:36:31', '2020-01-19 01:36:31', 'f0615abe-64c6-40bb-9f88-c54aba34bf2b'),
(141, 4, 18, NULL, 16, 1, '2020-01-19 02:06:32', '2020-01-19 02:06:32', 'e3e0bba5-848d-4f5d-859a-2c76591cc2a0'),
(142, 4, 19, NULL, 130, 1, '2020-01-19 02:06:32', '2020-01-19 02:06:32', '28284f1a-aaf4-41b8-bcef-23434d6e617a'),
(143, 9, 37, NULL, 266, 1, '2020-01-19 02:06:32', '2020-01-19 02:06:32', '725fb5c0-7445-4a1c-bc7c-618db9183e2a'),
(144, 4, 268, NULL, 16, 1, '2020-01-19 02:06:32', '2020-01-19 02:06:32', 'cd99047c-dea1-4ab8-b691-b1a3aa36afcf'),
(145, 4, 269, NULL, 130, 1, '2020-01-19 02:06:32', '2020-01-19 02:06:32', '3b97d21d-eb1c-4b25-9c25-4d6cd4df3370'),
(146, 9, 270, NULL, 266, 1, '2020-01-19 02:06:33', '2020-01-19 02:06:33', '51b4e97f-2095-48ee-a38d-96974b5ef172'),
(147, 39, 11, NULL, 244, 1, '2020-01-25 20:03:29', '2020-01-25 20:03:29', '4c82773f-4a99-448e-8f7a-46a8561f16d3'),
(148, 39, 11, NULL, 253, 2, '2020-01-25 20:03:29', '2020-01-25 20:03:29', 'ac262581-80c2-4dac-b23e-d3570e46a646'),
(149, 39, 11, NULL, 205, 3, '2020-01-25 20:03:29', '2020-01-25 20:03:29', 'b436fa71-5352-44a6-b5b7-7263759534b8'),
(150, 39, 11, NULL, 199, 4, '2020-01-25 20:03:29', '2020-01-25 20:03:29', 'dac115c1-1004-4142-a7f7-862951898ab2'),
(151, 39, 450, NULL, 244, 1, '2020-01-25 20:03:29', '2020-01-25 20:03:29', 'ebac1bca-88e6-4c69-ab9d-b59e4a1d979c'),
(152, 39, 450, NULL, 253, 2, '2020-01-25 20:03:29', '2020-01-25 20:03:29', '73d37dc7-e6bc-4144-aa59-d948d16dd223'),
(153, 39, 450, NULL, 205, 3, '2020-01-25 20:03:29', '2020-01-25 20:03:29', 'd7d0b3eb-7ea1-4b78-a85f-85e4500f3404'),
(154, 39, 450, NULL, 199, 4, '2020-01-25 20:03:29', '2020-01-25 20:03:29', '09027cf6-3fa7-43ff-b953-9355a5859bd2'),
(155, 2, 199, NULL, 130, 1, '2020-01-25 20:06:11', '2020-01-25 20:06:11', '0f46273a-862b-484a-b753-b95b874e9420'),
(156, 2, 451, NULL, 130, 1, '2020-01-25 20:06:11', '2020-01-25 20:06:11', 'ff086b97-754f-41ed-a8eb-01455dd39b6c');

-- --------------------------------------------------------

--
-- Table structure for table `craft_resourcepaths`
--

CREATE TABLE `craft_resourcepaths` (
  `hash` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_resourcepaths`
--

INSERT INTO `craft_resourcepaths` (`hash`, `path`) VALUES
('10d26bb9', '@app/web/assets/generalsettings/dist'),
('14235597', '@app/web/assets/updater/dist'),
('151dcc7d', '@lib/selectize'),
('16fb843d', '@lib/axios'),
('189a861e', '@app/web/assets/craftsupport/dist'),
('1c2cc474', '@lib/jquery-ui'),
('1f7188f7', '@lib/xregexp'),
('23bf7735', '@app/web/assets/login/dist'),
('2781624b', '@app/web/assets/cp/dist'),
('296e0a3f', '@lib/vue'),
('2c1e906', '@app/web/assets/edituser/dist'),
('31a959f0', '@app/web/assets/recententries/dist'),
('31c15a42', '@app/web/assets/login/dist'),
('35ff4f3c', '@app/web/assets/cp/dist'),
('3acc45c6', '@app/web/assets/recententries/dist'),
('3b102748', '@lib/vue'),
('3c6a051f', '@vendor/craftcms/redactor/lib/redactor-plugins/fullscreen'),
('3cb92f60', '@app/web/assets/pluginstore/dist'),
('40fb72a6', '@lib/velocity'),
('4163e1f9', '@lib/picturefill'),
('430aa8ac', '@bower/jquery/dist'),
('45fa20da', '@app/web/assets/utilities/dist'),
('46c7dd3b', '@lib/jquery-touch-events'),
('47607a8', '@app/web/assets/updateswidget/dist'),
('47b552b3', '@app/web/assets/tablesettings/dist'),
('485a94a', '@lib/axios'),
('4cd04e85', '@app/web/assets/tablesettings/dist'),
('4ce40482', '@app/web/assets/feed/dist'),
('4e9f3cec', '@app/web/assets/utilities/dist'),
('4ea2f039', '@lib/jquery.payment'),
('4fc6c1a8', '@lib/d3'),
('517485db', '@bower/jquery/dist'),
('52855fd1', '@lib/velocity'),
('5507d6f6', '@app/web/assets/dbbackup/dist'),
('598be007', '@lib/fileupload'),
('5cdcdd4e', '@lib/jquery.payment'),
('5e9a29f5', '@app/web/assets/feed/dist'),
('693d0210', '@lib/fabric'),
('6a4f59d5', '@app/web/assets/dashboard/dist'),
('6bd34bd0', '@app/web/assets/deprecationerrors/dist'),
('6c9a0359', '@lib/element-resize-detector'),
('6d28779b', '@app/web/assets/fields/dist'),
('6f507d9a', '@app/web/assets/matrixsettings/dist'),
('7047b92c', '@craft/redactor/assets/field/dist'),
('712f9035', '@app/web/assets/routes/dist'),
('75b296a4', '@app/web/assets/updates/dist'),
('7c7bd62e', '@lib/garnishjs'),
('7d2e50ed', '@app/web/assets/matrixsettings/dist'),
('7ee42e2e', '@lib/element-resize-detector'),
('81bab86f', '@vendor/craftcms/redactor/lib/redactor'),
('83ccd052', '@lib/xregexp'),
('8427debb', '@app/web/assets/craftsupport/dist'),
('89a094d8', '@lib/selectize'),
('8ab5727a', '@app/web/assets/updateswidget/dist'),
('91b2fd25', '@lib/xregexp'),
('92efb1a6', '@lib/jquery-ui'),
('9ae02045', '@app/web/assets/updater/dist'),
('9bdeb9af', '@lib/selectize'),
('9cb73614', '@app/web/assets/installer/dist'),
('9e111e6b', '@app/web/assets/generalsettings/dist'),
('9e83527b', '@vendor/craftcms/redactor/lib/redactor-plugins/video'),
('a6476114', '@app/web/assets/plugins/dist'),
('a9421799', '@app/web/assets/cp/dist'),
('a9d6a89d', '@vendor/craftcms/redactor/lib/redactor-plugins/fullscreen'),
('ac78aa2c', '@app/web/assets/editsection/dist'),
('ad7c02e7', '@app/web/assets/login/dist'),
('ae4ab69', '@app/web/assets/craftsupport/dist'),
('ae4da550', '@lib/timepicker'),
('b3ffff9', '@vendor/craftcms/redactor/lib/redactor-plugins/video'),
('b40f3014', '@app/web/assets/recententries/dist'),
('bc338827', '@lib/timepicker'),
('be06875b', '@app/web/assets/editsection/dist'),
('c06185eb', '@lib/jquery.payment'),
('c105b47a', '@lib/d3'),
('c42aee07', '@app/web/assets/editentry/dist'),
('c536b8a2', '@lib/fileupload'),
('c804a8e9', '@lib/jquery-touch-events'),
('ca82a260', '@lib/prismjs'),
('cb08cc33', '@app/web/assets/matrix/dist'),
('cb395508', '@app/web/assets/utilities/dist'),
('cdc9dd7e', '@bower/jquery/dist'),
('cfa0942b', '@lib/picturefill'),
('d0595c27', '@app/web/assets/feed/dist'),
('d1d24ac', '@vendor/craftcms/redactor/lib/redactor'),
('d2414589', '@app/web/assets/sites/dist'),
('d37b990d', '@lib/d3'),
('d654c370', '@app/web/assets/editentry/dist'),
('d74895d5', '@lib/fileupload'),
('d8fc8f17', '@lib/prismjs'),
('d976e144', '@app/web/assets/matrix/dist'),
('da7a859e', '@lib/jquery-touch-events'),
('dc462a03', '@lib/velocity'),
('dddeb95c', '@lib/picturefill'),
('e0c68e8b', '@lib/garnishjs'),
('e259768b', '@lib/element-resize-detector'),
('e3eb0249', '@app/web/assets/fields/dist'),
('e48c2c07', '@app/web/assets/dashboard/dist'),
('e52e903', '@lib/jquery-ui'),
('e7fe77c2', '@lib/fabric'),
('f131b9e', '@app/web/assets/updateswidget/dist'),
('f1952f3e', '@app/web/assets/fields/dist'),
('f2b8a3fc', '@lib/garnishjs'),
('f5805ab5', '@lib/fabric'),
('f5e31c86', '@lib'),
('f6f20170', '@app/web/assets/dashboard/dist'),
('fb71e376', '@app/web/assets/updates/dist'),
('fce025ef', '@craft/redactor/assets/field/dist');

-- --------------------------------------------------------

--
-- Table structure for table `craft_revisions`
--

CREATE TABLE `craft_revisions` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_revisions`
--

INSERT INTO `craft_revisions` (`id`, `sourceId`, `creatorId`, `num`, `notes`) VALUES
(1, 2, 1, 1, NULL),
(2, 4, 1, 1, NULL),
(3, 6, 1, 1, NULL),
(4, 11, 1, 1, NULL),
(5, 11, 1, 2, NULL),
(6, 11, 1, 3, NULL),
(7, 2, 1, 2, NULL),
(8, 2, 1, 3, NULL),
(9, 2, 1, 4, NULL),
(10, 4, 1, 2, NULL),
(11, 6, 1, 2, NULL),
(12, 4, 1, 3, NULL),
(13, 4, 1, 4, NULL),
(14, 4, 1, 5, NULL),
(15, 4, 1, 6, NULL),
(16, 4, 1, 7, NULL),
(17, 4, 1, 8, NULL),
(18, 2, 1, 5, NULL),
(19, 2, 1, 6, NULL),
(20, 2, 1, 7, NULL),
(21, 2, 1, 8, NULL),
(22, 4, 1, 9, NULL),
(23, 4, 1, 10, NULL),
(24, 6, 1, 3, NULL),
(25, 4, 1, 11, NULL),
(26, 4, 1, 12, NULL),
(27, 4, 1, 13, NULL),
(28, 6, 1, 4, NULL),
(29, 2, 1, 9, NULL),
(30, 2, 1, 10, NULL),
(31, 4, 1, 14, 'Applied “Draft 1”'),
(32, 2, 1, 11, NULL),
(33, 2, 1, 12, NULL),
(34, 4, 1, 15, NULL),
(35, 4, 1, 16, NULL),
(36, 6, 1, 5, NULL),
(37, 6, 1, 6, NULL),
(38, 6, 1, 7, NULL),
(39, 6, 1, 8, NULL),
(40, 6, 1, 9, NULL),
(41, 6, 1, 10, NULL),
(42, 2, 1, 13, NULL),
(43, 2, 1, 14, NULL),
(44, 2, 1, 15, NULL),
(45, 2, 1, 16, NULL),
(46, 2, 1, 17, NULL),
(47, 2, 1, 18, NULL),
(48, 2, 1, 19, NULL),
(49, 2, 1, 20, NULL),
(50, 4, 1, 17, NULL),
(51, 4, 1, 18, NULL),
(52, 4, 1, 19, NULL),
(53, 6, 1, 11, NULL),
(54, 6, 1, 12, NULL),
(55, 6, 1, 13, NULL),
(56, 6, 1, 14, NULL),
(57, 4, 1, 20, NULL),
(58, 6, 1, 15, NULL),
(59, 6, 1, 16, NULL),
(60, 4, 1, 21, NULL),
(61, 2, 1, 21, NULL),
(62, 2, 1, 22, NULL),
(63, 174, 1, 1, NULL),
(64, 179, 1, 1, NULL),
(65, 182, 1, 1, NULL),
(66, 185, 1, 1, NULL),
(67, 188, 1, 1, NULL),
(68, 174, 1, 2, NULL),
(69, 4, 1, 22, NULL),
(70, 196, 1, 1, NULL),
(71, 199, 1, 1, NULL),
(72, 202, 1, 1, NULL),
(73, 205, 1, 1, NULL),
(74, 208, 1, 1, NULL),
(75, 211, 1, 1, NULL),
(76, 214, 1, 1, NULL),
(77, 217, 1, 1, NULL),
(78, 220, 1, 1, NULL),
(79, 223, 1, 1, NULL),
(80, 226, 1, 1, NULL),
(81, 229, 1, 1, NULL),
(82, 232, 1, 1, NULL),
(83, 235, 1, 1, NULL),
(84, 238, 1, 1, NULL),
(85, 241, 1, 1, NULL),
(86, 244, 1, 1, NULL),
(87, 247, 1, 1, NULL),
(88, 250, 1, 1, NULL),
(89, 253, 1, 1, NULL),
(90, 256, 1, 1, NULL),
(91, 259, 1, 1, NULL),
(92, 262, 1, 1, NULL),
(93, 6, 1, 17, NULL),
(94, 2, 1, 23, NULL),
(95, 271, 1, 1, NULL),
(96, 271, 1, 2, NULL),
(97, 271, 1, 3, NULL),
(98, 271, 1, 4, NULL),
(99, 271, 1, 5, NULL),
(100, 271, 1, 6, NULL),
(101, 271, 1, 7, NULL),
(102, 271, 1, 8, NULL),
(103, 271, 1, 9, NULL),
(104, 271, 1, 10, 'Applied “Draft 1”'),
(105, 271, 1, 11, NULL),
(106, 271, 1, 12, NULL),
(107, 271, 1, 13, NULL),
(108, 271, 1, 14, NULL),
(109, 271, 1, 15, NULL),
(110, 271, 1, 16, NULL),
(111, 271, 1, 17, NULL),
(112, 271, 1, 18, NULL),
(113, 271, 1, 19, NULL),
(114, 271, 1, 20, NULL),
(115, 271, 1, 21, NULL),
(116, 205, 1, 2, NULL),
(117, 205, 1, 3, NULL),
(118, 205, 1, 4, NULL),
(119, 11, 1, 4, NULL),
(120, 11, 1, 5, NULL),
(121, 11, 1, 6, NULL),
(122, 11, 1, 7, NULL),
(123, 199, 1, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `craft_searchindex`
--

CREATE TABLE `craft_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `keywords` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_searchindex`
--

INSERT INTO `craft_searchindex` (`elementId`, `attribute`, `fieldId`, `siteId`, `keywords`) VALUES
(1, 'email', 0, 1, ' jameslamarre gmail com '),
(1, 'fullname', 0, 1, ''),
(1, 'lastname', 0, 1, ''),
(1, 'firstname', 0, 1, ''),
(1, 'username', 0, 1, ' admin '),
(1, 'slug', 0, 1, ''),
(4, 'title', 0, 1, ' about '),
(6, 'title', 0, 1, ' get in touch '),
(8, 'slug', 0, 1, ''),
(8, 'field', 1, 1, ' empowering youth families and communities with gender affirming services training and research '),
(9, 'slug', 0, 1, ''),
(10, 'slug', 0, 1, ''),
(9, 'field', 1, 1, ' 936 broadway 2nd floornyc ny 10010 212 879 4900 x370 '),
(10, 'field', 1, 1, ' genderandfamilyproject '),
(11, 'slug', 0, 1, ' 404 page '),
(11, 'title', 0, 1, ' 404 page '),
(16, 'kind', 0, 1, ' image '),
(16, 'extension', 0, 1, ' png '),
(16, 'filename', 0, 1, ' image2 png '),
(16, 'slug', 0, 1, ''),
(16, 'title', 0, 1, ' image2 '),
(17, 'kind', 0, 1, ' image '),
(17, 'extension', 0, 1, ' png '),
(17, 'filename', 0, 1, ' image1 duo png '),
(17, 'slug', 0, 1, ''),
(17, 'title', 0, 1, ' image1 duo '),
(18, 'slug', 0, 1, ''),
(19, 'slug', 0, 1, ''),
(18, 'field', 4, 1, ' image2 '),
(19, 'field', 4, 1, ' 2017 06 25 nyc pride gender and family project 135 2 '),
(4, 'slug', 0, 1, ' about '),
(6, 'slug', 0, 1, ' get involved '),
(4, 'field', 2, 1, ' 20190118 ackerman 118 '),
(4, 'field', 10, 1, ' the gender family project gfp empowers youth families and communities by providing gender affirmative services training and research gfp promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family gfp was founded in 2010 and is directed by jean malpas lmhc lmft who has trained and published nationally and internationally on issues of gender and sexuality what we do h1what we do h2what we do h3what we do h4what we do bwhat we do iwhat we dogfp provides comprehensive multidisciplinary services for gender expansive children transgender adolescents their families and communities please find below a list of our services support groups for caregivers grandparents siblings and family membersplay group for children and tweens 5 to 14 years oldsupport group for adolescents 14 to 18 years oldspanish speaking caregiver support groupfamily therapy and parental coachingaffirmative psychological and gender evaluationtraining and education for educators mental health and health providerscorporate training and gender literacy education for groups and organizations '),
(53, 'slug', 0, 1, ''),
(53, 'field', 11, 1, ' gfp provides comprehensive multidisciplinary services for gender expansive children transgender adolescents their families and communities please find below a list of our services support groups for caregivers grandparents siblings and family members play group for children and tweens 5 to 14 years old support group for adolescents 14 to 18 years old spanish speaking caregiver support group family therapy and parental coaching affirmative psychological and gender evaluation training and education for educators mental health and health providers corporate training and gender literacy education for groups and organizationsi m a proud member of the lgbtq community but i know that we need to do more to make sure the trans community is protected accepted and respected violence against transgender people particularly trans women of color is alarmingly high i m grateful that programs like the gender family project are providing support to transgender individuals and their families '),
(18, 'field', 5, 1, ' meet gfp '),
(37, 'slug', 0, 1, ''),
(37, 'field', 9, 1, ' small '),
(37, 'field', 7, 1, ' the gift of gender authenticity '),
(37, 'field', 8, 1, ' watch gfp founder and director jean malpas give his tedx talk '),
(19, 'field', 5, 1, ' join the family '),
(71, 'slug', 0, 1, ''),
(71, 'field', 11, 1, ' the gender family project gfp empowers youth families and communities by providing gender affirmative services training and research gfp promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family gfp was founded in 2010 and is directed by jean malpas lmhc lmft who has trained and published nationally and internationally on issues of gender and sexuality what we do h1what we do h2what we do h3what we do h4what we do bwhat we do iwhat we dogfp provides comprehensive multidisciplinary services for gender expansive children transgender adolescents their families and communities please find below a list of our services support groups for caregivers grandparents siblings and family membersplay group for children and tweens 5 to 14 years oldsupport group for adolescents 14 to 18 years oldspanish speaking caregiver support groupfamily therapy and parental coachingaffirmative psychological and gender evaluationtraining and education for educators mental health and health providerscorporate training and gender literacy education for groups and organizations '),
(86, 'slug', 0, 1, ''),
(86, 'field', 11, 1, ' to get started with services at gfp all families must first complete our screening and intake process the first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services we will also ask you for some preliminary information about your family so that we can determine how we can best support you during the initial phone screening we can schedule you for an in person intake where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff by the end of this intake session our intake clinician and your family will come to a mutual decision about appropriate next steps if you are reaching out regarding the gender family project group and therapy services please email or call gfp program assistant at mdedini ackerman org 212 879 4900 ext 370 if you are already a client at gfp please contact alexis diaz coordinator of clinical community services at adiaz ackerman org or 212 879 4900 ext 307 if you are reaching out about gfp training and advocacy services please contact nadia swanson coordinator of training capacity building at nswanson ackerman org if you are interested in corporate or individual partnerships donations or organizing an event to support gfp please contact jane rennert coordinator of development communications at jrennert ackerman org if you are interested to learn more about our research and dissemination methods please contact elizabeth glaeser coordinator of research dissemination at lglaeser ackerman org '),
(6, 'field', 2, 1, ' gfp back heart3 '),
(6, 'field', 10, 1, ' to get started with services at gfp all families must first complete our screening and intake process the first step is to schedule a 30 minute phone screening so that our team can answer any questions you might have about our services we will also ask you for some preliminary information about your family so that we can determine how we can best support you during the initial phone screening we can schedule you for an in person intake where you will have the opportunity to have a more comprehensive conversation with a member of our clinical staff by the end of this intake session our intake clinician and your family will come to a mutual decision about appropriate next steps if you are reaching out regarding the gender family project group and therapy services please email or call gfp program assistant at mdedini ackerman org 212 879 4900 ext 370 if you are already a client at gfp please contact alexis diaz coordinator of clinical community services at adiaz ackerman org or 212 879 4900 ext 307 if you are reaching out about gfp training and advocacy services please contact nadia swanson coordinator of training capacity building at nswanson ackerman org if you are interested in corporate or individual partnerships donations or organizing an event to support gfp please contact jane rennert coordinator of development communications at jrennert ackerman org if you are interested to learn more about our research and dissemination methods please contact elizabeth glaeser coordinator of research dissemination at lglaeser ackerman org '),
(18, 'field', 6, 1, ' notg video here '),
(107, 'title', 0, 1, ' 2017 06 25 nyc pride gender and family project 135 '),
(107, 'extension', 0, 1, ' png '),
(107, 'kind', 0, 1, ' image '),
(107, 'slug', 0, 1, ''),
(19, 'field', 6, 1, ' click here to learn more about the gender and family project '),
(2, 'slug', 0, 1, ' home page '),
(2, 'title', 0, 1, ' home page '),
(2, 'field', 24, 1, ''),
(2, 'field', 3, 1, ' meet gfp image2 notg video here join the family 2017 06 25 nyc pride gender and family project 135 2 click here to learn more about the gender and family project the gift of gender authenticity watch gfp founder and director jean malpas give his tedx talk small '),
(120, 'filename', 0, 1, ' 2017 06 25 nyc pride gender and family project 135 191204 205007 png '),
(120, 'extension', 0, 1, ' png '),
(120, 'kind', 0, 1, ' image '),
(120, 'slug', 0, 1, ''),
(120, 'title', 0, 1, ' 2017 06 25 nyc pride gender and family project 135 '),
(107, 'filename', 0, 1, ' 2017 06 25 nyc pride gender and family project 135 png '),
(125, 'filename', 0, 1, ' 2017 06 25 nyc pride gender and family project 135 191204 210012 png '),
(125, 'extension', 0, 1, ' png '),
(125, 'kind', 0, 1, ' image '),
(125, 'slug', 0, 1, ''),
(125, 'title', 0, 1, ' 2017 06 25 nyc pride gender and family project 135 '),
(130, 'filename', 0, 1, ' 2017 06 25 nyc pride gender and family project 135 2 png '),
(130, 'extension', 0, 1, ' png '),
(130, 'kind', 0, 1, ' image '),
(130, 'slug', 0, 1, ''),
(130, 'title', 0, 1, ' 2017 06 25 nyc pride gender and family project 135 2 '),
(135, 'kind', 0, 1, ' image '),
(135, 'extension', 0, 1, ' png '),
(135, 'filename', 0, 1, ' 20190118 ackerman 118 png '),
(4, 'field', 24, 1, ''),
(140, 'filename', 0, 1, ' 20190118 ackerman 118 191204 212044 png '),
(140, 'extension', 0, 1, ' png '),
(140, 'kind', 0, 1, ' image '),
(140, 'slug', 0, 1, ''),
(140, 'title', 0, 1, ' 20190118 ackerman 118 '),
(135, 'slug', 0, 1, ''),
(135, 'title', 0, 1, ' 20190118 ackerman 118 '),
(143, 'filename', 0, 1, ' gfp back heart3 png '),
(143, 'extension', 0, 1, ' png '),
(143, 'kind', 0, 1, ' image '),
(143, 'slug', 0, 1, ''),
(143, 'title', 0, 1, ' gfp back heart3 '),
(6, 'field', 24, 1, ''),
(156, 'slug', 0, 1, ''),
(156, 'field', 1, 1, ' genderandfamily '),
(161, 'slug', 0, 1, ''),
(161, 'field', 1, 1, ' genderandfamilyproject '),
(174, 'slug', 0, 1, ' about 1 '),
(174, 'title', 0, 1, ' about '),
(174, 'field', 24, 1, ''),
(174, 'field', 2, 1, ' 20190118 ackerman 118 '),
(174, 'field', 10, 1, ' the gender family project gfp empowers youth families and communities by providing gender affirmative services training and research gfp promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family gfp was founded in 2010 and is directed by jean malpas lmhc lmft who has trained and published nationally and internationally on issues of gender and sexuality what we do h1what we do h2what we do h3what we do h4what we do bwhat we do iwhat we dogfp provides comprehensive multidisciplinary services for gender expansive children transgender adolescents their families and communities please find below a list of our services support groups for caregivers grandparents siblings and family membersplay group for children and tweens 5 to 14 years oldsupport group for adolescents 14 to 18 years oldspanish speaking caregiver support groupfamily therapy and parental coachingaffirmative psychological and gender evaluationtraining and education for educators mental health and health providerscorporate training and gender literacy education for groups and organizations '),
(175, 'slug', 0, 1, ''),
(175, 'field', 11, 1, ' the gender family project gfp empowers youth families and communities by providing gender affirmative services training and research gfp promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family gfp was founded in 2010 and is directed by jean malpas lmhc lmft who has trained and published nationally and internationally on issues of gender and sexuality what we do h1what we do h2what we do h3what we do h4what we do bwhat we do iwhat we dogfp provides comprehensive multidisciplinary services for gender expansive children transgender adolescents their families and communities please find below a list of our services support groups for caregivers grandparents siblings and family membersplay group for children and tweens 5 to 14 years oldsupport group for adolescents 14 to 18 years oldspanish speaking caregiver support groupfamily therapy and parental coachingaffirmative psychological and gender evaluationtraining and education for educators mental health and health providerscorporate training and gender literacy education for groups and organizations '),
(179, 'slug', 0, 1, ' youth family programs '),
(179, 'title', 0, 1, ' youth family programs '),
(179, 'field', 24, 1, ''),
(179, 'field', 2, 1, ''),
(179, 'field', 10, 1, ''),
(182, 'slug', 0, 1, ' gender inclusivity training '),
(182, 'title', 0, 1, ' gender inclusivity training '),
(182, 'field', 24, 1, ''),
(182, 'field', 2, 1, ''),
(182, 'field', 10, 1, ''),
(185, 'slug', 0, 1, ' research education '),
(185, 'title', 0, 1, ' research education '),
(185, 'field', 24, 1, ''),
(185, 'field', 2, 1, ''),
(185, 'field', 10, 1, ''),
(188, 'slug', 0, 1, ' get involved '),
(188, 'title', 0, 1, ' get involved '),
(188, 'field', 24, 1, ''),
(188, 'field', 2, 1, ''),
(188, 'field', 10, 1, ''),
(196, 'slug', 0, 1, ' about mission '),
(196, 'title', 0, 1, ' mission '),
(196, 'field', 24, 1, ''),
(196, 'field', 2, 1, ''),
(196, 'field', 10, 1, ''),
(199, 'field', 24, 1, ''),
(199, 'slug', 0, 1, ' family therapy '),
(199, 'title', 0, 1, ' family therapy '),
(202, 'slug', 0, 1, ' psychological evaluation '),
(202, 'title', 0, 1, ' psychological evaluation '),
(202, 'field', 24, 1, ''),
(202, 'field', 2, 1, ''),
(202, 'field', 10, 1, ''),
(205, 'field', 24, 1, ''),
(205, 'slug', 0, 1, ' support groups '),
(205, 'title', 0, 1, ' support groups '),
(208, 'slug', 0, 1, ' family youth advocacy teams '),
(208, 'title', 0, 1, ' family youth advocacy teams '),
(208, 'field', 24, 1, ''),
(208, 'field', 2, 1, ''),
(208, 'field', 10, 1, ''),
(211, 'slug', 0, 1, ' school and professional support '),
(211, 'title', 0, 1, ' school and professional support '),
(211, 'field', 24, 1, ''),
(211, 'field', 2, 1, ''),
(211, 'field', 10, 1, ''),
(214, 'slug', 0, 1, ' gender conference nyc gc nyc '),
(214, 'title', 0, 1, ' gender conference nyc gc nyc '),
(214, 'field', 24, 1, ''),
(214, 'field', 2, 1, ''),
(214, 'field', 10, 1, ''),
(217, 'slug', 0, 1, ' spanish services '),
(217, 'title', 0, 1, ' spanish services '),
(217, 'field', 24, 1, ''),
(217, 'field', 2, 1, ''),
(217, 'field', 10, 1, ''),
(220, 'slug', 0, 1, ' school trainings '),
(220, 'title', 0, 1, ' school trainings '),
(220, 'field', 24, 1, ''),
(220, 'field', 2, 1, ''),
(220, 'field', 10, 1, ''),
(223, 'slug', 0, 1, ' professional trainings '),
(223, 'title', 0, 1, ' professional trainings '),
(223, 'field', 24, 1, ''),
(223, 'field', 2, 1, ''),
(223, 'field', 10, 1, ''),
(226, 'slug', 0, 1, ' corporate trainings '),
(226, 'title', 0, 1, ' corporate trainings '),
(226, 'field', 24, 1, ''),
(226, 'field', 2, 1, ''),
(226, 'field', 10, 1, ''),
(229, 'slug', 0, 1, ' research at gfp '),
(229, 'title', 0, 1, ' research at gfp '),
(229, 'field', 24, 1, ''),
(229, 'field', 2, 1, ''),
(229, 'field', 10, 1, ''),
(232, 'slug', 0, 1, ' publications '),
(232, 'title', 0, 1, ' publications '),
(232, 'field', 24, 1, ''),
(232, 'field', 2, 1, ''),
(232, 'field', 10, 1, ''),
(235, 'slug', 0, 1, ' resources for families '),
(235, 'title', 0, 1, ' resources for families '),
(235, 'field', 24, 1, ''),
(235, 'field', 2, 1, ''),
(235, 'field', 10, 1, ''),
(238, 'slug', 0, 1, ' resources for professionals '),
(238, 'title', 0, 1, ' resources for professionals '),
(238, 'field', 24, 1, ''),
(238, 'field', 2, 1, ''),
(238, 'field', 10, 1, ''),
(241, 'slug', 0, 1, ' donate now '),
(241, 'title', 0, 1, ' donate now '),
(241, 'field', 24, 1, ''),
(241, 'field', 2, 1, ''),
(241, 'field', 10, 1, ''),
(244, 'slug', 0, 1, ' a night of a thousand genders '),
(244, 'title', 0, 1, ' a night of a thousand genders '),
(244, 'field', 24, 1, ''),
(244, 'field', 2, 1, ''),
(244, 'field', 10, 1, ''),
(247, 'slug', 0, 1, ' sponsorship corporate partner '),
(247, 'title', 0, 1, ' sponsorship corporate partner '),
(247, 'field', 24, 1, ''),
(247, 'field', 2, 1, ''),
(247, 'field', 10, 1, ''),
(250, 'slug', 0, 1, ' give through your foundation '),
(250, 'title', 0, 1, ' give through your foundation '),
(250, 'field', 24, 1, ''),
(250, 'field', 2, 1, ''),
(250, 'field', 10, 1, ''),
(253, 'slug', 0, 1, ' get involved volunteer '),
(253, 'title', 0, 1, ' get involved volunteer '),
(253, 'field', 24, 1, ''),
(253, 'field', 2, 1, ''),
(253, 'field', 10, 1, ''),
(256, 'slug', 0, 1, ' staff '),
(256, 'title', 0, 1, ' staff '),
(256, 'field', 24, 1, ''),
(256, 'field', 2, 1, ''),
(256, 'field', 10, 1, ''),
(259, 'slug', 0, 1, ' advisory council '),
(259, 'title', 0, 1, ' advisory council '),
(259, 'field', 24, 1, ''),
(259, 'field', 2, 1, ''),
(259, 'field', 10, 1, ''),
(262, 'slug', 0, 1, ' contact '),
(262, 'title', 0, 1, ' contact '),
(262, 'field', 24, 1, ''),
(262, 'field', 2, 1, ''),
(262, 'field', 10, 1, ''),
(266, 'filename', 0, 1, ' small mp4 '),
(266, 'extension', 0, 1, ' mp4 '),
(266, 'kind', 0, 1, ' video '),
(266, 'slug', 0, 1, ''),
(266, 'title', 0, 1, ' small '),
(271, 'title', 0, 1, ' style guide '),
(271, 'slug', 0, 1, ' style guide '),
(274, 'slug', 0, 1, ''),
(274, 'field', 29, 1, ''),
(274, 'field', 11, 1, ' the gender family project gfp empowers youth families and communities by providing gender affirmative services training and research gfp promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family gfp was founded in 2010 and is directed by jean malpas lmhc lmft who has trained and published nationally and internationally on issues of gender and sexuality what we do h1what we do h2what we do h3what we do h4what we do bwhat we do iwhat we dogfp provides comprehensive multidisciplinary services for gender expansive children transgender adolescents their families and communities please find below a list of our services support groups for caregivers grandparents siblings and family membersplay group for children and tweens 5 to 14 years oldsupport group for adolescents 14 to 18 years oldspanish speaking caregiver support groupfamily therapy and parental coachingaffirmative psychological and gender evaluationtraining and education for educators mental health and health providerscorporate training and gender literacy education for groups and organizations '),
(274, 'field', 30, 1, ''),
(277, 'slug', 0, 1, ''),
(277, 'field', 32, 1, ''),
(277, 'field', 31, 1, ' double content block h2testing a double content blockthe gender family project gfp empowers youth families and communities by providing gender affirmative services training and research gfp promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family gfp was founded in 2010 and is directed by jean malpas lmhc lmft who has trained and published nationally and internationally on issues of gender and sexuality '),
(278, 'slug', 0, 1, ''),
(278, 'field', 34, 1, ''),
(278, 'field', 33, 1, ' single column block h2the gender family project gfp empowers youth families and communities by providing gender affirmative services training and research gfp promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family to request an initial phone screening test '),
(278, 'field', 37, 1, ' showborder '),
(279, 'field', 33, 1, ' single column block h2 '),
(279, 'slug', 0, 1, ''),
(279, 'field', 34, 1, ''),
(280, 'slug', 0, 1, ''),
(280, 'field', 34, 1, ''),
(281, 'slug', 0, 1, ''),
(281, 'field', 34, 1, ''),
(303, 'filename', 0, 1, ' phone png '),
(303, 'extension', 0, 1, ' png '),
(303, 'kind', 0, 1, ' image '),
(274, 'field', 35, 1, ''),
(280, 'field', 33, 1, ' single column block h2 '),
(279, 'field', 37, 1, ' showborder '),
(281, 'field', 37, 1, ' showborder '),
(280, 'field', 37, 1, ' showborder '),
(281, 'field', 33, 1, ' single column block h2 '),
(382, 'filename', 0, 1, ' book svg '),
(274, 'field', 28, 1, ''),
(303, 'slug', 0, 1, ''),
(303, 'title', 0, 1, ' phone '),
(277, 'field', 36, 1, ' showborder '),
(318, 'kind', 0, 1, ' image '),
(318, 'extension', 0, 1, ' svg '),
(318, 'filename', 0, 1, ' arrow svg '),
(326, 'filename', 0, 1, ' arrow 200125 145408 svg '),
(326, 'extension', 0, 1, ' svg '),
(326, 'kind', 0, 1, ' image '),
(326, 'slug', 0, 1, ''),
(326, 'title', 0, 1, ' arrow '),
(318, 'slug', 0, 1, ''),
(318, 'title', 0, 1, ' arrow '),
(334, 'slug', 0, 1, ''),
(334, 'field', 29, 1, ''),
(334, 'field', 11, 1, ' the gender family project gfp empowers youth families and communities by providing gender affirmative services training and research gfp promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family gfp was founded in 2010 and is directed by jean malpas lmhc lmft who has trained and published nationally and internationally on issues of gender and sexuality what we do h1what we do h2what we do h3what we do h4what we do bwhat we do iwhat we dogfp provides comprehensive multidisciplinary services for gender expansive children transgender adolescents their families and communities please find below a list of our services support groups for caregivers grandparents siblings and family membersplay group for children and tweens 5 to 14 years oldsupport group for adolescents 14 to 18 years oldspanish speaking caregiver support groupfamily therapy and parental coachingaffirmative psychological and gender evaluationtraining and education for educators mental health and health providerscorporate training and gender literacy education for groups and organizations '),
(334, 'field', 28, 1, ''),
(335, 'slug', 0, 1, ''),
(335, 'field', 32, 1, ''),
(335, 'field', 31, 1, ' the gender family project gfp empowers youth families and communities by providing gender affirmative services training and research gfp promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family gfp was founded in 2010 and is directed by jean malpas lmhc lmft who has trained and published nationally and internationally on issues of gender and sexuality '),
(335, 'field', 36, 1, ' showborder '),
(336, 'slug', 0, 1, ''),
(336, 'field', 34, 1, ''),
(336, 'field', 33, 1, ' single column block h2the gender family project gfp empowers youth families and communities by providing gender affirmative services training and research gfp promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family to request an initial phone screening test '),
(337, 'slug', 0, 1, ''),
(337, 'field', 34, 1, ''),
(337, 'field', 33, 1, ' single column block h2 '),
(338, 'slug', 0, 1, ''),
(338, 'field', 34, 1, ''),
(338, 'field', 33, 1, ' single column block h2 '),
(339, 'slug', 0, 1, ''),
(339, 'field', 34, 1, ''),
(339, 'field', 33, 1, ' single column block h2 '),
(334, 'field', 30, 1, ''),
(382, 'extension', 0, 1, ' svg '),
(336, 'field', 37, 1, ' showborder '),
(337, 'field', 37, 1, ' showborder '),
(338, 'field', 37, 1, ' showborder '),
(339, 'field', 37, 1, ' showborder '),
(334, 'field', 35, 1, ''),
(382, 'kind', 0, 1, ' image '),
(382, 'slug', 0, 1, ''),
(382, 'title', 0, 1, ' book '),
(383, 'slug', 0, 1, ''),
(383, 'field', 32, 1, ''),
(383, 'field', 31, 1, ' between pink and blue published may 2012 with publisherhere is an article description of something written by jean malpas click here to read an article '),
(271, 'field', 10, 1, ' the gender family project gfp empowers youth families and communities by providing gender affirmative services training and research gfp promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family gfp was founded in 2010 and is directed by jean malpas lmhc lmft who has trained and published nationally and internationally on issues of gender and sexuality what we do h1what we do h2what we do h3what we do h4what we do bwhat we do iwhat we dogfp provides comprehensive multidisciplinary services for gender expansive children transgender adolescents their families and communities please find below a list of our services support groups for caregivers grandparents siblings and family membersplay group for children and tweens 5 to 14 years oldsupport group for adolescents 14 to 18 years oldspanish speaking caregiver support groupfamily therapy and parental coachingaffirmative psychological and gender evaluationtraining and education for educators mental health and health providerscorporate training and gender literacy education for groups and organizations the gender family project gfp empowers youth families and communities by providing gender affirmative services training and research gfp promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family gfp was founded in 2010 and is directed by jean malpas lmhc lmft who has trained and published nationally and internationally on issues of gender and sexuality showborder single column block h2the gender family project gfp empowers youth families and communities by providing gender affirmative services training and research gfp promotes gender inclusivity as a form of social justice in all the systems involved in the life of the family to request an initial phone screening test showborder single column block h2 showborder single column block h2 showborder single column block h2 showborder between pink and blue published may 2012 with publisherhere is an article description of something written by jean malpas click here to read an article '),
(383, 'field', 36, 1, ''),
(432, 'slug', 0, 1, ''),
(432, 'field', 31, 1, ' gfp supports the entire family through gender exploration and transition our family therapist can help strengthen family relationships while exploring gender related or any other relevant challenges for the entire family our approach to family therapy and parental coaching is steeped into a deep understanding of research on gender development as well as a belief in family resilience and connection as core factors for health and well being '),
(433, 'slug', 0, 1, ''),
(433, 'field', 32, 1, ''),
(433, 'field', 31, 1, ' for caregivers family membersmany parents feel concerned and uncertain about how to handle their children s gender expression or identity when these identities do not align with social expectations or the child s birth sex while parents can access information online they might feel isolated and struggle to find other parents who can understand their dilemmas or appreciate their family accomplishments while some parents find it easier to embrace gender variance other parents find themselves uncertain as to how best protect and nurture a child with gender fluidity our professionally facilitated support group provides parents a space to share their experiences explore their dilemmas and hear the solutions and successes that other parents have found with their families while emphasizing parents agenda the group focuses on providing concrete means to foster positive parent child relationships in an atmosphere that nurtures children s development issues of disclosure to family members and friends psychosocial and medical treatment advocacy in schools faith communities and other institutions as well as children with non binary identities are addressed the groups are led with an intersectional perspective highlighting awareness about power privilege and other forms of marginalization based on race class abilities and more '),
(434, 'slug', 0, 1, ''),
(434, 'field', 32, 1, ''),
(434, 'field', 31, 1, ' for children 5 10 years oldthe gender creative kids group is open to all gender expansive and transgender children between the ages of 5 the group provides children with an affirming space where they can socialize play and engage in creative activities with other children expressing comparable ranges of gender fluidity it is especially designed to run concurrently with the parents group and conveniently allows parents to meet while their children are having supervised fun in the same building '),
(205, 'field', 2, 1, ''),
(205, 'field', 10, 1, ' gfp supports the entire family through gender exploration and transition our family therapist can help strengthen family relationships while exploring gender related or any other relevant challenges for the entire family our approach to family therapy and parental coaching is steeped into a deep understanding of research on gender development as well as a belief in family resilience and connection as core factors for health and well being for caregivers family membersmany parents feel concerned and uncertain about how to handle their children s gender expression or identity when these identities do not align with social expectations or the child s birth sex while parents can access information online they might feel isolated and struggle to find other parents who can understand their dilemmas or appreciate their family accomplishments while some parents find it easier to embrace gender variance other parents find themselves uncertain as to how best protect and nurture a child with gender fluidity our professionally facilitated support group provides parents a space to share their experiences explore their dilemmas and hear the solutions and successes that other parents have found with their families while emphasizing parents agenda the group focuses on providing concrete means to foster positive parent child relationships in an atmosphere that nurtures children s development issues of disclosure to family members and friends psychosocial and medical treatment advocacy in schools faith communities and other institutions as well as children with non binary identities are addressed the groups are led with an intersectional perspective highlighting awareness about power privilege and other forms of marginalization based on race class abilities and more showborder for children 5 10 years oldthe gender creative kids group is open to all gender expansive and transgender children between the ages of 5 the group provides children with an affirming space where they can socialize play and engage in creative activities with other children expressing comparable ranges of gender fluidity it is especially designed to run concurrently with the parents group and conveniently allows parents to meet while their children are having supervised fun in the same building showborder '),
(432, 'field', 32, 1, ''),
(433, 'field', 36, 1, ' showborder '),
(434, 'field', 36, 1, ' showborder '),
(205, 'field', 38, 1, ' addsectionjumps '),
(432, 'field', 36, 1, ''),
(11, 'field', 1, 1, ' 404 errorsorry the page you requested could not be found please see the links below for other content you might be interested in '),
(11, 'field', 39, 1, ' a night of a thousand genders get involved volunteer support groups family therapy '),
(199, 'field', 38, 1, ''),
(199, 'field', 2, 1, ' 2017 06 25 nyc pride gender and family project 135 2 '),
(199, 'field', 10, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sections`
--

CREATE TABLE `craft_sections` (
  `id` int(11) NOT NULL,
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
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_sections`
--

INSERT INTO `craft_sections` (`id`, `structureId`, `name`, `handle`, `type`, `enableVersioning`, `propagationMethod`, `previewTargets`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'Home Page', 'homePage', 'single', 1, 'all', NULL, '2019-11-23 17:00:31', '2019-12-11 01:37:58', NULL, 'a35211f8-5bcb-4cde-bf30-d5e14d414a74'),
(2, NULL, 'About', 'aboutPage', 'single', 1, 'all', NULL, '2019-11-23 17:07:16', '2020-01-16 02:10:24', '2020-01-16 02:10:25', '5175e050-a0d9-4e52-aee8-91944605faea'),
(3, NULL, 'Get In Touch', 'getInvolved', 'single', 1, 'all', NULL, '2019-11-23 17:07:59', '2020-01-19 01:36:31', '2020-01-19 01:36:32', '8ffd4f78-c15f-4a61-b306-3332bc75f5c4'),
(4, NULL, '404 Page', 'fourOhFourPage', 'single', 1, 'all', NULL, '2019-11-23 18:53:39', '2020-01-25 20:02:17', NULL, 'b94bc776-14fa-47f3-9e27-070ac0ed1e2d'),
(5, 1, 'Page List', 'pageList', 'structure', 1, 'all', NULL, '2020-01-16 01:56:34', '2020-01-25 16:40:56', NULL, '9ee4afa5-01dc-4b1e-a449-1bd48fdb11ea'),
(6, NULL, 'Style Guide', 'styleGuide', 'single', 1, 'all', NULL, '2020-01-21 01:57:35', '2020-01-21 01:58:06', NULL, 'a363bf5b-8a6d-4460-a231-cbb64cd56d98');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sections_sites`
--

CREATE TABLE `craft_sections_sites` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_sections_sites`
--

INSERT INTO `craft_sections_sites` (`id`, `sectionId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `enabledByDefault`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, '__home__', '', 1, '2019-11-23 17:00:31', '2019-12-11 01:37:58', 'f09bbfc5-1a13-4c94-a8e3-a279566fa5eb'),
(2, 2, 1, 1, 'about', 'views/_entry', 1, '2019-11-23 17:07:16', '2020-01-16 02:10:24', '19400732-450d-43cf-be91-263df96ec2f9'),
(3, 3, 1, 1, 'get-in-touch', 'views/_entry', 1, '2019-11-23 17:07:59', '2020-01-19 01:36:31', '4e094b43-1d98-4b7a-970a-9e782f7d64b6'),
(4, 4, 1, 1, '404-page', '404', 1, '2019-11-23 18:53:39', '2020-01-25 20:02:17', '94cf113b-0cdb-479d-8da0-240c89c0d49e'),
(5, 5, 1, 1, '{slug}', 'views/_entry', 1, '2020-01-16 01:56:34', '2020-01-25 16:40:56', 'f0c25c6c-82ef-4632-91c8-170c6d16b150'),
(6, 6, 1, 1, 'style-guide', 'views/_entry', 1, '2020-01-21 01:57:35', '2020-01-21 01:58:06', 'b5c7ad77-ad51-4126-8ea9-a1a4e327fa0d');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sequences`
--

CREATE TABLE `craft_sequences` (
  `name` varchar(255) NOT NULL,
  `next` int(11) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `craft_sessions`
--

CREATE TABLE `craft_sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_sessions`
--

INSERT INTO `craft_sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, '_ky2muJE_tl7tgsp_w45vSvhePIsaKvb5X-4sHyPaIBu22Gf3zf8ZBQzwAG8VtDBDEvywh-QPR3BG9KJhIaUfw-j63zaIwNC70Kn', '2019-12-04 03:38:28', '2019-12-04 04:50:05', '4aa876f2-8e84-413f-b6ea-f8e4d283170a'),
(2, 1, '0KoQK1ASTYjBcORUaVBQiQJcJ_2q-OFt_Ll0pnUqEZ_5LOopIh_LrZ48pB7hhF8Pvn-pqgqwMu1PBtpbYy5UWUekj_4y1OHn34MY', '2019-12-04 03:38:33', '2019-12-04 03:38:33', 'f6b0c763-33a3-401f-91f7-5db191762104'),
(7, 1, 'YbzzI4o_hp27LCCIjqknC_MCWClp4gxeC-TJ_P-bb8_ShXB6Rw3Oo_OGdFuECL251tEwbTOXKwGI2o33tbrhUBHmjQaYQvwwq9yj', '2019-12-04 19:33:44', '2019-12-04 21:34:43', '07bb6110-a20e-4d9e-8fcd-e2867ae281d3'),
(9, 1, 'povew3oCyZnvN763x-6n1ZLVWzDES3J6McC1SrVui-n20LcEFN8JstXsN1wgxPPZ9PHcY8kslCu80C46j8RuGzdokFkGy3uhcH0a', '2019-12-05 02:58:41', '2019-12-05 02:58:51', '6c75d697-b176-4302-992a-40c78d25e91a'),
(10, 1, '48Tjpibyr9LFrevnblCSMbqTcOb8N_PZnRUxAIqOx2Tpd-qznpigiqtri4mLH8h4qkEsbLFAcInaOMZ4WQJKxwaYAmEZ_l8oPp_a', '2020-01-25 14:17:43', '2020-01-25 20:22:59', 'e600b9a5-a7ab-4f0e-ae61-f347765dbc44');

-- --------------------------------------------------------

--
-- Table structure for table `craft_shunnedmessages`
--

CREATE TABLE `craft_shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `craft_sitegroups`
--

CREATE TABLE `craft_sitegroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_sitegroups`
--

INSERT INTO `craft_sitegroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'Gender Family Project', '2019-11-16 18:40:28', '2019-11-16 18:40:28', NULL, '51b18487-1143-446a-8d3c-0630845313c9');

-- --------------------------------------------------------

--
-- Table structure for table `craft_sites`
--

CREATE TABLE `craft_sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `language` varchar(12) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '0',
  `baseUrl` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_sites`
--

INSERT INTO `craft_sites` (`id`, `groupId`, `primary`, `name`, `handle`, `language`, `hasUrls`, `baseUrl`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 'Gender Family Project', 'default', 'en-US', 1, '/', 1, '2019-11-16 18:40:28', '2020-01-25 16:09:47', NULL, '35707b9d-7d83-4c03-a9d7-ac32c06e1ccb');

-- --------------------------------------------------------

--
-- Table structure for table `craft_structureelements`
--

CREATE TABLE `craft_structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_structureelements`
--

INSERT INTO `craft_structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, NULL, 1, 1, 126, 0, '2020-01-16 02:07:01', '2020-01-25 20:06:11', '9acdeeff-b279-4064-ac29-75376f236461'),
(3, 1, 174, 1, 2, 19, 1, '2020-01-16 02:07:27', '2020-01-18 01:07:45', '2ad45b92-bf59-4194-a2a0-8d693c0ecf08'),
(4, 1, 176, 1, 20, 21, 1, '2020-01-16 02:07:27', '2020-01-18 01:07:45', '7e11ca67-cda3-4a79-bde9-154bfa674b57'),
(6, 1, 179, 1, 22, 59, 1, '2020-01-16 02:07:53', '2020-01-25 20:06:11', '90587c95-5f03-404c-8bc9-14d035e94c30'),
(7, 1, 180, 1, 60, 61, 1, '2020-01-16 02:07:53', '2020-01-25 20:06:11', '2acb2a6f-cb62-4627-a116-8b54c6a3931a'),
(9, 1, 182, 1, 62, 75, 1, '2020-01-16 02:08:15', '2020-01-25 20:06:11', '17ff220a-43dd-48cc-9656-21b214449681'),
(10, 1, 183, 1, 76, 77, 1, '2020-01-16 02:08:15', '2020-01-25 20:06:11', '40757128-c17f-44d2-bd3b-706ad6ea68d4'),
(12, 1, 185, 1, 78, 95, 1, '2020-01-16 02:08:27', '2020-01-25 20:06:11', 'ca2d34b2-afb1-4f1b-acb6-a59f55085551'),
(13, 1, 186, 1, 96, 97, 1, '2020-01-16 02:08:27', '2020-01-25 20:06:11', '9aebcaee-f92d-48e6-bbfe-35663a34b1e7'),
(15, 1, 188, 1, 98, 119, 1, '2020-01-16 02:08:37', '2020-01-25 20:06:11', 'c9bd0ab4-e7df-45b1-877b-8b47afa17db9'),
(16, 1, 189, 1, 120, 121, 1, '2020-01-16 02:08:37', '2020-01-25 20:06:11', '39a749ef-41d5-46e8-a294-97a7faf51e47'),
(17, 1, 190, 1, 122, 123, 1, '2020-01-16 02:09:02', '2020-01-25 20:06:11', '22812769-5106-43c5-b74e-e9ce7e88c96d'),
(18, 1, 191, 1, 124, 125, 1, '2020-01-16 02:10:16', '2020-01-25 20:06:11', '5a793486-c5e1-4ab3-bfd1-fd6b7ca0b5d5'),
(20, 1, 196, 1, 3, 4, 2, '2020-01-16 02:12:28', '2020-01-16 02:12:28', '9430bc21-bdaf-418d-b63c-79e6bde185a5'),
(21, 1, 197, 1, 5, 6, 2, '2020-01-16 02:12:28', '2020-01-16 02:12:28', 'eb52c349-655e-4f3f-9c76-873e5eec0141'),
(23, 1, 199, 1, 23, 24, 2, '2020-01-18 01:02:32', '2020-01-18 01:07:45', '73efb907-9a7c-451f-9851-db7cbb564c69'),
(24, 1, 200, 1, 25, 26, 2, '2020-01-18 01:02:32', '2020-01-18 01:07:45', '241d51d2-1faf-465d-95b7-22f8b2ef0379'),
(26, 1, 202, 1, 27, 28, 2, '2020-01-18 01:03:04', '2020-01-18 01:07:45', 'db310957-387d-4375-b2d9-5b9caa07c56d'),
(27, 1, 203, 1, 29, 30, 2, '2020-01-18 01:03:04', '2020-01-18 01:07:45', '9ef024a1-34a7-410a-9cbc-5b7b12b3b254'),
(29, 1, 205, 1, 31, 32, 2, '2020-01-18 01:03:12', '2020-01-18 01:07:45', 'fdb45d52-8796-4d9a-9fab-1e76aa37e94b'),
(30, 1, 206, 1, 33, 34, 2, '2020-01-18 01:03:12', '2020-01-18 01:07:45', '2c4150be-e37a-44fa-821f-12957ed1d208'),
(32, 1, 208, 1, 35, 36, 2, '2020-01-18 01:03:25', '2020-01-18 01:07:45', '29a409b3-58a0-41fc-9881-8fdfdf9f9b46'),
(33, 1, 209, 1, 37, 38, 2, '2020-01-18 01:03:26', '2020-01-18 01:07:45', '976527ad-f69b-48eb-b07e-c178de2b0c48'),
(35, 1, 211, 1, 39, 40, 2, '2020-01-18 01:03:38', '2020-01-18 01:07:45', '361537b9-af20-448e-b16f-5a7f2bcb5d1c'),
(36, 1, 212, 1, 41, 42, 2, '2020-01-18 01:03:38', '2020-01-18 01:07:45', 'd3529e3c-6388-403c-9562-073313fa04b5'),
(38, 1, 214, 1, 43, 44, 2, '2020-01-18 01:03:54', '2020-01-18 01:07:45', '70e84bc4-a45a-4412-91b3-8c819935d12f'),
(39, 1, 215, 1, 45, 46, 2, '2020-01-18 01:03:54', '2020-01-18 01:07:45', '68d263a0-0fc2-4ced-a71e-028f8486dec7'),
(41, 1, 217, 1, 47, 48, 2, '2020-01-18 01:04:03', '2020-01-18 01:07:45', 'a41660b2-d3ec-49d2-bbd4-15ecd2fc9708'),
(42, 1, 218, 1, 49, 50, 2, '2020-01-18 01:04:03', '2020-01-18 01:07:45', '5bb58822-c57f-4797-853d-b805365da59f'),
(44, 1, 220, 1, 63, 64, 2, '2020-01-18 01:04:18', '2020-01-25 20:06:11', 'bd42bfb3-ff23-4336-967e-18c37164c03c'),
(45, 1, 221, 1, 65, 66, 2, '2020-01-18 01:04:18', '2020-01-25 20:06:11', 'e3e3d403-a19d-4d9d-8390-f9e80f472e6a'),
(47, 1, 223, 1, 67, 68, 2, '2020-01-18 01:04:29', '2020-01-25 20:06:11', '4cdd1a14-378a-494d-bdac-200c15285b8f'),
(48, 1, 224, 1, 69, 70, 2, '2020-01-18 01:04:29', '2020-01-25 20:06:11', '5fdadabc-a14d-4da5-b288-3ef5115daa95'),
(50, 1, 226, 1, 71, 72, 2, '2020-01-18 01:04:41', '2020-01-25 20:06:11', 'cad3b49a-ab9d-4c98-9f7e-a9100d0aa403'),
(51, 1, 227, 1, 73, 74, 2, '2020-01-18 01:04:41', '2020-01-25 20:06:11', 'ce86c827-5500-4c5e-b047-7a72d0f50847'),
(53, 1, 229, 1, 79, 80, 2, '2020-01-18 01:05:16', '2020-01-25 20:06:11', 'f0d84035-ce98-4ea1-b35b-b3abd21fc2bc'),
(54, 1, 230, 1, 81, 82, 2, '2020-01-18 01:05:16', '2020-01-25 20:06:11', '87de7a3f-6431-4254-a232-ce7dba9fc4cf'),
(56, 1, 232, 1, 83, 84, 2, '2020-01-18 01:05:22', '2020-01-25 20:06:11', '27ba5f5b-8fb0-43d5-a08d-63b32d6f54b0'),
(57, 1, 233, 1, 85, 86, 2, '2020-01-18 01:05:22', '2020-01-25 20:06:11', '201cae62-debe-4148-84f9-d492a103e3a9'),
(59, 1, 235, 1, 87, 88, 2, '2020-01-18 01:05:35', '2020-01-25 20:06:11', '10a74e33-1cdc-47a7-a489-6ada1bf14baf'),
(60, 1, 236, 1, 89, 90, 2, '2020-01-18 01:05:35', '2020-01-25 20:06:11', 'ecddfb9b-8439-4285-856c-609c60da8c63'),
(62, 1, 238, 1, 91, 92, 2, '2020-01-18 01:05:49', '2020-01-25 20:06:11', 'fc452380-22a8-463c-882b-4d14471521a7'),
(63, 1, 239, 1, 93, 94, 2, '2020-01-18 01:05:49', '2020-01-25 20:06:11', 'd8c1fcfa-ab70-4cdd-88cc-dea3b493d443'),
(65, 1, 241, 1, 99, 100, 2, '2020-01-18 01:06:04', '2020-01-25 20:06:11', '8b631d60-b9c7-4028-9b09-7cac53f3f2d3'),
(66, 1, 242, 1, 101, 102, 2, '2020-01-18 01:06:04', '2020-01-25 20:06:11', '8f9264e1-61d5-4239-9969-75f33ae2da57'),
(68, 1, 244, 1, 103, 104, 2, '2020-01-18 01:06:18', '2020-01-25 20:06:11', '14f0813c-5d77-469c-ba01-53bfe281f21c'),
(69, 1, 245, 1, 105, 106, 2, '2020-01-18 01:06:18', '2020-01-25 20:06:11', 'c6d48fb6-0aa0-41c9-b055-f44229d816ae'),
(71, 1, 247, 1, 107, 108, 2, '2020-01-18 01:06:29', '2020-01-25 20:06:11', '09599700-e79e-4262-8db7-f3dc7a5a3f9c'),
(72, 1, 248, 1, 109, 110, 2, '2020-01-18 01:06:29', '2020-01-25 20:06:11', 'fc4c8960-367f-4918-9793-9f577762cfeb'),
(74, 1, 250, 1, 111, 112, 2, '2020-01-18 01:06:41', '2020-01-25 20:06:11', '61cfe57b-744a-437f-9153-f666bfddd09b'),
(75, 1, 251, 1, 113, 114, 2, '2020-01-18 01:06:41', '2020-01-25 20:06:11', 'd32a76fc-fbe6-4339-aa97-8c792da0d51f'),
(77, 1, 253, 1, 115, 116, 2, '2020-01-18 01:06:54', '2020-01-25 20:06:11', '13c85bd5-5feb-41d0-8ddc-580f6dd34634'),
(78, 1, 254, 1, 117, 118, 2, '2020-01-18 01:06:54', '2020-01-25 20:06:11', 'cf5a6b04-30a5-4173-8832-10fec3e0cbc2'),
(80, 1, 256, 1, 7, 8, 2, '2020-01-18 01:07:19', '2020-01-18 01:07:19', 'f5b9d8a9-fe7d-4631-8d6d-43dc23921096'),
(81, 1, 257, 1, 9, 10, 2, '2020-01-18 01:07:19', '2020-01-18 01:07:19', '2acd3add-669a-48c1-9c34-ea82d0a38138'),
(83, 1, 259, 1, 11, 12, 2, '2020-01-18 01:07:40', '2020-01-18 01:07:40', 'd45e772f-368b-45ee-8dc1-8f74b58648a7'),
(84, 1, 260, 1, 13, 14, 2, '2020-01-18 01:07:40', '2020-01-18 01:07:40', '76250240-c884-4475-a6c9-464f6ec68125'),
(86, 1, 262, 1, 15, 16, 2, '2020-01-18 01:07:44', '2020-01-18 01:07:45', '709e73c7-9171-4be5-b29c-ab9e88791381'),
(87, 1, 263, 1, 17, 18, 2, '2020-01-18 01:07:45', '2020-01-18 01:07:45', '4d39166f-60f9-463f-8515-d00760bc4539'),
(88, 1, 435, 1, 51, 52, 2, '2020-01-25 16:30:46', '2020-01-25 16:30:46', '9b9186e1-bb6c-4ef8-804f-74e84ace7eee'),
(89, 1, 439, 1, 53, 54, 2, '2020-01-25 16:31:35', '2020-01-25 16:31:35', '7ff42247-0153-41e5-a82c-aa38b821e73c'),
(90, 1, 443, 1, 55, 56, 2, '2020-01-25 16:41:05', '2020-01-25 16:41:05', 'd914d39e-d94e-4d70-9173-31f7e2da2130'),
(91, 1, 451, 1, 57, 58, 2, '2020-01-25 20:06:11', '2020-01-25 20:06:11', '75fea8aa-4006-4893-bb7f-9bb23fc7a7f5');

-- --------------------------------------------------------

--
-- Table structure for table `craft_structures`
--

CREATE TABLE `craft_structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_structures`
--

INSERT INTO `craft_structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 2, '2020-01-16 01:56:34', '2020-01-16 02:10:55', NULL, '698557d6-9a6c-477f-b99f-05d0dc23b5f5');

-- --------------------------------------------------------

--
-- Table structure for table `craft_systemmessages`
--

CREATE TABLE `craft_systemmessages` (
  `id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `craft_taggroups`
--

CREATE TABLE `craft_taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `craft_tags`
--

CREATE TABLE `craft_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecacheelements`
--

CREATE TABLE `craft_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecachequeries`
--

CREATE TABLE `craft_templatecachequeries` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `query` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `craft_templatecaches`
--

CREATE TABLE `craft_templatecaches` (
  `id` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `cacheKey` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `craft_tokens`
--

CREATE TABLE `craft_tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) NOT NULL,
  `route` text,
  `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
  `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_tokens`
--

INSERT INTO `craft_tokens` (`id`, `token`, `route`, `usageLimit`, `usageCount`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(2, '7aam0--Jqr8lPU2VceC0FYLC0QocxX9d', '[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":271,\"siteId\":1,\"draftId\":7,\"revisionId\":null}]', NULL, NULL, '2020-01-26 14:59:31', '2020-01-25 14:59:31', '2020-01-25 14:59:31', '9a8fdc9e-28e7-43f0-aefd-ff80db53f663');

-- --------------------------------------------------------

--
-- Table structure for table `craft_usergroups`
--

CREATE TABLE `craft_usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `craft_usergroups_users`
--

CREATE TABLE `craft_usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions`
--

CREATE TABLE `craft_userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions_usergroups`
--

CREATE TABLE `craft_userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpermissions_users`
--

CREATE TABLE `craft_userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `craft_userpreferences`
--

CREATE TABLE `craft_userpreferences` (
  `userId` int(11) NOT NULL,
  `preferences` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_userpreferences`
--

INSERT INTO `craft_userpreferences` (`userId`, `preferences`) VALUES
(1, '{\"language\":\"en-US\",\"weekStartDay\":\"1\",\"enableDebugToolbarForSite\":false,\"enableDebugToolbarForCp\":false,\"showExceptionView\":false,\"profileTemplates\":false}');

-- --------------------------------------------------------

--
-- Table structure for table `craft_users`
--

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
  `invalidLoginCount` tinyint(3) UNSIGNED DEFAULT NULL,
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
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_users`
--

INSERT INTO `craft_users` (`id`, `username`, `photoId`, `firstName`, `lastName`, `email`, `password`, `admin`, `locked`, `suspended`, `pending`, `lastLoginDate`, `lastLoginAttemptIp`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `hasDashboard`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'admin', NULL, '', '', 'jameslamarre@gmail.com', '$2y$13$YNtkcn14rh3SsIXpAaPHbObxV.JxD5N0742B2HZW3kYozqRpucwcK', 1, 0, 0, 0, '2020-01-25 14:17:43', NULL, NULL, NULL, '2019-11-16 18:48:04', NULL, 1, NULL, NULL, NULL, 0, '2019-11-16 18:54:55', '2019-11-16 18:40:29', '2020-01-25 14:17:43', 'f418cce2-0f57-4beb-8646-42f72f6ff1d0');

-- --------------------------------------------------------

--
-- Table structure for table `craft_volumefolders`
--

CREATE TABLE `craft_volumefolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_volumefolders`
--

INSERT INTO `craft_volumefolders` (`id`, `parentId`, `volumeId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'Images', '', '2019-11-23 17:15:21', '2020-01-25 17:20:47', '09f58538-7d39-4dd2-adc8-1f77e018c545'),
(2, NULL, NULL, 'Temporary source', NULL, '2019-11-23 20:21:32', '2019-11-23 20:21:32', 'debfc4d8-97d4-4b1e-a517-3aa99ecddd1b'),
(3, 2, NULL, 'user_1', 'user_1/', '2019-11-23 20:21:32', '2019-11-23 20:21:32', '9987f0d7-6109-42f6-a305-f93580c35bac'),
(4, NULL, 2, 'Videos', '', '2020-01-19 01:46:45', '2020-01-19 01:47:14', 'fb19b996-31dc-4b3d-8f15-d309e6033f9e');

-- --------------------------------------------------------

--
-- Table structure for table `craft_volumes`
--

CREATE TABLE `craft_volumes` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `url` varchar(255) DEFAULT NULL,
  `settings` text,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_volumes`
--

INSERT INTO `craft_volumes` (`id`, `fieldLayoutId`, `name`, `handle`, `type`, `hasUrls`, `url`, `settings`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'Images', 'images', 'craft\\volumes\\Local', 1, '/assets/images/', '{\"path\":\"./assets/images/\"}', 1, '2019-11-23 17:15:21', '2020-01-25 17:20:47', NULL, '38402d41-2ff3-4e10-8f75-6cbc1edb2981'),
(2, NULL, 'Videos', 'videos', 'craft\\volumes\\Local', 1, 'assets/videos/', '{\"path\":\"assets/videos/\"}', 2, '2020-01-19 01:46:45', '2020-01-19 01:47:14', NULL, '8211780b-4991-4165-9e24-98aea3c7fd37');

-- --------------------------------------------------------

--
-- Table structure for table `craft_widgets`
--

CREATE TABLE `craft_widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `colspan` tinyint(3) DEFAULT NULL,
  `settings` text,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_widgets`
--

INSERT INTO `craft_widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 'craft\\widgets\\RecentEntries', 1, NULL, '{\"section\":\"*\",\"siteId\":\"1\",\"limit\":10}', 1, '2019-11-16 18:54:09', '2019-11-16 18:54:09', '62ca001d-2064-4639-9878-ed4b6e28cffa'),
(2, 1, 'craft\\widgets\\CraftSupport', 2, NULL, '[]', 1, '2019-11-16 18:54:09', '2019-11-16 18:54:09', 'a7d4f18a-8390-46af-a44b-fc3b84c0d2ef'),
(3, 1, 'craft\\widgets\\Updates', 3, NULL, '[]', 1, '2019-11-16 18:54:09', '2019-11-16 18:54:09', '17103f84-681a-4430-8a3c-b7812687b36c'),
(4, 1, 'craft\\widgets\\Feed', 4, NULL, '{\"url\":\"https://craftcms.com/news.rss\",\"title\":\"Craft News\",\"limit\":5}', 1, '2019-11-16 18:54:09', '2019-11-16 18:54:09', 'e03f5bb9-9660-4cce-9d8e-503f5d41fddc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_assetindexdata_sessionId_volumeId_idx` (`sessionId`,`volumeId`),
  ADD KEY `craft_assetindexdata_volumeId_idx` (`volumeId`);

--
-- Indexes for table `craft_assets`
--
ALTER TABLE `craft_assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_assets_filename_folderId_idx` (`filename`,`folderId`),
  ADD KEY `craft_assets_folderId_idx` (`folderId`),
  ADD KEY `craft_assets_volumeId_idx` (`volumeId`);

--
-- Indexes for table `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_assettransformindex_volumeId_assetId_location_idx` (`volumeId`,`assetId`,`location`);

--
-- Indexes for table `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_assettransforms_name_unq_idx` (`name`),
  ADD UNIQUE KEY `craft_assettransforms_handle_unq_idx` (`handle`);

--
-- Indexes for table `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_categories_groupId_idx` (`groupId`),
  ADD KEY `craft_categories_parentId_fk` (`parentId`);

--
-- Indexes for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_categorygroups_name_idx` (`name`),
  ADD KEY `craft_categorygroups_handle_idx` (`handle`),
  ADD KEY `craft_categorygroups_structureId_idx` (`structureId`),
  ADD KEY `craft_categorygroups_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `craft_categorygroups_dateDeleted_idx` (`dateDeleted`);

--
-- Indexes for table `craft_categorygroups_sites`
--
ALTER TABLE `craft_categorygroups_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_categorygroups_sites_groupId_siteId_unq_idx` (`groupId`,`siteId`),
  ADD KEY `craft_categorygroups_sites_siteId_idx` (`siteId`);

--
-- Indexes for table `craft_content`
--
ALTER TABLE `craft_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_content_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `craft_content_siteId_idx` (`siteId`),
  ADD KEY `craft_content_title_idx` (`title`);

--
-- Indexes for table `craft_craftidtokens`
--
ALTER TABLE `craft_craftidtokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_craftidtokens_userId_fk` (`userId`);

--
-- Indexes for table `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`);

--
-- Indexes for table `craft_drafts`
--
ALTER TABLE `craft_drafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_drafts_creatorId_fk` (`creatorId`),
  ADD KEY `craft_drafts_sourceId_fk` (`sourceId`);

--
-- Indexes for table `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_elementindexsettings_type_unq_idx` (`type`);

--
-- Indexes for table `craft_elements`
--
ALTER TABLE `craft_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_elements_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `craft_elements_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `craft_elements_type_idx` (`type`),
  ADD KEY `craft_elements_enabled_idx` (`enabled`),
  ADD KEY `craft_elements_archived_dateCreated_idx` (`archived`,`dateCreated`),
  ADD KEY `craft_elements_draftId_fk` (`draftId`),
  ADD KEY `craft_elements_revisionId_fk` (`revisionId`);

--
-- Indexes for table `craft_elements_sites`
--
ALTER TABLE `craft_elements_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_elements_sites_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `craft_elements_sites_siteId_idx` (`siteId`),
  ADD KEY `craft_elements_sites_slug_siteId_idx` (`slug`,`siteId`),
  ADD KEY `craft_elements_sites_enabled_idx` (`enabled`),
  ADD KEY `craft_elements_sites_uri_siteId_idx` (`uri`,`siteId`);

--
-- Indexes for table `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entries_postDate_idx` (`postDate`),
  ADD KEY `craft_entries_expiryDate_idx` (`expiryDate`),
  ADD KEY `craft_entries_authorId_idx` (`authorId`),
  ADD KEY `craft_entries_sectionId_idx` (`sectionId`),
  ADD KEY `craft_entries_typeId_idx` (`typeId`),
  ADD KEY `craft_entries_parentId_fk` (`parentId`);

--
-- Indexes for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_entrytypes_name_sectionId_idx` (`name`,`sectionId`),
  ADD KEY `craft_entrytypes_handle_sectionId_idx` (`handle`,`sectionId`),
  ADD KEY `craft_entrytypes_sectionId_idx` (`sectionId`),
  ADD KEY `craft_entrytypes_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `craft_entrytypes_dateDeleted_idx` (`dateDeleted`);

--
-- Indexes for table `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fieldgroups_name_unq_idx` (`name`);

--
-- Indexes for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  ADD KEY `craft_fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_fieldlayoutfields_tabId_idx` (`tabId`),
  ADD KEY `craft_fieldlayoutfields_fieldId_idx` (`fieldId`);

--
-- Indexes for table `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_fieldlayouts_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `craft_fieldlayouts_type_idx` (`type`);

--
-- Indexes for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_fieldlayouttabs_layoutId_idx` (`layoutId`);

--
-- Indexes for table `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_fields_handle_context_unq_idx` (`handle`,`context`),
  ADD KEY `craft_fields_groupId_idx` (`groupId`),
  ADD KEY `craft_fields_context_idx` (`context`);

--
-- Indexes for table `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_globalsets_name_idx` (`name`),
  ADD KEY `craft_globalsets_handle_idx` (`handle`),
  ADD KEY `craft_globalsets_fieldLayoutId_idx` (`fieldLayoutId`);

--
-- Indexes for table `craft_gqlschemas`
--
ALTER TABLE `craft_gqlschemas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_gqlschemas_accessToken_unq_idx` (`accessToken`),
  ADD UNIQUE KEY `craft_gqlschemas_name_unq_idx` (`name`);

--
-- Indexes for table `craft_info`
--
ALTER TABLE `craft_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_matrixblocks_ownerId_idx` (`ownerId`),
  ADD KEY `craft_matrixblocks_fieldId_idx` (`fieldId`),
  ADD KEY `craft_matrixblocks_typeId_idx` (`typeId`),
  ADD KEY `craft_matrixblocks_sortOrder_idx` (`sortOrder`);

--
-- Indexes for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  ADD UNIQUE KEY `craft_matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  ADD KEY `craft_matrixblocktypes_fieldId_idx` (`fieldId`),
  ADD KEY `craft_matrixblocktypes_fieldLayoutId_idx` (`fieldLayoutId`);

--
-- Indexes for table `craft_matrixcontent_contentlockup`
--
ALTER TABLE `craft_matrixcontent_contentlockup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_matrixcontent_contentlockup_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `craft_matrixcontent_contentlockup_siteId_fk` (`siteId`);

--
-- Indexes for table `craft_matrixcontent_entryfields`
--
ALTER TABLE `craft_matrixcontent_entryfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_matrixcontent_entryfields_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `craft_matrixcontent_entryfields_siteId_fk` (`siteId`);

--
-- Indexes for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_migrations_pluginId_idx` (`pluginId`),
  ADD KEY `craft_migrations_type_pluginId_idx` (`type`,`pluginId`);

--
-- Indexes for table `craft_plugins`
--
ALTER TABLE `craft_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_plugins_handle_unq_idx` (`handle`);

--
-- Indexes for table `craft_queue`
--
ALTER TABLE `craft_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_queue_fail_timeUpdated_timePushed_idx` (`fail`,`timeUpdated`,`timePushed`),
  ADD KEY `craft_queue_fail_timeUpdated_delay_idx` (`fail`,`timeUpdated`,`delay`);

--
-- Indexes for table `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_relations_fieldId_sourceId_sourceSiteId_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  ADD KEY `craft_relations_sourceId_idx` (`sourceId`),
  ADD KEY `craft_relations_targetId_idx` (`targetId`),
  ADD KEY `craft_relations_sourceSiteId_idx` (`sourceSiteId`);

--
-- Indexes for table `craft_resourcepaths`
--
ALTER TABLE `craft_resourcepaths`
  ADD PRIMARY KEY (`hash`);

--
-- Indexes for table `craft_revisions`
--
ALTER TABLE `craft_revisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_revisions_sourceId_num_unq_idx` (`sourceId`,`num`),
  ADD KEY `craft_revisions_creatorId_fk` (`creatorId`);

--
-- Indexes for table `craft_searchindex`
--
ALTER TABLE `craft_searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`);
ALTER TABLE `craft_searchindex` ADD FULLTEXT KEY `craft_searchindex_keywords_idx` (`keywords`);

--
-- Indexes for table `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_sections_handle_idx` (`handle`),
  ADD KEY `craft_sections_name_idx` (`name`),
  ADD KEY `craft_sections_structureId_idx` (`structureId`),
  ADD KEY `craft_sections_dateDeleted_idx` (`dateDeleted`);

--
-- Indexes for table `craft_sections_sites`
--
ALTER TABLE `craft_sections_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_sections_sites_sectionId_siteId_unq_idx` (`sectionId`,`siteId`),
  ADD KEY `craft_sections_sites_siteId_idx` (`siteId`);

--
-- Indexes for table `craft_sequences`
--
ALTER TABLE `craft_sequences`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_sessions_uid_idx` (`uid`),
  ADD KEY `craft_sessions_token_idx` (`token`),
  ADD KEY `craft_sessions_dateUpdated_idx` (`dateUpdated`),
  ADD KEY `craft_sessions_userId_idx` (`userId`);

--
-- Indexes for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_shunnedmessages_userId_message_unq_idx` (`userId`,`message`);

--
-- Indexes for table `craft_sitegroups`
--
ALTER TABLE `craft_sitegroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_sitegroups_name_idx` (`name`);

--
-- Indexes for table `craft_sites`
--
ALTER TABLE `craft_sites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_sites_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `craft_sites_handle_idx` (`handle`),
  ADD KEY `craft_sites_sortOrder_idx` (`sortOrder`),
  ADD KEY `craft_sites_groupId_fk` (`groupId`);

--
-- Indexes for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  ADD KEY `craft_structureelements_root_idx` (`root`),
  ADD KEY `craft_structureelements_lft_idx` (`lft`),
  ADD KEY `craft_structureelements_rgt_idx` (`rgt`),
  ADD KEY `craft_structureelements_level_idx` (`level`),
  ADD KEY `craft_structureelements_elementId_idx` (`elementId`);

--
-- Indexes for table `craft_structures`
--
ALTER TABLE `craft_structures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_structures_dateDeleted_idx` (`dateDeleted`);

--
-- Indexes for table `craft_systemmessages`
--
ALTER TABLE `craft_systemmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_systemmessages_key_language_unq_idx` (`key`,`language`),
  ADD KEY `craft_systemmessages_language_idx` (`language`);

--
-- Indexes for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_taggroups_name_idx` (`name`),
  ADD KEY `craft_taggroups_handle_idx` (`handle`),
  ADD KEY `craft_taggroups_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `craft_taggroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_tags_groupId_idx` (`groupId`);

--
-- Indexes for table `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD KEY `craft_templatecacheelements_cacheId_idx` (`cacheId`),
  ADD KEY `craft_templatecacheelements_elementId_idx` (`elementId`);

--
-- Indexes for table `craft_templatecachequeries`
--
ALTER TABLE `craft_templatecachequeries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_templatecachequeries_cacheId_idx` (`cacheId`),
  ADD KEY `craft_templatecachequeries_type_idx` (`type`);

--
-- Indexes for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_templatecaches_cacheKey_siteId_expiryDate_path_idx` (`cacheKey`,`siteId`,`expiryDate`,`path`),
  ADD KEY `craft_templatecaches_cacheKey_siteId_expiryDate_idx` (`cacheKey`,`siteId`,`expiryDate`),
  ADD KEY `craft_templatecaches_siteId_idx` (`siteId`);

--
-- Indexes for table `craft_tokens`
--
ALTER TABLE `craft_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_tokens_token_unq_idx` (`token`),
  ADD KEY `craft_tokens_expiryDate_idx` (`expiryDate`);

--
-- Indexes for table `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_usergroups_handle_unq_idx` (`handle`),
  ADD UNIQUE KEY `craft_usergroups_name_unq_idx` (`name`);

--
-- Indexes for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  ADD KEY `craft_usergroups_users_userId_idx` (`userId`);

--
-- Indexes for table `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_name_unq_idx` (`name`);

--
-- Indexes for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  ADD KEY `craft_userpermissions_usergroups_groupId_idx` (`groupId`);

--
-- Indexes for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  ADD KEY `craft_userpermissions_users_userId_idx` (`userId`);

--
-- Indexes for table `craft_userpreferences`
--
ALTER TABLE `craft_userpreferences`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `craft_users`
--
ALTER TABLE `craft_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_users_uid_idx` (`uid`),
  ADD KEY `craft_users_verificationCode_idx` (`verificationCode`),
  ADD KEY `craft_users_email_idx` (`email`),
  ADD KEY `craft_users_username_idx` (`username`),
  ADD KEY `craft_users_photoId_fk` (`photoId`);

--
-- Indexes for table `craft_volumefolders`
--
ALTER TABLE `craft_volumefolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `craft_volumefolders_name_parentId_volumeId_unq_idx` (`name`,`parentId`,`volumeId`),
  ADD KEY `craft_volumefolders_parentId_idx` (`parentId`),
  ADD KEY `craft_volumefolders_volumeId_idx` (`volumeId`);

--
-- Indexes for table `craft_volumes`
--
ALTER TABLE `craft_volumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_volumes_name_idx` (`name`),
  ADD KEY `craft_volumes_handle_idx` (`handle`),
  ADD KEY `craft_volumes_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `craft_volumes_dateDeleted_idx` (`dateDeleted`);

--
-- Indexes for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craft_widgets_userId_idx` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_assettransformindex`
--
ALTER TABLE `craft_assettransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_assettransforms`
--
ALTER TABLE `craft_assettransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_categorygroups_sites`
--
ALTER TABLE `craft_categorygroups_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_content`
--
ALTER TABLE `craft_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `craft_craftidtokens`
--
ALTER TABLE `craft_craftidtokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=520;

--
-- AUTO_INCREMENT for table `craft_drafts`
--
ALTER TABLE `craft_drafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_elements`
--
ALTER TABLE `craft_elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452;

--
-- AUTO_INCREMENT for table `craft_elements_sites`
--
ALTER TABLE `craft_elements_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452;

--
-- AUTO_INCREMENT for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `craft_fields`
--
ALTER TABLE `craft_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `craft_gqlschemas`
--
ALTER TABLE `craft_gqlschemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_info`
--
ALTER TABLE `craft_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `craft_matrixcontent_contentlockup`
--
ALTER TABLE `craft_matrixcontent_contentlockup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `craft_matrixcontent_entryfields`
--
ALTER TABLE `craft_matrixcontent_entryfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `craft_plugins`
--
ALTER TABLE `craft_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `craft_queue`
--
ALTER TABLE `craft_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `craft_relations`
--
ALTER TABLE `craft_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `craft_revisions`
--
ALTER TABLE `craft_revisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `craft_sections`
--
ALTER TABLE `craft_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `craft_sections_sites`
--
ALTER TABLE `craft_sections_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_sitegroups`
--
ALTER TABLE `craft_sitegroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_sites`
--
ALTER TABLE `craft_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `craft_structures`
--
ALTER TABLE `craft_structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_systemmessages`
--
ALTER TABLE `craft_systemmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_templatecachequeries`
--
ALTER TABLE `craft_templatecachequeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_tokens`
--
ALTER TABLE `craft_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `craft_usergroups`
--
ALTER TABLE `craft_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_userpermissions`
--
ALTER TABLE `craft_userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_userpreferences`
--
ALTER TABLE `craft_userpreferences`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `craft_volumefolders`
--
ALTER TABLE `craft_volumefolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `craft_volumes`
--
ALTER TABLE `craft_volumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `craft_assetindexdata`
--
ALTER TABLE `craft_assetindexdata`
  ADD CONSTRAINT `craft_assetindexdata_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `craft_volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_assets`
--
ALTER TABLE `craft_assets`
  ADD CONSTRAINT `craft_assets_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `craft_volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_assets_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `craft_volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_categories`
--
ALTER TABLE `craft_categories`
  ADD CONSTRAINT `craft_categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_categories_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_categories_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_categorygroups`
--
ALTER TABLE `craft_categorygroups`
  ADD CONSTRAINT `craft_categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_categorygroups_sites`
--
ALTER TABLE `craft_categorygroups_sites`
  ADD CONSTRAINT `craft_categorygroups_sites_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_categorygroups_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_content`
--
ALTER TABLE `craft_content`
  ADD CONSTRAINT `craft_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_content_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_craftidtokens`
--
ALTER TABLE `craft_craftidtokens`
  ADD CONSTRAINT `craft_craftidtokens_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_drafts`
--
ALTER TABLE `craft_drafts`
  ADD CONSTRAINT `craft_drafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_drafts_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_elements`
--
ALTER TABLE `craft_elements`
  ADD CONSTRAINT `craft_elements_draftId_fk` FOREIGN KEY (`draftId`) REFERENCES `craft_drafts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_elements_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_elements_revisionId_fk` FOREIGN KEY (`revisionId`) REFERENCES `craft_revisions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_elements_sites`
--
ALTER TABLE `craft_elements_sites`
  ADD CONSTRAINT `craft_elements_sites_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_elements_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_entries`
--
ALTER TABLE `craft_entries`
  ADD CONSTRAINT `craft_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_entries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_entrytypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  ADD CONSTRAINT `craft_entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  ADD CONSTRAINT `craft_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  ADD CONSTRAINT `craft_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_fields`
--
ALTER TABLE `craft_fields`
  ADD CONSTRAINT `craft_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  ADD CONSTRAINT `craft_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_matrixblocks`
--
ALTER TABLE `craft_matrixblocks`
  ADD CONSTRAINT `craft_matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_matrixblocktypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_matrixblocktypes`
--
ALTER TABLE `craft_matrixblocktypes`
  ADD CONSTRAINT `craft_matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_matrixcontent_contentlockup`
--
ALTER TABLE `craft_matrixcontent_contentlockup`
  ADD CONSTRAINT `craft_matrixcontent_contentlockup_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixcontent_contentlockup_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_matrixcontent_entryfields`
--
ALTER TABLE `craft_matrixcontent_entryfields`
  ADD CONSTRAINT `craft_matrixcontent_entryfields_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_matrixcontent_entryfields_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
  ADD CONSTRAINT `craft_migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `craft_plugins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_relations`
--
ALTER TABLE `craft_relations`
  ADD CONSTRAINT `craft_relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_relations_sourceSiteId_fk` FOREIGN KEY (`sourceSiteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `craft_relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_revisions`
--
ALTER TABLE `craft_revisions`
  ADD CONSTRAINT `craft_revisions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `craft_revisions_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_sections`
--
ALTER TABLE `craft_sections`
  ADD CONSTRAINT `craft_sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_sections_sites`
--
ALTER TABLE `craft_sections_sites`
  ADD CONSTRAINT `craft_sections_sites_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_sections_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  ADD CONSTRAINT `craft_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_shunnedmessages`
--
ALTER TABLE `craft_shunnedmessages`
  ADD CONSTRAINT `craft_shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_sites`
--
ALTER TABLE `craft_sites`
  ADD CONSTRAINT `craft_sites_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_sitegroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_structureelements`
--
ALTER TABLE `craft_structureelements`
  ADD CONSTRAINT `craft_structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_taggroups`
--
ALTER TABLE `craft_taggroups`
  ADD CONSTRAINT `craft_taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_tags`
--
ALTER TABLE `craft_tags`
  ADD CONSTRAINT `craft_tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_tags_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecacheelements`
--
ALTER TABLE `craft_templatecacheelements`
  ADD CONSTRAINT `craft_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecachequeries`
--
ALTER TABLE `craft_templatecachequeries`
  ADD CONSTRAINT `craft_templatecachequeries_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_templatecaches`
--
ALTER TABLE `craft_templatecaches`
  ADD CONSTRAINT `craft_templatecaches_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `craft_sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craft_usergroups_users`
--
ALTER TABLE `craft_usergroups_users`
  ADD CONSTRAINT `craft_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_userpermissions_usergroups`
--
ALTER TABLE `craft_userpermissions_usergroups`
  ADD CONSTRAINT `craft_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_userpermissions_users`
--
ALTER TABLE `craft_userpermissions_users`
  ADD CONSTRAINT `craft_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_userpreferences`
--
ALTER TABLE `craft_userpreferences`
  ADD CONSTRAINT `craft_userpreferences_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_users`
--
ALTER TABLE `craft_users`
  ADD CONSTRAINT `craft_users_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_users_photoId_fk` FOREIGN KEY (`photoId`) REFERENCES `craft_assets` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_volumefolders`
--
ALTER TABLE `craft_volumefolders`
  ADD CONSTRAINT `craft_volumefolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `craft_volumefolders_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `craft_volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `craft_volumes`
--
ALTER TABLE `craft_volumes`
  ADD CONSTRAINT `craft_volumes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `craft_widgets`
--
ALTER TABLE `craft_widgets`
  ADD CONSTRAINT `craft_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE;
