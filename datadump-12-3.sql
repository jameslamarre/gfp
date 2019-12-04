-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 03, 2019 at 09:39 PM
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
(17, 1, 1, 'Image1_Duo.png', 'image', 1440, 700, 1800984, NULL, NULL, NULL, '2019-11-23 20:24:32', '2019-11-23 20:24:32', '2019-11-23 20:24:37', 'c99cbd00-1cd0-476b-90e6-034b80a8ee5f');

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
  `field_textField` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_content`
--

INSERT INTO `craft_content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_textField`) VALUES
(1, 1, 1, NULL, '2019-11-16 18:40:28', '2019-11-16 18:54:52', '78ba5682-94fe-486d-bb88-6ad67188f959', NULL),
(2, 2, 1, 'Home Page', '2019-11-23 17:00:31', '2019-12-01 19:11:21', '01cdbe40-483c-46b0-a5f5-3d704a7f9133', NULL),
(3, 3, 1, 'Home Page', '2019-11-23 17:00:31', '2019-11-23 17:00:31', 'f0ff8a73-6759-42c3-8f94-91e55bd179a7', NULL),
(4, 4, 1, 'About', '2019-11-23 17:07:16', '2019-12-01 00:52:48', '5bb592cc-f60e-44ec-a442-e27d91bab2c8', '<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:<br /></p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>'),
(5, 5, 1, 'About Page', '2019-11-23 17:07:16', '2019-11-23 17:07:16', '5c92a660-0319-413b-97fc-acccb137eb63', NULL),
(6, 6, 1, 'Get Involved', '2019-11-23 17:07:59', '2019-12-01 00:52:58', '9f52159b-d939-42c0-a5fb-d0bc29687ada', NULL),
(7, 7, 1, 'Get Involved', '2019-11-23 17:07:59', '2019-11-23 17:07:59', '82435f44-d769-4ce0-8174-59954588af37', NULL),
(8, 8, 1, NULL, '2019-11-23 18:23:43', '2019-11-23 20:00:37', '94201220-0a39-40c6-820e-9a102221696f', '<h2>Empowering Youth, their Families and Communities</h2>'),
(9, 9, 1, NULL, '2019-11-23 18:37:41', '2019-11-23 18:38:33', '497b3dcb-8ff1-4718-9a8b-e93c7e63c14e', '<p>936 BROADWAY, 2ND FLOOR. NYC, NY 10010 | (212)-879-4900 x370 | GFP@ACKERMAN.ORG </p>'),
(10, 10, 1, NULL, '2019-11-23 18:38:06', '2019-11-23 18:38:37', '44a77b19-25e6-4bde-be06-4bac41bb88d2', '<p>@GENDERANDFAMILYPROJECT</p>'),
(11, 11, 1, '404 Page', '2019-11-23 18:53:39', '2019-11-23 18:54:34', 'a1a5e556-fd8e-450b-932a-1660603d8a84', '<p>This page does not exist. <a href=\"{entry:2:url}\">Back to home</a>. </p>'),
(12, 12, 1, '404 Page', '2019-11-23 18:53:39', '2019-11-23 18:53:39', '12697b13-0508-4e9d-9794-e18584d921c4', NULL),
(13, 13, 1, '404 Page', '2019-11-23 18:54:05', '2019-11-23 18:54:05', '557197eb-22a3-4c98-bb07-c97848a5f310', NULL),
(14, 14, 1, '404 Page', '2019-11-23 18:54:34', '2019-11-23 18:54:34', '59bbeb95-522c-4f2a-8bbb-4f62e284e33e', '<p>This page does not exist. <a href=\"{entry:2:url}\">Back to home</a>. </p>'),
(15, 15, 1, 'Home Page', '2019-11-23 20:21:15', '2019-11-23 20:21:15', 'cbe3d995-8eb1-4a82-82fe-402090971e44', NULL),
(16, 16, 1, 'Image2', '2019-11-23 20:23:41', '2019-11-23 20:23:48', 'ecb9f9e2-2d74-40e8-a21b-aefc8869b684', NULL),
(17, 17, 1, 'Image1 Duo', '2019-11-23 20:24:29', '2019-11-23 20:24:37', '3251550d-3fda-4beb-b871-461159686ca1', NULL),
(18, 20, 1, 'Home Page', '2019-11-23 20:25:01', '2019-11-23 20:25:01', '884769d0-c108-4e2e-a56f-0bfdb759ec06', NULL),
(19, 23, 1, 'Home Page', '2019-11-23 20:54:33', '2019-11-23 20:54:33', '15381b4f-d5ce-4849-9508-66c420487055', NULL),
(20, 26, 1, 'About Page', '2019-11-23 22:38:17', '2019-11-23 22:38:17', '69500e5b-33e9-4598-ab94-afd360da8149', NULL),
(21, 27, 1, 'Get Involved', '2019-11-23 22:38:24', '2019-11-23 22:38:24', 'f5d93285-9e12-4d5d-9b74-1eaa4058a34b', NULL),
(22, 28, 1, 'About Page', '2019-11-23 22:39:19', '2019-11-23 22:39:19', '48d3bd2f-de98-4ec0-bb0d-9458cf3b4f3a', '<p>MISSION</p><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p><br /></p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>'),
(23, 29, 1, 'About Page', '2019-11-23 22:49:56', '2019-11-23 22:49:56', '0e62cee8-af8d-4baf-8d55-323102bad80e', '<h1>MISSION</h1><p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>'),
(24, 30, 1, 'About Page', '2019-11-23 22:51:44', '2019-11-23 22:51:44', '23bc1a15-61d0-4a23-8e6a-862e1dc008c8', '<h1>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:<br /></h1><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>'),
(25, 31, 1, 'About Page', '2019-11-23 22:51:59', '2019-11-23 22:51:59', '06a89320-d0a2-432b-a696-5d1610448e73', '<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:<br /></p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>'),
(26, 32, 1, 'About Page', '2019-11-23 22:53:05', '2019-11-23 22:53:05', '059c7e47-0a17-406f-b94f-94e7c39672d8', '<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:<br /></p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>'),
(27, 33, 1, 'About', '2019-11-23 22:53:15', '2019-11-23 22:53:15', '52e7b593-e4ed-41e5-8b03-1faec7dbbc06', '<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:<br /></p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>'),
(28, 34, 1, 'Home Page', '2019-12-01 00:04:11', '2019-12-01 00:04:11', 'd23ad4ba-dd85-4ba6-ba19-7913225fa857', NULL),
(29, 38, 1, 'Home Page', '2019-12-01 00:09:15', '2019-12-01 00:09:15', 'b2b6e101-c699-43e3-addd-00da086e0e85', NULL),
(30, 42, 1, 'Home Page', '2019-12-01 00:13:23', '2019-12-01 00:13:23', '2694e56b-b02c-42fa-bb3e-829725f41baa', NULL),
(31, 46, 1, 'Home Page', '2019-12-01 00:14:59', '2019-12-01 00:14:59', '61278d62-f8ae-47dd-a7e9-96dbb850ba87', NULL),
(32, 50, 1, 'About', '2019-12-01 00:44:38', '2019-12-01 00:44:38', '6020bca6-9317-4d01-adc3-7b79adbcd799', '<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:<br /></p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>'),
(33, 51, 1, 'About', '2019-12-01 00:44:38', '2019-12-01 00:44:38', '12de393b-7098-474b-915d-4771ca62b5bc', '<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:<br /></p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p>'),
(34, 52, 1, 'Get Involved', '2019-12-01 00:44:49', '2019-12-01 00:44:49', 'aa9b6705-b62f-438a-9512-0133ff4d2317', NULL),
(35, 54, 1, 'About', '2019-12-01 00:48:14', '2019-12-01 00:48:14', '2db239c2-8b9d-410e-921e-3289266c76de', NULL),
(36, 56, 1, 'About', '2019-12-01 00:52:47', '2019-12-01 00:52:47', '46ae0748-55e5-4e09-b42e-30803d45b43a', NULL),
(37, 58, 1, 'About', '2019-12-01 00:52:48', '2019-12-01 00:52:48', 'f2472c38-3598-40a4-a1c6-b180b2227332', NULL),
(38, 60, 1, 'Get Involved', '2019-12-01 00:52:58', '2019-12-01 00:52:58', 'b0a99dfb-8352-44d7-b6fe-0755293de6f7', NULL),
(39, 61, 1, 'Home Page', '2019-12-01 19:11:21', '2019-12-01 19:11:21', '2ec984ee-fca2-46d0-882e-76c32c905ffc', NULL);

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
(7, 'ElementQuery::find()', '/Users/jameslamarre/Desktop/web/gfp/templates/404.twig:11', '2019-11-23 20:15:25', '/Users/jameslamarre/Desktop/web/gfp/templates/404.twig', 11, 'The find() function used to query for elements is now deprecated. Use all() instead.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":1835,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::find()\\\", \\\"The find() function used to query for elements is now deprecated...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\EntryQuery\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Extension/CoreExtension.php\",\"line\":1495,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"find\",\"args\":null},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/helpers/Template.php\",\"line\":105,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\EntryQuery, \\\"find\\\", ...\"},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/50/501fa0af06ead913fe09651246a6155ba2bd5805f7219607fbc9e775bfd16dd9.php\",\"line\":62,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\EntryQuery, \\\"find\\\", ...\"},{\"objectClass\":\"__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8\",\"method\":\"block_content\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/3d/3dd5f2ad699c303871abb4016604222147a63974ce5dc89e6e4651c8388dc875.php\",\"line\":167,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_afb98ebac63be59ec597b4e906ce3cfe46f17975b9d9112b6110266ae227c54d\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/storage/runtime/compiled_templates/50/501fa0af06ead913fe09651246a6155ba2bd5805f7219607fbc9e775bfd16dd9.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_5ea5ebfbc7d4988568a3321d7a3dd5ac735f19ab588f997c5fcaf3474a1711a8\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":344,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"404\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/View.php\",\"line\":393,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"404\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":243,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"404\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":101,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"404\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"404\\\", []\"},{\"objectClass\":null,\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"404\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Controller.php\",\"line\":157,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"404\\\", \\\"p\\\" => \\\"404\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Controller.php\",\"line\":187,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"404\\\", \\\"p\\\" => \\\"404\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"404\\\", \\\"p\\\" => \\\"404\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":299,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"404\\\", \\\"p\\\" => \\\"404\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"404\\\", \\\"p\\\" => \\\"404\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/craftcms/cms/src/web/Application.php\",\"line\":284,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/jameslamarre/Desktop/web/gfp/web/index.php\",\"line\":21,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2019-11-23 20:15:25', '2019-11-23 20:15:25', 'c52cbc65-0c34-4a94-92c8-9c05aec6b50f');

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
(2, NULL, NULL, 6, 'craft\\elements\\Entry', 1, 0, '2019-11-23 17:00:31', '2019-12-01 19:11:21', NULL, '7ba85b6d-6073-4319-becb-aaad26f90e3c'),
(3, NULL, 1, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-23 17:00:31', '2019-11-23 17:00:31', NULL, '41e39008-5171-476a-b29d-7af4156e0964'),
(4, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2019-11-23 17:07:16', '2019-12-01 00:52:48', NULL, '2caa0e6a-0878-4525-a24b-845596599d2a'),
(5, NULL, 2, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-23 17:07:16', '2019-11-23 17:07:16', NULL, 'fd62115b-f10f-4e8f-8591-80bafc5a2700'),
(6, NULL, NULL, 8, 'craft\\elements\\Entry', 1, 0, '2019-11-23 17:07:59', '2019-12-01 00:52:58', NULL, '17fc55be-2cee-40e4-adcc-4da486191d0c'),
(7, NULL, 3, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-23 17:07:59', '2019-11-23 17:07:59', NULL, '62e19400-4a85-4a3b-bd65-c04f0687508b'),
(8, NULL, NULL, 2, 'craft\\elements\\GlobalSet', 1, 0, '2019-11-23 18:23:43', '2019-11-23 20:00:37', NULL, '5fae239b-fc55-4e9d-913e-decd8dcc8d3a'),
(9, NULL, NULL, 3, 'craft\\elements\\GlobalSet', 1, 0, '2019-11-23 18:37:41', '2019-11-23 18:38:33', NULL, '883d4f51-a9a9-41fd-bfed-0fbda8ff415b'),
(10, NULL, NULL, 4, 'craft\\elements\\GlobalSet', 1, 0, '2019-11-23 18:38:06', '2019-11-23 18:38:36', NULL, '74f79638-484e-4e72-bc38-9ba1a4f3a3e2'),
(11, NULL, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2019-11-23 18:53:39', '2019-11-23 18:54:34', NULL, '64443692-cd3a-40bb-bfbd-422b5cf71ba0'),
(12, NULL, 4, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-23 18:53:39', '2019-11-23 18:53:39', NULL, 'cdc945dd-e870-4537-9edf-6e53ab783c41'),
(13, NULL, 5, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-23 18:54:05', '2019-11-23 18:54:05', NULL, '6803ba1f-0fa7-4c36-b6c6-a571a30cedfd'),
(14, NULL, 6, 5, 'craft\\elements\\Entry', 1, 0, '2019-11-23 18:54:34', '2019-11-23 18:54:34', NULL, '34c53b94-774c-4140-bd0c-0d24ec4f87bb'),
(15, NULL, 7, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-23 20:21:15', '2019-11-23 20:21:15', NULL, '80f95b8c-bb5c-49d2-9eee-59e9428c1446'),
(16, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-23 20:23:41', '2019-11-23 20:23:48', NULL, '8ef0310c-503a-4846-be12-45de5e8849b7'),
(17, NULL, NULL, NULL, 'craft\\elements\\Asset', 1, 0, '2019-11-23 20:24:29', '2019-11-23 20:24:37', NULL, 'b124c0ba-c815-475f-8f90-68a3edccbf63'),
(18, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-11-23 20:25:01', '2019-12-01 19:11:21', NULL, '72718e2b-91a4-4dd9-bffb-d6736fbb528f'),
(19, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-11-23 20:25:01', '2019-12-01 19:11:21', NULL, '945a0239-a57c-4a7c-9fca-42f998bee70a'),
(20, NULL, 8, 6, 'craft\\elements\\Entry', 1, 0, '2019-11-23 20:25:01', '2019-11-23 20:25:01', NULL, '94c8a783-6635-40b6-87a0-660ef8a9b922'),
(21, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-11-23 20:25:01', '2019-11-23 20:25:01', NULL, '7ecb8761-fd81-4c8c-95d3-b951c280b66a'),
(22, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-11-23 20:25:01', '2019-11-23 20:25:01', NULL, '6485f58d-a316-4efd-a922-95cdfc85d650'),
(23, NULL, 9, 6, 'craft\\elements\\Entry', 1, 0, '2019-11-23 20:54:33', '2019-11-23 20:54:33', NULL, '515f192d-ede0-4bd1-a674-f4203351340e'),
(24, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-11-23 20:54:33', '2019-11-23 20:54:33', NULL, '97764d1b-fd35-43be-9b0c-a8306ac99c73'),
(25, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-11-23 20:54:33', '2019-11-23 20:54:33', NULL, '4b9b8ba7-c6f9-487b-9a36-7d1bda7995dd'),
(26, NULL, 10, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-23 22:38:17', '2019-11-23 22:38:17', NULL, 'a5c7a520-994b-481d-a36d-05b08f1c27c9'),
(27, NULL, 11, NULL, 'craft\\elements\\Entry', 1, 0, '2019-11-23 22:38:24', '2019-11-23 22:38:24', NULL, '6c2b3767-3266-4d0d-a73e-388d91ec11f5'),
(28, NULL, 12, 7, 'craft\\elements\\Entry', 1, 0, '2019-11-23 22:39:19', '2019-11-23 22:39:19', NULL, '3729c638-6898-429b-a20d-437ccf8e0ae6'),
(29, NULL, 13, 7, 'craft\\elements\\Entry', 1, 0, '2019-11-23 22:49:55', '2019-11-23 22:49:55', NULL, 'b945bcaf-6814-45a7-92c2-e6523062fd91'),
(30, NULL, 14, 7, 'craft\\elements\\Entry', 1, 0, '2019-11-23 22:51:44', '2019-11-23 22:51:44', NULL, '12ec4b87-0345-4f58-b132-1ed0f7d1d2b7'),
(31, NULL, 15, 7, 'craft\\elements\\Entry', 1, 0, '2019-11-23 22:51:59', '2019-11-23 22:51:59', NULL, '1ed6f327-925d-4f19-bc40-2b875ca617da'),
(32, NULL, 16, 7, 'craft\\elements\\Entry', 1, 0, '2019-11-23 22:53:04', '2019-11-23 22:53:04', NULL, 'f684a271-196b-4c9c-aec1-8a55b4bd4c20'),
(33, NULL, 17, 7, 'craft\\elements\\Entry', 1, 0, '2019-11-23 22:53:15', '2019-11-23 22:53:15', NULL, '4365f0d5-7181-4404-823d-70910fce1e68'),
(34, NULL, 18, 6, 'craft\\elements\\Entry', 1, 0, '2019-12-01 00:04:10', '2019-12-01 00:04:10', NULL, '3479ba1b-6f7d-4a66-952e-3ff2be9a594b'),
(35, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 00:04:11', '2019-12-01 00:04:10', NULL, 'c41a1c8f-8a67-492d-92e4-280e022943d9'),
(36, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 00:04:11', '2019-12-01 00:04:11', NULL, '55ef20bc-ec8a-4e3b-a490-1dbf7bb9198c'),
(37, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 00:09:14', '2019-12-01 19:11:21', NULL, '9cf2045c-c8f7-4c45-b80d-9fc83c12bb48'),
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
(50, NULL, 22, 7, 'craft\\elements\\Entry', 1, 0, '2019-12-01 00:44:37', '2019-12-01 00:44:37', NULL, '84c72a9c-da30-4ce2-845a-39b117f3bfbf'),
(51, NULL, 23, 7, 'craft\\elements\\Entry', 1, 0, '2019-12-01 00:44:38', '2019-12-01 00:44:38', NULL, 'a5eb8bad-2488-471c-b981-e33841f07030'),
(52, NULL, 24, 8, 'craft\\elements\\Entry', 1, 0, '2019-12-01 00:44:49', '2019-12-01 00:44:49', NULL, 'deedd40e-6feb-4c73-b03a-8786a4aa6096'),
(53, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 00:48:13', '2019-12-01 00:52:48', NULL, 'f56ff11e-3077-420e-a617-540c268bd9dc'),
(54, NULL, 25, 7, 'craft\\elements\\Entry', 1, 0, '2019-12-01 00:48:13', '2019-12-01 00:48:13', NULL, 'f5fc8c7c-24a8-4bc5-8aff-647fb553db7c'),
(55, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 00:48:14', '2019-12-01 00:48:13', NULL, '4a7c1a87-7aff-4bcd-9249-145b48e2537e'),
(56, NULL, 26, 7, 'craft\\elements\\Entry', 1, 0, '2019-12-01 00:52:47', '2019-12-01 00:52:47', NULL, '088f6030-d7c5-4713-95a6-df18bfd3939c'),
(57, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 00:52:47', '2019-12-01 00:52:47', NULL, '41480063-7c46-44e9-b2e8-6af130fae99d'),
(58, NULL, 27, 7, 'craft\\elements\\Entry', 1, 0, '2019-12-01 00:52:48', '2019-12-01 00:52:48', NULL, '5a86391d-0080-48e4-9e7b-fab60545f474'),
(59, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 00:52:48', '2019-12-01 00:52:48', NULL, '91e17c72-0d98-4d72-be89-5a4c9c432df8'),
(60, NULL, 28, 8, 'craft\\elements\\Entry', 1, 0, '2019-12-01 00:52:58', '2019-12-01 00:52:58', NULL, '7af3b56a-b045-46ab-8c15-609e57ce1440'),
(61, NULL, 29, 6, 'craft\\elements\\Entry', 1, 0, '2019-12-01 19:11:21', '2019-12-01 19:11:21', NULL, '32738f37-f6d7-4624-8ab1-c99fdc0b960d'),
(62, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 19:11:22', '2019-12-01 19:11:21', NULL, 'b98c9fad-1018-46e9-bf3d-4151f1924568'),
(63, NULL, NULL, 1, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 19:11:22', '2019-12-01 19:11:21', NULL, '1b3cd2bd-8a9f-4685-a710-780344f0207b'),
(64, NULL, NULL, 9, 'craft\\elements\\MatrixBlock', 1, 0, '2019-12-01 19:11:22', '2019-12-01 19:11:21', NULL, 'e5d7d826-43cd-4ae0-941d-346da5009807');

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
(6, 6, 1, 'get-involved', 'get-involved', 1, '2019-11-23 17:07:59', '2019-11-23 17:07:59', '88c98422-f24d-4b92-8d37-19711dad823a'),
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
(64, 64, 1, NULL, NULL, 1, '2019-12-01 19:11:22', '2019-12-01 19:11:22', '05d2e53d-c7f5-48a1-9541-15599a270b8a');

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
(4, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-11-23 17:07:16', '2019-11-23 17:07:16', 'b3d75fc1-1780-4e97-b6fc-9800b3bf189b'),
(5, 2, NULL, 2, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-11-23 17:07:16', '2019-11-23 17:07:16', 'f36ed60b-cbb4-43e4-a336-aba5c6074d11'),
(6, 3, NULL, 3, NULL, '2019-11-23 17:07:00', NULL, NULL, '2019-11-23 17:07:59', '2019-11-23 17:07:59', 'f02ec9fe-23ad-4e7b-9116-abb9d3f9b1f1'),
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
(61, 1, NULL, 1, NULL, '2019-11-23 17:00:00', NULL, NULL, '2019-12-01 19:11:21', '2019-12-01 19:11:21', 'b4f9b53e-1c6e-4341-8cac-3fc72b97841e');

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
(1, 1, 6, 'Home Page', 'homePage', 0, '', '{section.name|raw}', 1, '2019-11-23 17:00:31', '2019-11-23 20:21:15', NULL, '1fb2e564-996e-4a4d-958e-e493f4ce0c82'),
(2, 2, 7, 'About', 'aboutPage', 0, '', '{section.name|raw}', 1, '2019-11-23 17:07:16', '2019-12-01 00:52:48', NULL, '0cf6242f-209a-49bf-86ed-11401f07107f'),
(3, 3, 8, 'Get Involved', 'getInvolved', 0, '', '{section.name|raw}', 1, '2019-11-23 17:07:59', '2019-12-01 00:52:58', NULL, '9f4b8ffa-86f7-4487-b512-dca1c83b17c6'),
(4, 4, 5, '404 Page', 'fourOhFourPage', 0, '', '{section.name|raw}', 1, '2019-11-23 18:53:39', '2019-11-23 18:54:05', NULL, 'eec01ffb-1c83-4168-8f7d-291ec9075903');

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
(14, 4, 8, 1, 0, 1, '2019-11-23 18:38:06', '2019-11-23 18:38:06', 'e16d2271-fc3a-41a6-a4ab-0358b9199e1b'),
(15, 3, 9, 1, 0, 1, '2019-11-23 18:38:20', '2019-11-23 18:38:20', 'cb48fc33-1942-4d6e-9506-45ba0aa76880'),
(16, 5, 10, 1, 0, 1, '2019-11-23 18:54:05', '2019-11-23 18:54:05', 'db5a2dcf-5afd-45e3-98a0-a07c2df51172'),
(17, 6, 11, 3, 0, 1, '2019-11-23 20:21:15', '2019-11-23 20:21:15', '79aa08aa-d83a-4906-8419-40fd9910ca79'),
(51, 1, 24, 5, 0, 2, '2019-12-01 00:13:02', '2019-12-01 00:13:02', '02fd2685-1172-4d70-903a-dc3e7ac2f4f1'),
(52, 1, 24, 6, 0, 3, '2019-12-01 00:13:02', '2019-12-01 00:13:02', '79bea9ee-093a-48c9-bd08-a57715f30aeb'),
(53, 1, 24, 4, 1, 1, '2019-12-01 00:13:02', '2019-12-01 00:13:02', '57824b05-9f41-4e6f-8b4c-afa26413cc3c'),
(54, 9, 25, 7, 0, 2, '2019-12-01 00:13:02', '2019-12-01 00:13:02', 'b4e8d07a-89f0-413f-b441-ef6d0cd25fe4'),
(55, 9, 25, 8, 0, 3, '2019-12-01 00:13:02', '2019-12-01 00:13:02', 'ce04d446-fc69-454c-9aa6-26def9f58b62'),
(56, 9, 25, 9, 1, 1, '2019-12-01 00:13:02', '2019-12-01 00:13:02', '84c185ea-e78c-4866-8ab3-46e9f8c460f0'),
(57, 10, 26, 11, 1, 1, '2019-12-01 00:43:50', '2019-12-01 00:43:50', 'c2c97b30-af81-489f-822c-a44ddf7a9449'),
(58, 11, 27, 12, 1, 1, '2019-12-01 00:43:50', '2019-12-01 00:43:50', '27c501b3-0269-4bf0-882e-491d241d152f'),
(59, 11, 27, 13, 0, 2, '2019-12-01 00:43:50', '2019-12-01 00:43:50', '3dc0690b-c321-4dc0-9473-dad3650385a5'),
(60, 12, 28, 14, 1, 1, '2019-12-01 00:43:51', '2019-12-01 00:43:51', 'ccbefa26-19de-4558-88f4-402587e272d4'),
(63, 7, 31, 2, 0, 1, '2019-12-01 00:52:48', '2019-12-01 00:52:48', '511f466d-9ecc-4a3c-a2a2-7d5ea2bdc9c9'),
(64, 7, 31, 10, 0, 2, '2019-12-01 00:52:48', '2019-12-01 00:52:48', 'a44adb43-600a-4f6b-b31e-720eb1b8bc1a'),
(65, 8, 32, 2, 0, 1, '2019-12-01 00:52:58', '2019-12-01 00:52:58', '78242bd3-5e18-42fc-8548-057a719a56d6'),
(66, 8, 32, 10, 0, 2, '2019-12-01 00:52:58', '2019-12-01 00:52:58', '8881c960-daa5-4894-92a2-761525648882');

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
(7, 'craft\\elements\\Entry', '2019-11-23 22:38:17', '2019-11-23 22:38:17', NULL, '32332611-eb5b-4373-acf6-ca94873806ac'),
(8, 'craft\\elements\\Entry', '2019-11-23 22:38:24', '2019-11-23 22:38:24', NULL, '24a06b47-f682-44d5-9a23-162c97cc9e0c'),
(9, 'craft\\elements\\MatrixBlock', '2019-12-01 00:06:28', '2019-12-01 00:06:28', NULL, 'a456deba-0657-46c2-9d1f-e5ec56b445eb'),
(10, 'craft\\elements\\MatrixBlock', '2019-12-01 00:43:50', '2019-12-01 00:43:50', NULL, '29818bcb-76c9-48d1-89c1-c8456c0600db'),
(11, 'craft\\elements\\MatrixBlock', '2019-12-01 00:43:50', '2019-12-01 00:43:50', NULL, '9bc62277-e47c-456a-8728-b07ed1f01e4f'),
(12, 'craft\\elements\\MatrixBlock', '2019-12-01 00:43:51', '2019-12-01 00:43:51', NULL, 'e1e17a32-e7ac-4251-bc57-c1542c46d18e');

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
(8, 4, 'Handle', 1, '2019-11-23 18:38:06', '2019-11-23 18:38:06', 'cae6baa0-1c02-4c44-9cbf-6af5e8c171ff'),
(9, 3, 'Copy', 1, '2019-11-23 18:38:20', '2019-11-23 18:38:20', 'a3a31944-cf3a-4f0f-ba29-5cac724d5cf1'),
(10, 5, '404', 1, '2019-11-23 18:54:05', '2019-11-23 18:54:05', '8b921c7a-4bfa-4432-a5cc-492b4650e7f3'),
(11, 6, 'Home', 1, '2019-11-23 20:21:15', '2019-11-23 20:21:15', 'd44ac6f2-15ea-4358-b97a-00cef085da23'),
(24, 1, 'Content', 1, '2019-12-01 00:13:02', '2019-12-01 00:13:02', 'f56cca8d-f3b9-4216-b2c4-b17dbca5063c'),
(25, 9, 'Content', 1, '2019-12-01 00:13:02', '2019-12-01 00:13:02', '08ddee2b-35ea-445d-9498-f7299c898e85'),
(26, 10, 'Content', 1, '2019-12-01 00:43:50', '2019-12-01 00:43:50', 'd847e49d-92ab-4c54-aeac-2743e75fb174'),
(27, 11, 'Content', 1, '2019-12-01 00:43:50', '2019-12-01 00:43:50', '248a1d9b-ae75-44ad-8923-51b6080d3dad'),
(28, 12, 'Content', 1, '2019-12-01 00:43:51', '2019-12-01 00:43:51', '1bd56794-07f8-4586-aa35-e3cc3b5d9f6a'),
(31, 7, 'Common', 1, '2019-12-01 00:52:48', '2019-12-01 00:52:48', 'da770237-623e-4713-a01d-45a317d8be48'),
(32, 8, 'Common', 1, '2019-12-01 00:52:58', '2019-12-01 00:52:58', 'e9f3858d-41d6-46a5-981f-426489c9f858');

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
(3, 3, 'Content Lockup', 'contentLockup', 'global', 'Add an image, video or slideshow; title, and subhead. Appears on the home page only. ', 1, 'site', NULL, 'craft\\fields\\Matrix', '{\"minBlocks\":\"\",\"maxBlocks\":\"\",\"contentTable\":\"{{%matrixcontent_contentlockup}}\",\"propagationMethod\":\"all\"}', '2019-11-23 17:22:48', '2019-12-01 00:13:02', '60048af4-ec20-4feb-b4a7-8acfbabe0683'),
(4, NULL, 'Lockup Image', 'lockupImage', 'matrixBlockType:6e01c8fe-f719-4b7f-b50a-9bff2d7cf374', 'Add one or multiple images', 1, 'site', NULL, 'craft\\fields\\Assets', '{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"allowedKinds\":null,\"sources\":\"*\",\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"}', '2019-11-23 17:22:48', '2019-12-01 00:13:02', 'f06caffa-c7e7-4c6f-bad4-defa3dc65daf'),
(5, NULL, 'Lockup Header', 'lockupHeader', 'matrixBlockType:6e01c8fe-f719-4b7f-b50a-9bff2d7cf374', 'Add the header for the lockup', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"}', '2019-11-23 17:24:01', '2019-12-01 00:13:02', '7f78a050-9047-4e53-9f2b-7ff000e06c3c'),
(6, NULL, 'Lockup Subhead', 'lockupSubhead', 'matrixBlockType:6e01c8fe-f719-4b7f-b50a-9bff2d7cf374', 'Add a subhead here', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"}', '2019-11-23 17:24:01', '2019-12-01 00:13:02', 'c1d8be44-8a5a-4a17-b22e-906a74dbb5fc'),
(7, NULL, 'Lockup Header', 'lockupHeader', 'matrixBlockType:04454127-324e-4600-80e5-b650f2f27329', '', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"}', '2019-12-01 00:06:27', '2019-12-01 00:13:02', '7bb44713-09d7-494b-a83a-a69939160e33'),
(8, NULL, 'Lockup Subhead', 'lockupSubhead', 'matrixBlockType:04454127-324e-4600-80e5-b650f2f27329', '', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"}', '2019-12-01 00:06:28', '2019-12-01 00:13:02', '81a80003-9c7b-42c0-8b0e-2c8a334d82aa'),
(9, NULL, 'Facebook Embed Link', 'facebookEmbedLink', 'matrixBlockType:04454127-324e-4600-80e5-b650f2f27329', 'Add the embed link for a facebook video here', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-12-01 00:06:28', '2019-12-01 00:13:02', '877923a2-640f-45c8-9f9b-fa3528911d6a'),
(10, 1, 'Entry Fields', 'entryFields', 'global', '', 1, 'site', NULL, 'craft\\fields\\Matrix', '{\"minBlocks\":\"\",\"maxBlocks\":\"\",\"contentTable\":\"{{%matrixcontent_entryfields}}\",\"propagationMethod\":\"all\"}', '2019-12-01 00:43:50', '2019-12-01 00:43:50', '5e84d008-2762-4327-b794-72545f962ae3'),
(11, NULL, 'Text Field', 'textField', 'matrixBlockType:7bc547ca-d99b-4a4c-bc2f-4f197497c439', 'Add copy and embedded inline images here here', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"Standard.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"}', '2019-12-01 00:43:50', '2019-12-01 00:43:50', 'a2b95ad0-688e-43b8-b7cd-b27966ade2be'),
(12, NULL, 'Video Embed Code', 'videoEmbedCode', 'matrixBlockType:0eedfac2-eb7f-4731-ac71-f45394fd3159', '', 1, 'none', NULL, 'craft\\fields\\PlainText', '{\"placeholder\":\"ie. 10153231379946729\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"}', '2019-12-01 00:43:50', '2019-12-01 00:43:50', '1899f18b-1c3a-4b51-b403-2864d1a245ef'),
(13, NULL, 'Video Caption', 'videoCaption', 'matrixBlockType:0eedfac2-eb7f-4731-ac71-f45394fd3159', 'Add a caption ', 1, 'none', NULL, 'craft\\redactor\\Field', '{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"}', '2019-12-01 00:43:50', '2019-12-01 00:43:50', 'b1481cc9-328a-4d25-bd2c-142df2e3d53a'),
(14, NULL, 'Asset Field', 'assetField', 'matrixBlockType:187584c8-bc18-4217-a7c3-5dae4c0d402e', 'Add an image ', 1, 'site', NULL, 'craft\\fields\\Assets', '{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"allowedKinds\":[\"image\",\"pdf\"],\"sources\":\"*\",\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"}', '2019-12-01 00:43:51', '2019-12-01 00:43:51', '26335990-ac90-4372-88eb-845d480bdeba');

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
(10, 'Footer Handle', 'footerHandle', 4, '2019-11-23 18:38:06', '2019-11-23 18:38:06', '74f79638-484e-4e72-bc38-9ba1a4f3a3e2');

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
(1, '3.3.16.1', '3.3.3', 0, '{\"fieldGroups\":{\"43a12f84-7764-4426-8c01-a05e8c6055c5\":{\"name\":\"Common\"},\"f3888fe6-c608-49b6-9ec5-46b91dd0c97d\":{\"name\":\"Home\"}},\"siteGroups\":{\"51b18487-1143-446a-8d3c-0630845313c9\":{\"name\":\"Gender Family Project\"}},\"sites\":{\"35707b9d-7d83-4c03-a9d7-ac32c06e1ccb\":{\"baseUrl\":\"$DEFAULT_SITE_URL\",\"handle\":\"default\",\"hasUrls\":true,\"language\":\"en-US\",\"name\":\"Gender Family Project\",\"primary\":true,\"siteGroup\":\"51b18487-1143-446a-8d3c-0630845313c9\",\"sortOrder\":1}},\"email\":{\"fromEmail\":\"jameslamarre@gmail.com\",\"fromName\":\"Gender Family Project\",\"transportType\":\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"},\"system\":{\"edition\":\"solo\",\"name\":\"Gender Family Project\",\"live\":true,\"schemaVersion\":\"3.3.3\",\"timeZone\":\"America/Los_Angeles\"},\"users\":{\"requireEmailVerification\":true,\"allowPublicRegistration\":false,\"defaultGroup\":null,\"photoVolumeUid\":null,\"photoSubpath\":\"\"},\"dateModified\":1575161578,\"fields\":{\"d499c44e-e0d4-47e4-a4ec-d2f7727d723f\":{\"name\":\"Text Field\",\"handle\":\"textField\",\"instructions\":\"Use the widget to add text here\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":\"43a12f84-7764-4426-8c01-a05e8c6055c5\"},\"4b96664e-b12f-47fe-9f83-8eafd29af83c\":{\"name\":\"Image Field\",\"handle\":\"imageField\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Assets\",\"settings\":{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"sources\":[\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\"],\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":\"43a12f84-7764-4426-8c01-a05e8c6055c5\"},\"60048af4-ec20-4feb-b4a7-8acfbabe0683\":{\"name\":\"Content Lockup\",\"handle\":\"contentLockup\",\"instructions\":\"Add an image, video or slideshow; title, and subhead. Appears on the home page only. \",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Matrix\",\"settings\":{\"minBlocks\":\"\",\"maxBlocks\":\"\",\"contentTable\":\"{{%matrixcontent_contentlockup}}\",\"propagationMethod\":\"all\"},\"contentColumnType\":\"string\",\"fieldGroup\":\"f3888fe6-c608-49b6-9ec5-46b91dd0c97d\"},\"5e84d008-2762-4327-b794-72545f962ae3\":{\"name\":\"Entry Fields\",\"handle\":\"entryFields\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Matrix\",\"settings\":{\"minBlocks\":\"\",\"maxBlocks\":\"\",\"contentTable\":\"{{%matrixcontent_entryfields}}\",\"propagationMethod\":\"all\"},\"contentColumnType\":\"string\",\"fieldGroup\":\"43a12f84-7764-4426-8c01-a05e8c6055c5\"}},\"sections\":{\"a35211f8-5bcb-4cde-bf30-d5e14d414a74\":{\"name\":\"Home Page\",\"handle\":\"homePage\",\"type\":\"single\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"35707b9d-7d83-4c03-a9d7-ac32c06e1ccb\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"__home__\",\"template\":\"\"}},\"entryTypes\":{\"1fb2e564-996e-4a4d-958e-e493f4ce0c82\":{\"name\":\"Home Page\",\"handle\":\"homePage\",\"hasTitleField\":false,\"titleLabel\":\"\",\"titleFormat\":\"{section.name|raw}\",\"sortOrder\":1,\"fieldLayouts\":{\"ba9b4241-a630-4dd2-9ca8-ca03af82a53f\":{\"tabs\":[{\"name\":\"Home\",\"sortOrder\":1,\"fields\":{\"60048af4-ec20-4feb-b4a7-8acfbabe0683\":{\"required\":false,\"sortOrder\":1}}}]}}}}},\"5175e050-a0d9-4e52-aee8-91944605faea\":{\"name\":\"About\",\"handle\":\"aboutPage\",\"type\":\"single\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"35707b9d-7d83-4c03-a9d7-ac32c06e1ccb\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"about\",\"template\":\"views/_entry\"}},\"entryTypes\":{\"0cf6242f-209a-49bf-86ed-11401f07107f\":{\"name\":\"About\",\"handle\":\"aboutPage\",\"hasTitleField\":false,\"titleLabel\":\"\",\"titleFormat\":\"{section.name|raw}\",\"sortOrder\":1,\"fieldLayouts\":{\"32332611-eb5b-4373-acf6-ca94873806ac\":{\"tabs\":[{\"name\":\"Common\",\"sortOrder\":1,\"fields\":{\"4b96664e-b12f-47fe-9f83-8eafd29af83c\":{\"required\":false,\"sortOrder\":1},\"5e84d008-2762-4327-b794-72545f962ae3\":{\"required\":false,\"sortOrder\":2}}}]}}}}},\"8ffd4f78-c15f-4a61-b306-3332bc75f5c4\":{\"name\":\"Get Involved\",\"handle\":\"getInvolved\",\"type\":\"single\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"35707b9d-7d83-4c03-a9d7-ac32c06e1ccb\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"get-involved\",\"template\":\"views/_entry\"}},\"entryTypes\":{\"9f4b8ffa-86f7-4487-b512-dca1c83b17c6\":{\"name\":\"Get Involved\",\"handle\":\"getInvolved\",\"hasTitleField\":false,\"titleLabel\":\"\",\"titleFormat\":\"{section.name|raw}\",\"sortOrder\":1,\"fieldLayouts\":{\"24a06b47-f682-44d5-9a23-162c97cc9e0c\":{\"tabs\":[{\"name\":\"Common\",\"sortOrder\":1,\"fields\":{\"4b96664e-b12f-47fe-9f83-8eafd29af83c\":{\"required\":false,\"sortOrder\":1},\"5e84d008-2762-4327-b794-72545f962ae3\":{\"required\":false,\"sortOrder\":2}}}]}}}}},\"b94bc776-14fa-47f3-9e27-070ac0ed1e2d\":{\"name\":\"404 Page\",\"handle\":\"fourOhFourPage\",\"type\":\"single\",\"enableVersioning\":true,\"propagationMethod\":\"all\",\"siteSettings\":{\"35707b9d-7d83-4c03-a9d7-ac32c06e1ccb\":{\"enabledByDefault\":true,\"hasUrls\":true,\"uriFormat\":\"404-page\",\"template\":\"404\"}},\"entryTypes\":{\"eec01ffb-1c83-4168-8f7d-291ec9075903\":{\"name\":\"404 Page\",\"handle\":\"fourOhFourPage\",\"hasTitleField\":false,\"titleLabel\":\"\",\"titleFormat\":\"{section.name|raw}\",\"sortOrder\":1,\"fieldLayouts\":{\"6edc0daf-61c8-4fa1-9816-063b1a41c278\":{\"tabs\":[{\"name\":\"404\",\"sortOrder\":1,\"fields\":{\"d499c44e-e0d4-47e4-a4ec-d2f7727d723f\":{\"required\":false,\"sortOrder\":1}}}]}}}}}},\"volumes\":{\"38402d41-2ff3-4e10-8f75-6cbc1edb2981\":{\"name\":\"Images\",\"handle\":\"images\",\"type\":\"craft\\\\volumes\\\\Local\",\"hasUrls\":true,\"url\":\"assets/images/\",\"settings\":{\"path\":\"assets/images/\"},\"sortOrder\":1}},\"matrixBlockTypes\":{\"6e01c8fe-f719-4b7f-b50a-9bff2d7cf374\":{\"field\":\"60048af4-ec20-4feb-b4a7-8acfbabe0683\",\"name\":\"Content Lockup\",\"handle\":\"contentLockup\",\"sortOrder\":1,\"fields\":{\"7f78a050-9047-4e53-9f2b-7ff000e06c3c\":{\"name\":\"Lockup Header\",\"handle\":\"lockupHeader\",\"instructions\":\"Add the header for the lockup\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"c1d8be44-8a5a-4a17-b22e-906a74dbb5fc\":{\"name\":\"Lockup Subhead\",\"handle\":\"lockupSubhead\",\"instructions\":\"Add a subhead here\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"f06caffa-c7e7-4c6f-bad4-defa3dc65daf\":{\"name\":\"Lockup Image\",\"handle\":\"lockupImage\",\"instructions\":\"Add one or multiple images\",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Assets\",\"settings\":{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"allowedKinds\":null,\"sources\":\"*\",\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":null}},\"fieldLayouts\":{\"fea9050b-c01a-42d5-868f-73e79e9f58f9\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"7f78a050-9047-4e53-9f2b-7ff000e06c3c\":{\"required\":false,\"sortOrder\":2},\"c1d8be44-8a5a-4a17-b22e-906a74dbb5fc\":{\"required\":false,\"sortOrder\":3},\"f06caffa-c7e7-4c6f-bad4-defa3dc65daf\":{\"required\":true,\"sortOrder\":1}}}]}}},\"04454127-324e-4600-80e5-b650f2f27329\":{\"field\":\"60048af4-ec20-4feb-b4a7-8acfbabe0683\",\"name\":\"Video Lockup\",\"handle\":\"videoLockup\",\"sortOrder\":2,\"fields\":{\"7bb44713-09d7-494b-a83a-a69939160e33\":{\"name\":\"Lockup Header\",\"handle\":\"lockupHeader\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"81a80003-9c7b-42c0-8b0e-2c8a334d82aa\":{\"name\":\"Lockup Subhead\",\"handle\":\"lockupSubhead\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"877923a2-640f-45c8-9f9b-fa3528911d6a\":{\"name\":\"Facebook Embed Link\",\"handle\":\"facebookEmbedLink\",\"instructions\":\"Add the embed link for a facebook video here\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"contentColumnType\":\"text\",\"fieldGroup\":null}},\"fieldLayouts\":{\"a456deba-0657-46c2-9d1f-e5ec56b445eb\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"7bb44713-09d7-494b-a83a-a69939160e33\":{\"required\":false,\"sortOrder\":2},\"81a80003-9c7b-42c0-8b0e-2c8a334d82aa\":{\"required\":false,\"sortOrder\":3},\"877923a2-640f-45c8-9f9b-fa3528911d6a\":{\"required\":true,\"sortOrder\":1}}}]}}},\"7bc547ca-d99b-4a4c-bc2f-4f197497c439\":{\"field\":\"5e84d008-2762-4327-b794-72545f962ae3\",\"name\":\"Entry Text Block\",\"handle\":\"entryTextBlock\",\"sortOrder\":1,\"fields\":{\"a2b95ad0-688e-43b8-b7cd-b27966ade2be\":{\"name\":\"Text Field\",\"handle\":\"textField\",\"instructions\":\"Add copy and embedded inline images here here\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Standard.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null}},\"fieldLayouts\":{\"29818bcb-76c9-48d1-89c1-c8456c0600db\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"a2b95ad0-688e-43b8-b7cd-b27966ade2be\":{\"required\":true,\"sortOrder\":1}}}]}}},\"0eedfac2-eb7f-4731-ac71-f45394fd3159\":{\"field\":\"5e84d008-2762-4327-b794-72545f962ae3\",\"name\":\"Entry Video Embed\",\"handle\":\"entryVideoEmbed\",\"sortOrder\":2,\"fields\":{\"1899f18b-1c3a-4b51-b403-2864d1a245ef\":{\"name\":\"Video Embed Code\",\"handle\":\"videoEmbedCode\",\"instructions\":\"\",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\PlainText\",\"settings\":{\"placeholder\":\"ie. 10153231379946729\",\"code\":\"\",\"multiline\":\"\",\"initialRows\":\"4\",\"charLimit\":\"\",\"columnType\":\"text\"},\"contentColumnType\":\"text\",\"fieldGroup\":null},\"b1481cc9-328a-4d25-bd2c-142df2e3d53a\":{\"name\":\"Video Caption\",\"handle\":\"videoCaption\",\"instructions\":\"Add a caption \",\"searchable\":true,\"translationMethod\":\"none\",\"translationKeyFormat\":null,\"type\":\"craft\\\\redactor\\\\Field\",\"settings\":{\"redactorConfig\":\"Links.json\",\"purifierConfig\":\"\",\"cleanupHtml\":true,\"removeInlineStyles\":\"1\",\"removeEmptyTags\":\"1\",\"removeNbsp\":\"1\",\"purifyHtml\":\"1\",\"columnType\":\"text\",\"availableVolumes\":\"*\",\"availableTransforms\":\"*\"},\"contentColumnType\":\"text\",\"fieldGroup\":null}},\"fieldLayouts\":{\"9bc62277-e47c-456a-8728-b07ed1f01e4f\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"1899f18b-1c3a-4b51-b403-2864d1a245ef\":{\"required\":true,\"sortOrder\":1},\"b1481cc9-328a-4d25-bd2c-142df2e3d53a\":{\"required\":false,\"sortOrder\":2}}}]}}},\"187584c8-bc18-4217-a7c3-5dae4c0d402e\":{\"field\":\"5e84d008-2762-4327-b794-72545f962ae3\",\"name\":\"Entry Asset\",\"handle\":\"entryAsset\",\"sortOrder\":3,\"fields\":{\"26335990-ac90-4372-88eb-845d480bdeba\":{\"name\":\"Asset Field\",\"handle\":\"assetField\",\"instructions\":\"Add an image \",\"searchable\":true,\"translationMethod\":\"site\",\"translationKeyFormat\":null,\"type\":\"craft\\\\fields\\\\Assets\",\"settings\":{\"useSingleFolder\":\"\",\"defaultUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"volume:38402d41-2ff3-4e10-8f75-6cbc1edb2981\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"\",\"allowedKinds\":[\"image\",\"pdf\"],\"sources\":\"*\",\"source\":null,\"targetSiteId\":null,\"viewMode\":\"list\",\"limit\":\"1\",\"selectionLabel\":\"\",\"localizeRelations\":false,\"validateRelatedElements\":\"\"},\"contentColumnType\":\"string\",\"fieldGroup\":null}},\"fieldLayouts\":{\"e1e17a32-e7ac-4251-bc57-c1542c46d18e\":{\"tabs\":[{\"name\":\"Content\",\"sortOrder\":1,\"fields\":{\"26335990-ac90-4372-88eb-845d480bdeba\":{\"required\":true,\"sortOrder\":1}}}]}}}},\"plugins\":{\"redactor\":{\"edition\":\"standard\",\"enabled\":true,\"schemaVersion\":\"2.3.0\"},\"imager\":{\"edition\":\"standard\",\"enabled\":true,\"schemaVersion\":\"2.0.0\"}},\"globalSets\":{\"5fae239b-fc55-4e9d-913e-decd8dcc8d3a\":{\"name\":\"Header Copy\",\"handle\":\"headerCopy\",\"fieldLayouts\":{\"e764c720-5c68-41b0-a96a-7bd23e0f2fda\":{\"tabs\":[{\"name\":\"Copy\",\"sortOrder\":1,\"fields\":{\"d499c44e-e0d4-47e4-a4ec-d2f7727d723f\":{\"required\":false,\"sortOrder\":1}}}]}}},\"883d4f51-a9a9-41fd-bfed-0fbda8ff415b\":{\"name\":\"Footer Copy\",\"handle\":\"footerCopy\",\"fieldLayouts\":{\"6a5dcfed-ca4b-4255-b3c9-b537ce055e30\":{\"tabs\":[{\"name\":\"Copy\",\"sortOrder\":1,\"fields\":{\"d499c44e-e0d4-47e4-a4ec-d2f7727d723f\":{\"required\":false,\"sortOrder\":1}}}]}}},\"74f79638-484e-4e72-bc38-9ba1a4f3a3e2\":{\"name\":\"Footer Handle\",\"handle\":\"footerHandle\",\"fieldLayouts\":{\"eba588db-0266-455f-8f97-be8263b16bca\":{\"tabs\":[{\"name\":\"Handle\",\"sortOrder\":1,\"fields\":{\"d499c44e-e0d4-47e4-a4ec-d2f7727d723f\":{\"required\":false,\"sortOrder\":1}}}]}}}}}', '[]', 'a7RsSuVL0NGu', '2019-11-16 18:40:28', '2019-11-16 18:40:28', '7eb6a088-ec22-42e8-b449-98430b01e64e');

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
(53, 4, 10, 3, 1, NULL, '2019-12-01 00:48:13', '2019-12-01 00:48:13', '9c16b0c4-c57a-420c-9735-c1e6c73ac7c0'),
(55, 54, 10, 3, 1, NULL, '2019-12-01 00:48:14', '2019-12-01 00:48:14', 'b344c20a-87b5-4d3d-8505-c569265430f0'),
(57, 56, 10, 3, 1, NULL, '2019-12-01 00:52:47', '2019-12-01 00:52:47', '3bd93e73-0359-4f6b-a80b-cf334c18300f'),
(59, 58, 10, 3, 1, NULL, '2019-12-01 00:52:48', '2019-12-01 00:52:48', 'a3245d1d-48f0-4b33-b41f-af87c5f42d20'),
(62, 61, 3, 1, 1, NULL, '2019-12-01 19:11:22', '2019-12-01 19:11:22', '444b91db-eab3-4192-a050-23b476823c2f'),
(63, 61, 3, 1, 2, NULL, '2019-12-01 19:11:22', '2019-12-01 19:11:22', 'e44188fb-4b51-4939-9a40-6343968e7325'),
(64, 61, 3, 2, 3, NULL, '2019-12-01 19:11:22', '2019-12-01 19:11:22', '3c3daf9e-7020-4a79-a3f4-dd8007b33f29');

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
(3, 10, 10, 'Entry Text Block', 'entryTextBlock', 1, '2019-12-01 00:43:50', '2019-12-01 00:43:50', '7bc547ca-d99b-4a4c-bc2f-4f197497c439'),
(4, 10, 11, 'Entry Video Embed', 'entryVideoEmbed', 2, '2019-12-01 00:43:50', '2019-12-01 00:43:50', '0eedfac2-eb7f-4731-ac71-f45394fd3159'),
(5, 10, 12, 'Entry Asset', 'entryAsset', 3, '2019-12-01 00:43:51', '2019-12-01 00:43:51', '187584c8-bc18-4217-a7c3-5dae4c0d402e');

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
  `field_videoLockup_facebookEmbedLink` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_matrixcontent_contentlockup`
--

INSERT INTO `craft_matrixcontent_contentlockup` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_contentLockup_lockupHeader`, `field_contentLockup_lockupSubhead`, `field_videoLockup_lockupHeader`, `field_videoLockup_lockupSubhead`, `field_videoLockup_facebookEmbedLink`) VALUES
(1, 18, 1, '2019-11-23 20:25:01', '2019-12-01 19:11:21', '17483ca5-42c1-406b-9de2-9fa360169bfa', '<p>MEET GFP</p>', '<p>This is a subhead.</p>', NULL, NULL, NULL),
(2, 19, 1, '2019-11-23 20:25:01', '2019-12-01 19:11:21', '050de2dd-8362-4758-aab9-740b9a79abeb', '<p>NIGHT OF A THOUSAND GENDERS</p>', '<p>This is a subhead.</p>', NULL, NULL, NULL),
(3, 21, 1, '2019-11-23 20:25:01', '2019-11-23 20:25:01', '66a570ac-01cf-4d37-bbc3-b59f81c9c843', '<p>MEET GFP</p>', 'This is a subhead.', NULL, NULL, NULL),
(4, 22, 1, '2019-11-23 20:25:01', '2019-11-23 20:25:01', 'd53c8174-3670-4591-b14c-4c925d82f25f', '<p>NIGHT OF A THOUSAND GENDERS</p>', 'This is a subhead.', NULL, NULL, NULL),
(5, 24, 1, '2019-11-23 20:54:33', '2019-11-23 20:54:33', 'c2b80b21-fa15-4c56-97cb-a5aac92be4f6', 'MEET GFP', 'This is a subhead.', NULL, NULL, NULL),
(6, 25, 1, '2019-11-23 20:54:33', '2019-11-23 20:54:33', '12a24c8c-e2e2-4d3f-b6ca-8751bc43857f', 'NIGHT OF A THOUSAND GENDERS', 'This is a subhead.', NULL, NULL, NULL),
(7, 35, 1, '2019-12-01 00:04:11', '2019-12-01 00:04:11', 'd5548793-0e79-4e22-8563-6c26bc18cc85', '<p>MEET GFP</p>', '<p>This is a subhead.</p>', NULL, NULL, NULL),
(8, 36, 1, '2019-12-01 00:04:11', '2019-12-01 00:04:11', '862b32cc-0942-4ea1-9f51-e0964c5f27d2', '<p>NIGHT OF A THOUSAND GENDERS</p>', '<p>This is a subhead.</p>', NULL, NULL, NULL),
(9, 37, 1, '2019-12-01 00:09:14', '2019-12-01 19:11:21', 'aded4e7d-4f6a-4ab1-a191-ff0592eba20c', NULL, NULL, '<p>Testing Video Header</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>', '1584597334903887'),
(10, 39, 1, '2019-12-01 00:09:15', '2019-12-01 00:09:15', '0181e48d-fe1a-4b64-9323-a0210313d65e', '<p>MEET GFP</p>', '<p>This is a subhead.</p>', NULL, NULL, NULL),
(11, 40, 1, '2019-12-01 00:09:15', '2019-12-01 00:09:15', '39c10985-8673-432f-a2b8-eb89e60ac46c', '<p>NIGHT OF A THOUSAND GENDERS</p>', '<p>This is a subhead.</p>', NULL, NULL, NULL),
(12, 41, 1, '2019-12-01 00:09:15', '2019-12-01 00:09:15', 'a103d4cd-45ec-4200-9261-5ba905c8bb47', NULL, NULL, '<p>Testing Video Header</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>', '<pre>&lt;!-- Your embedded video player code --&gt; &lt;div class=\"fb-video\" data-href=\"https://www.facebook.com/facebook/videos/10153231379946729/\" data-width=\"500\" data-show-text=\"false\"&gt; &lt;div class=\"fb-xfbml-parse-ignore\"&gt; &lt;blockquote cite=\"https://www.facebook.com/facebook/videos/10153231379946729/\"&gt; &lt;a href=\"https://www.facebook.com/facebook/videos/10153231379946729/\"&gt;How to Share With Just Friends&lt;/a&gt; &lt;p&gt;How to share with just friends.&lt;/p&gt; Posted by &lt;a href=\"https://www.facebook.com/facebook/\"&gt;Facebook&lt;/a&gt; on Friday, December 5, 2014 &lt;/blockquote&gt; &lt;/div&gt; &lt;/div&gt;</pre>'),
(13, 43, 1, '2019-12-01 00:13:23', '2019-12-01 00:13:23', '31f4a3d0-575b-49fe-8caa-fa3e1666a39f', '<p>MEET GFP</p>', '<p>This is a subhead.</p>', NULL, NULL, NULL),
(14, 44, 1, '2019-12-01 00:13:23', '2019-12-01 00:13:23', 'b89bec99-cbc8-4685-a7fe-cd6769b143e1', '<p>NIGHT OF A THOUSAND GENDERS</p>', '<p>This is a subhead.</p>', NULL, NULL, NULL),
(15, 45, 1, '2019-12-01 00:13:23', '2019-12-01 00:13:23', '41a57029-814a-4dda-a8c8-b019b63b4c34', NULL, NULL, '<p>Testing Video Header</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>', '<!-- Your embedded video player code -->   <div class=\"fb-video\" data-href=\"https://www.facebook.com/facebook/videos/10153231379946729/\" data-width=\"500\" data-show-text=\"false\">     <div class=\"fb-xfbml-parse-ignore\">       <blockquote cite=\"https://www.facebook.com/facebook/videos/10153231379946729/\">         <a href=\"https://www.facebook.com/facebook/videos/10153231379946729/\">How to Share With Just Friends</a>         <p>How to share with just friends.</p>         Posted by <a href=\"https://www.facebook.com/facebook/\">Facebook</a> on Friday, December 5, 2014       </blockquote>     </div>   </div>'),
(16, 47, 1, '2019-12-01 00:14:59', '2019-12-01 00:14:59', '10581040-16e0-4976-b056-5b36c750ee53', '<p>MEET GFP</p>', '<p>This is a subhead.</p>', NULL, NULL, NULL),
(17, 48, 1, '2019-12-01 00:14:59', '2019-12-01 00:14:59', '16cfa263-23e3-4f1a-b883-81b836c95d86', '<p>NIGHT OF A THOUSAND GENDERS</p>', '<p>This is a subhead.</p>', NULL, NULL, NULL),
(18, 49, 1, '2019-12-01 00:14:59', '2019-12-01 00:14:59', 'c2f6a3de-43c3-4f12-a043-e934d9420bd3', NULL, NULL, '<p>Testing Video Header</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>', '10153231379946729'),
(19, 62, 1, '2019-12-01 19:11:22', '2019-12-01 19:11:22', '7be93f6d-4c37-4aad-be0e-ced533b6d437', '<p>MEET GFP</p>', '<p>This is a subhead.</p>', NULL, NULL, NULL),
(20, 63, 1, '2019-12-01 19:11:22', '2019-12-01 19:11:22', '2524fa0b-4ca9-463e-91a7-a9749529819b', '<p>NIGHT OF A THOUSAND GENDERS</p>', '<p>This is a subhead.</p>', NULL, NULL, NULL),
(21, 64, 1, '2019-12-01 19:11:22', '2019-12-01 19:11:22', 'b6547309-6490-4fee-8d4b-7517d2fc1235', NULL, NULL, '<p>Testing Video Header</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>', '1584597334903887');

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
  `field_entryTextBlock_textField` text,
  `field_entryVideoEmbed_videoEmbedCode` text,
  `field_entryVideoEmbed_videoCaption` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `craft_matrixcontent_entryfields`
--

INSERT INTO `craft_matrixcontent_entryfields` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_entryTextBlock_textField`, `field_entryVideoEmbed_videoEmbedCode`, `field_entryVideoEmbed_videoCaption`) VALUES
(1, 53, 1, '2019-12-01 00:48:13', '2019-12-01 00:52:48', '29c026bd-6da6-4190-a43b-2412a8272a32', '<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p><p><em>I’m a proud member of the LGBTQ community, but I know that we need to do more to make sure the trans community is protected, accepted, and respected. Violence against transgender people, particularly trans women of color, is alarmingly high. I’m grateful that programs like the Gender &amp; Family Project are providing support to transgender individuals and their families.</em></p>', NULL, NULL),
(2, 55, 1, '2019-12-01 00:48:14', '2019-12-01 00:48:14', 'fdf66a0a-7f3d-4b25-a020-f89890828ce2', '<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p><p><em>I’m a proud member of the LGBTQ community, but I know that we need to do more to make sure the trans community is protected, accepted, and respected. Violence against transgender people, particularly trans women of color, is alarmingly high. I’m grateful that programs like the Gender &amp; Family Project are providing support to transgender individuals and their families.</em></p>', NULL, NULL),
(3, 57, 1, '2019-12-01 00:52:47', '2019-12-01 00:52:47', 'd31eee62-f787-4ff1-960d-96a745b03bcc', '<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p><p><em>I’m a proud member of the LGBTQ community, but I know that we need to do more to make sure the trans community is protected, accepted, and respected. Violence against transgender people, particularly trans women of color, is alarmingly high. I’m grateful that programs like the Gender &amp; Family Project are providing support to transgender individuals and their families.</em></p>', NULL, NULL),
(4, 59, 1, '2019-12-01 00:52:48', '2019-12-01 00:52:48', 'ae0d1858-d9eb-4bce-804a-b109e8519b8d', '<p>GFP provides comprehensive multidisciplinary services for gender expansive children, transgender adolescents, their families and communities. Please find below a list of our services:</p><p>• 	Support groups for caregivers, grandparents, siblings and family members<br />	• 	Play group for children and tweens 5 to 14 years old<br />	• 	Support group for adolescents 14 to 18 years old<br />	• 	Spanish-speaking caregiver support group<br />	• 	Family therapy and parental coaching<br />	• 	Affirmative psychological and gender evaluation<br />	• 	Training and education for educators, mental health and health providers<br />	• 	Corporate training and gender literacy education for groups and organizations</p><p><em>I’m a proud member of the LGBTQ community, but I know that we need to do more to make sure the trans community is protected, accepted, and respected. Violence against transgender people, particularly trans women of color, is alarmingly high. I’m grateful that programs like the Gender &amp; Family Project are providing support to transgender individuals and their families.</em></p>', NULL, NULL);

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
(1, 'redactor', '2.4.0', '2.3.0', 'unknown', NULL, '2019-11-23 17:26:10', '2019-11-23 17:26:10', '2019-11-30 23:52:44', '990171d0-3761-4133-af78-8842df56648a'),
(2, 'imager', 'v2.3.0', '2.0.0', 'unknown', NULL, '2019-11-23 20:43:55', '2019-11-23 20:43:55', '2019-11-30 23:52:44', 'ce78e4a2-d615-4273-a1f8-2ee185b55230');

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
(41, 2, 4, NULL, 17, 1, '2019-12-01 00:44:38', '2019-12-01 00:44:38', 'af4cdb8a-7563-40c8-a6dc-7b12250b9c39'),
(42, 2, 51, NULL, 17, 1, '2019-12-01 00:44:38', '2019-12-01 00:44:38', 'b3bfe837-7bca-422d-a012-54920b7aa15b'),
(43, 4, 18, NULL, 16, 1, '2019-12-01 19:11:21', '2019-12-01 19:11:21', 'fae2fd38-6362-47a2-9b38-12562129cad4'),
(44, 4, 19, NULL, 17, 1, '2019-12-01 19:11:21', '2019-12-01 19:11:21', 'f89d4418-28fb-4126-b886-f766c585f79f'),
(45, 4, 62, NULL, 16, 1, '2019-12-01 19:11:22', '2019-12-01 19:11:22', '3e2ff7a1-9d2a-4f29-a7d4-3f31565a2a45'),
(46, 4, 63, NULL, 17, 1, '2019-12-01 19:11:22', '2019-12-01 19:11:22', '485f415b-0050-4ae8-99a6-aa5dde538124');

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
('1c2cc474', '@lib/jquery-ui'),
('1f7188f7', '@lib/xregexp'),
('23bf7735', '@app/web/assets/login/dist'),
('2781624b', '@app/web/assets/cp/dist'),
('2c1e906', '@app/web/assets/edituser/dist'),
('3acc45c6', '@app/web/assets/recententries/dist'),
('3b102748', '@lib/vue'),
('3c6a051f', '@vendor/craftcms/redactor/lib/redactor-plugins/fullscreen'),
('3cb92f60', '@app/web/assets/pluginstore/dist'),
('4163e1f9', '@lib/picturefill'),
('430aa8ac', '@bower/jquery/dist'),
('45fa20da', '@app/web/assets/utilities/dist'),
('46c7dd3b', '@lib/jquery-touch-events'),
('47607a8', '@app/web/assets/updateswidget/dist'),
('4cd04e85', '@app/web/assets/tablesettings/dist'),
('4ea2f039', '@lib/jquery.payment'),
('4fc6c1a8', '@lib/d3'),
('52855fd1', '@lib/velocity'),
('5507d6f6', '@app/web/assets/dbbackup/dist'),
('598be007', '@lib/fileupload'),
('5e9a29f5', '@app/web/assets/feed/dist'),
('693d0210', '@lib/fabric'),
('6a4f59d5', '@app/web/assets/dashboard/dist'),
('6bd34bd0', '@app/web/assets/deprecationerrors/dist'),
('6c9a0359', '@lib/element-resize-detector'),
('6d28779b', '@app/web/assets/fields/dist'),
('6f507d9a', '@app/web/assets/matrixsettings/dist'),
('712f9035', '@app/web/assets/routes/dist'),
('75b296a4', '@app/web/assets/updates/dist'),
('7c7bd62e', '@lib/garnishjs'),
('81bab86f', '@vendor/craftcms/redactor/lib/redactor'),
('8427debb', '@app/web/assets/craftsupport/dist'),
('8ab5727a', '@app/web/assets/updateswidget/dist'),
('91b2fd25', '@lib/xregexp'),
('92efb1a6', '@lib/jquery-ui'),
('9ae02045', '@app/web/assets/updater/dist'),
('9bdeb9af', '@lib/selectize'),
('9cb73614', '@app/web/assets/installer/dist'),
('9e111e6b', '@app/web/assets/generalsettings/dist'),
('a6476114', '@app/web/assets/plugins/dist'),
('a9421799', '@app/web/assets/cp/dist'),
('ac78aa2c', '@app/web/assets/editsection/dist'),
('ad7c02e7', '@app/web/assets/login/dist'),
('ae4ab69', '@app/web/assets/craftsupport/dist'),
('ae4da550', '@lib/timepicker'),
('b3ffff9', '@vendor/craftcms/redactor/lib/redactor-plugins/video'),
('b40f3014', '@app/web/assets/recententries/dist'),
('c06185eb', '@lib/jquery.payment'),
('c105b47a', '@lib/d3'),
('c42aee07', '@app/web/assets/editentry/dist'),
('c804a8e9', '@lib/jquery-touch-events'),
('ca82a260', '@lib/prismjs'),
('cb08cc33', '@app/web/assets/matrix/dist'),
('cb395508', '@app/web/assets/utilities/dist'),
('cdc9dd7e', '@bower/jquery/dist'),
('cfa0942b', '@lib/picturefill'),
('d0595c27', '@app/web/assets/feed/dist'),
('d2414589', '@app/web/assets/sites/dist'),
('d74895d5', '@lib/fileupload'),
('dc462a03', '@lib/velocity'),
('e259768b', '@lib/element-resize-detector'),
('e3eb0249', '@app/web/assets/fields/dist'),
('e48c2c07', '@app/web/assets/dashboard/dist'),
('e7fe77c2', '@lib/fabric'),
('f2b8a3fc', '@lib/garnishjs'),
('f5e31c86', '@lib'),
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
(29, 2, 1, 9, NULL);

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
(2, 'slug', 0, 1, ' home page '),
(2, 'title', 0, 1, ' home page '),
(4, 'slug', 0, 1, ' about '),
(6, 'title', 0, 1, ' get involved '),
(8, 'slug', 0, 1, ''),
(8, 'field', 1, 1, ' empowering youth their families and communities '),
(9, 'slug', 0, 1, ''),
(10, 'slug', 0, 1, ''),
(9, 'field', 1, 1, ' 936 broadway 2nd floor nyc ny 10010 212 879 4900 x370 gfp ackerman org '),
(10, 'field', 1, 1, ' genderandfamilyproject '),
(11, 'slug', 0, 1, ' 404 page '),
(11, 'title', 0, 1, ' 404 page '),
(11, 'field', 1, 1, ' this page does not exist back to home '),
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
(18, 'field', 4, 1, ' image2 '),
(19, 'slug', 0, 1, ''),
(19, 'field', 4, 1, ' image1 duo '),
(18, 'field', 5, 1, ' meet gfp '),
(19, 'field', 5, 1, ' night of a thousand genders '),
(4, 'title', 0, 1, ' about '),
(6, 'slug', 0, 1, ' get involved '),
(4, 'field', 10, 1, ' gfp provides comprehensive multidisciplinary services for gender expansive children transgender adolescents their families and communities please find below a list of our services support groups for caregivers grandparents siblings and family members play group for children and tweens 5 to 14 years old support group for adolescents 14 to 18 years old spanish speaking caregiver support group family therapy and parental coaching affirmative psychological and gender evaluation training and education for educators mental health and health providers corporate training and gender literacy education for groups and organizationsi m a proud member of the lgbtq community but i know that we need to do more to make sure the trans community is protected accepted and respected violence against transgender people particularly trans women of color is alarmingly high i m grateful that programs like the gender family project are providing support to transgender individuals and their families '),
(6, 'field', 10, 1, ''),
(53, 'slug', 0, 1, ''),
(53, 'field', 11, 1, ' gfp provides comprehensive multidisciplinary services for gender expansive children transgender adolescents their families and communities please find below a list of our services support groups for caregivers grandparents siblings and family members play group for children and tweens 5 to 14 years old support group for adolescents 14 to 18 years old spanish speaking caregiver support group family therapy and parental coaching affirmative psychological and gender evaluation training and education for educators mental health and health providers corporate training and gender literacy education for groups and organizationsi m a proud member of the lgbtq community but i know that we need to do more to make sure the trans community is protected accepted and respected violence against transgender people particularly trans women of color is alarmingly high i m grateful that programs like the gender family project are providing support to transgender individuals and their families '),
(18, 'field', 6, 1, ' this is a subhead '),
(19, 'field', 6, 1, ' this is a subhead '),
(37, 'slug', 0, 1, ''),
(37, 'field', 9, 1, ' 1584597334903887 '),
(37, 'field', 7, 1, ' testing video header '),
(37, 'field', 8, 1, ' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat '),
(2, 'field', 3, 1, ' meet gfp image2 this is a subhead night of a thousand genders image1 duo this is a subhead 1584597334903887 testing video header lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat '),
(4, 'field', 2, 1, ' image1 duo '),
(6, 'field', 2, 1, '');

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
(1, NULL, 'Home Page', 'homePage', 'single', 1, 'all', NULL, '2019-11-23 17:00:31', '2019-11-23 20:21:15', NULL, 'a35211f8-5bcb-4cde-bf30-d5e14d414a74'),
(2, NULL, 'About', 'aboutPage', 'single', 1, 'all', NULL, '2019-11-23 17:07:16', '2019-12-01 00:52:47', NULL, '5175e050-a0d9-4e52-aee8-91944605faea'),
(3, NULL, 'Get Involved', 'getInvolved', 'single', 1, 'all', NULL, '2019-11-23 17:07:59', '2019-12-01 00:52:58', NULL, '8ffd4f78-c15f-4a61-b306-3332bc75f5c4'),
(4, NULL, '404 Page', 'fourOhFourPage', 'single', 1, 'all', NULL, '2019-11-23 18:53:39', '2019-11-23 18:54:05', NULL, 'b94bc776-14fa-47f3-9e27-070ac0ed1e2d');

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
(1, 1, 1, 1, '__home__', '', 1, '2019-11-23 17:00:31', '2019-11-23 20:21:15', 'f09bbfc5-1a13-4c94-a8e3-a279566fa5eb'),
(2, 2, 1, 1, 'about', 'views/_entry', 1, '2019-11-23 17:07:16', '2019-12-01 00:52:47', '19400732-450d-43cf-be91-263df96ec2f9'),
(3, 3, 1, 1, 'get-involved', 'views/_entry', 1, '2019-11-23 17:07:59', '2019-12-01 00:52:58', '4e094b43-1d98-4b7a-970a-9e782f7d64b6'),
(4, 4, 1, 1, '404-page', '404', 1, '2019-11-23 18:53:39', '2019-11-23 18:54:05', '94cf113b-0cdb-479d-8da0-240c89c0d49e');

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
(1, 1, 1, 'Gender Family Project', 'default', 'en-US', 1, '$DEFAULT_SITE_URL', 1, '2019-11-16 18:40:28', '2019-11-16 18:40:28', NULL, '35707b9d-7d83-4c03-a9d7-ac32c06e1ccb');

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
(1, 'admin', NULL, '', '', 'jameslamarre@gmail.com', '$2y$13$YNtkcn14rh3SsIXpAaPHbObxV.JxD5N0742B2HZW3kYozqRpucwcK', 1, 0, 0, 0, '2019-12-03 01:02:12', NULL, NULL, NULL, '2019-11-16 18:48:04', NULL, 1, NULL, NULL, NULL, 0, '2019-11-16 18:54:55', '2019-11-16 18:40:29', '2019-12-03 01:02:12', 'f418cce2-0f57-4beb-8646-42f72f6ff1d0');

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
(1, NULL, 1, 'Images', '', '2019-11-23 17:15:21', '2019-11-23 17:15:21', '09f58538-7d39-4dd2-adc8-1f77e018c545'),
(2, NULL, NULL, 'Temporary source', NULL, '2019-11-23 20:21:32', '2019-11-23 20:21:32', 'debfc4d8-97d4-4b1e-a517-3aa99ecddd1b'),
(3, 2, NULL, 'user_1', 'user_1/', '2019-11-23 20:21:32', '2019-11-23 20:21:32', '9987f0d7-6109-42f6-a305-f93580c35bac');

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
(1, NULL, 'Images', 'images', 'craft\\volumes\\Local', 1, 'assets/images/', '{\"path\":\"assets/images/\"}', 1, '2019-11-23 17:15:21', '2019-11-23 17:15:21', NULL, '38402d41-2ff3-4e10-8f75-6cbc1edb2981');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `craft_craftidtokens`
--
ALTER TABLE `craft_craftidtokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_deprecationerrors`
--
ALTER TABLE `craft_deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `craft_drafts`
--
ALTER TABLE `craft_drafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_elementindexsettings`
--
ALTER TABLE `craft_elementindexsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_elements`
--
ALTER TABLE `craft_elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `craft_elements_sites`
--
ALTER TABLE `craft_elements_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `craft_entrytypes`
--
ALTER TABLE `craft_entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `craft_fieldgroups`
--
ALTER TABLE `craft_fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `craft_fieldlayoutfields`
--
ALTER TABLE `craft_fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `craft_fieldlayouts`
--
ALTER TABLE `craft_fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `craft_fieldlayouttabs`
--
ALTER TABLE `craft_fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `craft_fields`
--
ALTER TABLE `craft_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `craft_globalsets`
--
ALTER TABLE `craft_globalsets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `craft_matrixcontent_contentlockup`
--
ALTER TABLE `craft_matrixcontent_contentlockup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `craft_matrixcontent_entryfields`
--
ALTER TABLE `craft_matrixcontent_entryfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `craft_migrations`
--
ALTER TABLE `craft_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `craft_plugins`
--
ALTER TABLE `craft_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `craft_queue`
--
ALTER TABLE `craft_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_relations`
--
ALTER TABLE `craft_relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `craft_revisions`
--
ALTER TABLE `craft_revisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `craft_sections`
--
ALTER TABLE `craft_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `craft_sections_sites`
--
ALTER TABLE `craft_sections_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `craft_sessions`
--
ALTER TABLE `craft_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `craft_structures`
--
ALTER TABLE `craft_structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `craft_volumes`
--
ALTER TABLE `craft_volumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
