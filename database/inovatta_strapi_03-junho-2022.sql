-- MySQL dump 10.13  Distrib 5.7.37, for Linux (x86_64)
--
-- Host: localhost    Database: inovatta_cms_1
-- ------------------------------------------------------
-- Server version	5.7.37

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
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `conditions` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'plugin::content-manager.explorer.create','api::global.global','{\"fields\": [\"metadata.metaTitle\", \"metadata.metaDescription\", \"metadata.shareImage\", \"metadata.twitterCardType\", 
\"metadata.twitterUsername\", \"metaTitleSuffix\", \"favicon\", \"notificationBanner.text\", \"notificationBanner.type\", \"navbar.links.url\", \"navbar.links.newTab\", \"navbar.links.text\", \"navbar.button.url\", \"navbar.button.newTab\", 
\"navbar.button.text\", \"navbar.button.type\", \"navbar.logo\", \"footer.logo\", \"footer.columns.title\", \"footer.columns.links.url\", \"footer.columns.links.newTab\", \"footer.columns.links.text\", 
\"footer.smallText\"]}','[]','2022-03-29 10:39:55.111000','2022-03-29 10:39:55.111000',NULL,NULL),(2,'plugin::content-manager.explorer.create','api::lead-form-submission.lead-form-submission','{\"fields\": [\"email\", \"status\", 
\"location\"]}','[]','2022-03-29 10:39:55.117000','2022-03-29 10:39:55.117000',NULL,NULL),(3,'plugin::content-manager.explorer.create','api::page.page','{\"fields\": [\"shortName\", \"metadata.metaTitle\", \"metadata.metaDescription\", 
\"metadata.shareImage\", \"metadata.twitterCardType\", \"metadata.twitterUsername\", \"contentSections\", \"slug\"]}','[]','2022-03-29 10:39:55.120000','2022-03-29 
10:39:55.120000',NULL,NULL),(4,'plugin::content-manager.explorer.read','api::global.global','{\"fields\": [\"metadata.metaTitle\", \"metadata.metaDescription\", \"metadata.shareImage\", \"metadata.twitterCardType\", 
\"metadata.twitterUsername\", \"metaTitleSuffix\", \"favicon\", \"notificationBanner.text\", \"notificationBanner.type\", \"navbar.links.url\", \"navbar.links.newTab\", \"navbar.links.text\", \"navbar.button.url\", \"navbar.button.newTab\", 
\"navbar.button.text\", \"navbar.button.type\", \"navbar.logo\", \"footer.logo\", \"footer.columns.title\", \"footer.columns.links.url\", \"footer.columns.links.newTab\", \"footer.columns.links.text\", 
\"footer.smallText\"]}','[]','2022-03-29 10:39:55.122000','2022-03-29 10:39:55.122000',NULL,NULL),(5,'plugin::content-manager.explorer.read','api::lead-form-submission.lead-form-submission','{\"fields\": [\"email\", \"status\", 
\"location\"]}','[]','2022-03-29 10:39:55.124000','2022-03-29 10:39:55.124000',NULL,NULL),(6,'plugin::content-manager.explorer.read','api::page.page','{\"fields\": [\"shortName\", \"metadata.metaTitle\", \"metadata.metaDescription\", 
\"metadata.shareImage\", \"metadata.twitterCardType\", \"metadata.twitterUsername\", \"contentSections\", \"slug\"]}','[]','2022-03-29 10:39:55.125000','2022-03-29 
10:39:55.125000',NULL,NULL),(7,'plugin::content-manager.explorer.update','api::global.global','{\"fields\": [\"metadata.metaTitle\", \"metadata.metaDescription\", \"metadata.shareImage\", \"metadata.twitterCardType\", 
\"metadata.twitterUsername\", \"metaTitleSuffix\", \"favicon\", \"notificationBanner.text\", \"notificationBanner.type\", \"navbar.links.url\", \"navbar.links.newTab\", \"navbar.links.text\", \"navbar.button.url\", \"navbar.button.newTab\", 
\"navbar.button.text\", \"navbar.button.type\", \"navbar.logo\", \"footer.logo\", \"footer.columns.title\", \"footer.columns.links.url\", \"footer.columns.links.newTab\", \"footer.columns.links.text\", 
\"footer.smallText\"]}','[]','2022-03-29 10:39:55.127000','2022-03-29 10:39:55.127000',NULL,NULL),(8,'plugin::content-manager.explorer.update','api::lead-form-submission.lead-form-submission','{\"fields\": [\"email\", \"status\", 
\"location\"]}','[]','2022-03-29 10:39:55.128000','2022-03-29 10:39:55.128000',NULL,NULL),(9,'plugin::content-manager.explorer.update','api::page.page','{\"fields\": [\"shortName\", \"metadata.metaTitle\", \"metadata.metaDescription\", 
\"metadata.shareImage\", \"metadata.twitterCardType\", \"metadata.twitterUsername\", \"contentSections\", \"slug\"]}','[]','2022-03-29 10:39:55.130000','2022-03-29 
10:39:55.130000',NULL,NULL),(11,'plugin::content-manager.explorer.delete','api::lead-form-submission.lead-form-submission','{}','[]','2022-03-29 10:39:55.133000','2022-03-29 
10:39:55.133000',NULL,NULL),(14,'plugin::upload.read',NULL,'{}','[]','2022-03-29 10:39:55.146000','2022-03-29 10:39:55.146000',NULL,NULL),(15,'plugin::upload.assets.create',NULL,'{}','[]','2022-03-29 10:39:55.162000','2022-03-29 
10:39:55.162000',NULL,NULL),(16,'plugin::upload.assets.update',NULL,'{}','[]','2022-03-29 10:39:55.164000','2022-03-29 10:39:55.164000',NULL,NULL),(17,'plugin::upload.assets.download',NULL,'{}','[]','2022-03-29 10:39:55.166000','2022-03-29 
10:39:55.166000',NULL,NULL),(18,'plugin::upload.assets.copy-link',NULL,'{}','[]','2022-03-29 10:39:55.168000','2022-03-29 10:39:55.168000',NULL,NULL),(19,'plugin::content-manager.explorer.create','api::global.global','{\"fields\": 
[\"metadata.metaTitle\", \"metadata.metaDescription\", \"metadata.shareImage\", \"metadata.twitterCardType\", \"metadata.twitterUsername\", \"metaTitleSuffix\", \"favicon\", \"notificationBanner.text\", \"notificationBanner.type\", 
\"navbar.links.url\", \"navbar.links.newTab\", \"navbar.links.text\", \"navbar.button.url\", \"navbar.button.newTab\", \"navbar.button.text\", \"navbar.button.type\", \"navbar.logo\", \"footer.logo\", \"footer.columns.title\", 
\"footer.columns.links.url\", \"footer.columns.links.newTab\", \"footer.columns.links.text\", \"footer.smallText\"]}','[\"admin::is-creator\"]','2022-03-29 10:39:55.171000','2022-03-29 
10:39:55.171000',NULL,NULL),(20,'plugin::content-manager.explorer.create','api::lead-form-submission.lead-form-submission','{\"fields\": [\"email\", \"status\", \"location\"]}','[\"admin::is-creator\"]','2022-03-29 
10:39:55.181000','2022-03-29 10:39:55.181000',NULL,NULL),(21,'plugin::content-manager.explorer.create','api::page.page','{\"fields\": [\"shortName\", \"metadata.metaTitle\", \"metadata.metaDescription\", \"metadata.shareImage\", 
\"metadata.twitterCardType\", \"metadata.twitterUsername\", \"contentSections\", \"slug\"]}','[\"admin::is-creator\"]','2022-03-29 10:39:55.183000','2022-03-29 
10:39:55.183000',NULL,NULL),(22,'plugin::content-manager.explorer.read','api::global.global','{\"fields\": [\"metadata.metaTitle\", \"metadata.metaDescription\", \"metadata.shareImage\", \"metadata.twitterCardType\", 
\"metadata.twitterUsername\", \"metaTitleSuffix\", \"favicon\", \"notificationBanner.text\", \"notificationBanner.type\", \"navbar.links.url\", \"navbar.links.newTab\", \"navbar.links.text\", \"navbar.button.url\", \"navbar.button.newTab\", 
\"navbar.button.text\", \"navbar.button.type\", \"navbar.logo\", \"footer.logo\", \"footer.columns.title\", \"footer.columns.links.url\", \"footer.columns.links.newTab\", \"footer.columns.links.text\", 
\"footer.smallText\"]}','[\"admin::is-creator\"]','2022-03-29 10:39:55.185000','2022-03-29 10:39:55.185000',NULL,NULL),(23,'plugin::content-manager.explorer.read','api::lead-form-submission.lead-form-submission','{\"fields\": [\"email\", 
\"status\", \"location\"]}','[\"admin::is-creator\"]','2022-03-29 10:39:55.187000','2022-03-29 10:39:55.187000',NULL,NULL),(24,'plugin::content-manager.explorer.read','api::page.page','{\"fields\": [\"shortName\", \"metadata.metaTitle\", 
\"metadata.metaDescription\", \"metadata.shareImage\", \"metadata.twitterCardType\", \"metadata.twitterUsername\", \"contentSections\", \"slug\"]}','[\"admin::is-creator\"]','2022-03-29 10:39:55.192000','2022-03-29 
10:39:55.192000',NULL,NULL),(25,'plugin::content-manager.explorer.update','api::global.global','{\"fields\": [\"metadata.metaTitle\", \"metadata.metaDescription\", \"metadata.shareImage\", \"metadata.twitterCardType\", 
\"metadata.twitterUsername\", \"metaTitleSuffix\", \"favicon\", \"notificationBanner.text\", \"notificationBanner.type\", \"navbar.links.url\", \"navbar.links.newTab\", \"navbar.links.text\", \"navbar.button.url\", \"navbar.button.newTab\", 
\"navbar.button.text\", \"navbar.button.type\", \"navbar.logo\", \"footer.logo\", \"footer.columns.title\", \"footer.columns.links.url\", \"footer.columns.links.newTab\", \"footer.columns.links.text\", 
\"footer.smallText\"]}','[\"admin::is-creator\"]','2022-03-29 10:39:55.196000','2022-03-29 10:39:55.196000',NULL,NULL),(26,'plugin::content-manager.explorer.update','api::lead-form-submission.lead-form-submission','{\"fields\": [\"email\", 
\"status\", \"location\"]}','[\"admin::is-creator\"]','2022-03-29 10:39:55.198000','2022-03-29 10:39:55.198000',NULL,NULL),(27,'plugin::content-manager.explorer.update','api::page.page','{\"fields\": [\"shortName\", \"metadata.metaTitle\", 
\"metadata.metaDescription\", \"metadata.shareImage\", \"metadata.twitterCardType\", \"metadata.twitterUsername\", \"contentSections\", \"slug\"]}','[\"admin::is-creator\"]','2022-03-29 10:39:55.205000','2022-03-29 
10:39:55.205000',NULL,NULL),(29,'plugin::content-manager.explorer.delete','api::lead-form-submission.lead-form-submission','{}','[\"admin::is-creator\"]','2022-03-29 10:39:55.211000','2022-03-29 
10:39:55.211000',NULL,NULL),(31,'plugin::upload.read',NULL,'{}','[\"admin::is-creator\"]','2022-03-29 10:39:55.214000','2022-03-29 10:39:55.214000',NULL,NULL),(32,'plugin::upload.assets.create',NULL,'{}','[]','2022-03-29 
10:39:55.219000','2022-03-29 10:39:55.219000',NULL,NULL),(33,'plugin::upload.assets.update',NULL,'{}','[\"admin::is-creator\"]','2022-03-29 10:39:55.226000','2022-03-29 
10:39:55.226000',NULL,NULL),(34,'plugin::upload.assets.download',NULL,'{}','[]','2022-03-29 10:39:55.234000','2022-03-29 10:39:55.234000',NULL,NULL),(35,'plugin::upload.assets.copy-link',NULL,'{}','[]','2022-03-29 
10:39:55.236000','2022-03-29 10:39:55.236000',NULL,NULL),(36,'plugin::content-manager.explorer.create','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", 
\"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}','[]','2022-03-29 10:39:55.271000','2022-03-29 10:39:55.271000',NULL,NULL),(37,'plugin::content-manager.explorer.create','api::global.global','{\"fields\": 
[\"metadata.metaTitle\", \"metadata.metaDescription\", \"metadata.shareImage\", \"metadata.twitterCardType\", \"metadata.twitterUsername\", \"metaTitleSuffix\", \"favicon\", \"notificationBanner.text\", \"notificationBanner.type\", 
\"navbar.links.url\", \"navbar.links.newTab\", \"navbar.links.text\", \"navbar.button.url\", \"navbar.button.newTab\", \"navbar.button.text\", \"navbar.button.type\", \"navbar.logo\", \"footer.logo\", \"footer.columns.title\", 
\"footer.columns.links.url\", \"footer.columns.links.newTab\", \"footer.columns.links.text\", \"footer.smallText\"], \"locales\": [\"en\", \"fr\", \"pt-BR\"]}','[]','2022-03-29 11:40:34.146000','2022-03-29 
11:40:34.146000',NULL,NULL),(40,'plugin::content-manager.explorer.read','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", 
\"blocked\", \"role\"]}','[]','2022-03-29 10:39:55.278000','2022-03-29 10:39:55.278000',NULL,NULL),(41,'plugin::content-manager.explorer.read','api::global.global','{\"fields\": [\"metadata.metaTitle\", \"metadata.metaDescription\", 
\"metadata.shareImage\", \"metadata.twitterCardType\", \"metadata.twitterUsername\", \"metaTitleSuffix\", \"favicon\", \"notificationBanner.text\", \"notificationBanner.type\", \"navbar.links.url\", \"navbar.links.newTab\", 
\"navbar.links.text\", \"navbar.button.url\", \"navbar.button.newTab\", \"navbar.button.text\", \"navbar.button.type\", \"navbar.logo\", \"footer.logo\", \"footer.columns.title\", \"footer.columns.links.url\", 
\"footer.columns.links.newTab\", \"footer.columns.links.text\", \"footer.smallText\"], \"locales\": [\"en\", \"fr\", \"pt-BR\"]}','[]','2022-03-29 11:40:34.154000','2022-03-29 
11:40:34.154000',NULL,NULL),(44,'plugin::content-manager.explorer.update','plugin::users-permissions.user','{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", 
\"blocked\", \"role\"]}','[]','2022-03-29 10:39:55.288000','2022-03-29 10:39:55.288000',NULL,NULL),(45,'plugin::content-manager.explorer.update','api::global.global','{\"fields\": [\"metadata.metaTitle\", \"metadata.metaDescription\", 
\"metadata.shareImage\", \"metadata.twitterCardType\", \"metadata.twitterUsername\", \"metaTitleSuffix\", \"favicon\", \"notificationBanner.text\", \"notificationBanner.type\", \"navbar.links.url\", \"navbar.links.newTab\", 
\"navbar.links.text\", \"navbar.button.url\", \"navbar.button.newTab\", \"navbar.button.text\", \"navbar.button.type\", \"navbar.logo\", \"footer.logo\", \"footer.columns.title\", \"footer.columns.links.url\", 
\"footer.columns.links.newTab\", \"footer.columns.links.text\", \"footer.smallText\"], \"locales\": [\"en\", \"fr\", \"pt-BR\"]}','[]','2022-03-29 11:40:34.161000','2022-03-29 
11:40:34.161000',NULL,NULL),(48,'plugin::content-manager.explorer.delete','plugin::users-permissions.user','{}','[]','2022-03-29 10:39:55.301000','2022-03-29 
10:39:55.301000',NULL,NULL),(49,'plugin::content-manager.explorer.delete','api::global.global','{\"locales\": [\"en\", \"fr\", \"pt-BR\"]}','[]','2022-03-29 11:40:34.168000','2022-03-29 
11:40:34.168000',NULL,NULL),(50,'plugin::content-manager.explorer.delete','api::lead-form-submission.lead-form-submission','{}','[]','2022-03-29 10:39:55.308000','2022-03-29 
10:39:55.308000',NULL,NULL),(51,'plugin::content-manager.explorer.delete','api::page.page','{\"locales\": [\"en\", \"fr\", \"pt-BR\"]}','[]','2022-03-29 11:40:34.171000','2022-03-29 
11:40:34.171000',NULL,NULL),(52,'plugin::content-manager.explorer.publish','api::page.page','{\"locales\": [\"en\", \"fr\", \"pt-BR\"]}','[]','2022-03-29 11:40:34.174000','2022-03-29 
11:40:34.174000',NULL,NULL),(53,'plugin::content-manager.single-types.configure-view',NULL,'{}','[]','2022-03-29 10:39:55.317000','2022-03-29 
10:39:55.317000',NULL,NULL),(54,'plugin::content-manager.collection-types.configure-view',NULL,'{}','[]','2022-03-29 10:39:55.320000','2022-03-29 
10:39:55.320000',NULL,NULL),(55,'plugin::content-manager.components.configure-layout',NULL,'{}','[]','2022-03-29 10:39:55.322000','2022-03-29 10:39:55.322000',NULL,NULL),(56,'plugin::content-type-builder.read',NULL,'{}','[]','2022-03-29 
10:39:55.324000','2022-03-29 10:39:55.324000',NULL,NULL),(57,'plugin::email.settings.read',NULL,'{}','[]','2022-03-29 10:39:55.327000','2022-03-29 10:39:55.327000',NULL,NULL),(58,'plugin::upload.read',NULL,'{}','[]','2022-03-29 
10:39:55.329000','2022-03-29 10:39:55.329000',NULL,NULL),(59,'plugin::upload.assets.create',NULL,'{}','[]','2022-03-29 10:39:55.333000','2022-03-29 10:39:55.333000',NULL,NULL),(60,'plugin::upload.assets.update',NULL,'{}','[]','2022-03-29 
10:39:55.337000','2022-03-29 10:39:55.337000',NULL,NULL),(61,'plugin::upload.assets.download',NULL,'{}','[]','2022-03-29 10:39:55.339000','2022-03-29 
10:39:55.339000',NULL,NULL),(62,'plugin::upload.assets.copy-link',NULL,'{}','[]','2022-03-29 10:39:55.341000','2022-03-29 10:39:55.341000',NULL,NULL),(63,'plugin::upload.settings.read',NULL,'{}','[]','2022-03-29 10:39:55.345000','2022-03-29 
10:39:55.345000',NULL,NULL),(64,'plugin::users-permissions.roles.create',NULL,'{}','[]','2022-03-29 10:39:55.351000','2022-03-29 10:39:55.351000',NULL,NULL),(65,'plugin::users-permissions.roles.read',NULL,'{}','[]','2022-03-29 
10:39:55.358000','2022-03-29 10:39:55.358000',NULL,NULL),(66,'plugin::users-permissions.roles.update',NULL,'{}','[]','2022-03-29 10:39:55.361000','2022-03-29 
10:39:55.361000',NULL,NULL),(67,'plugin::users-permissions.roles.delete',NULL,'{}','[]','2022-03-29 10:39:55.364000','2022-03-29 10:39:55.364000',NULL,NULL),(68,'plugin::users-permissions.providers.read',NULL,'{}','[]','2022-03-29 
10:39:55.369000','2022-03-29 10:39:55.369000',NULL,NULL),(69,'plugin::users-permissions.providers.update',NULL,'{}','[]','2022-03-29 10:39:55.372000','2022-03-29 
10:39:55.372000',NULL,NULL),(70,'plugin::users-permissions.email-templates.read',NULL,'{}','[]','2022-03-29 10:39:55.374000','2022-03-29 
10:39:55.374000',NULL,NULL),(71,'plugin::users-permissions.email-templates.update',NULL,'{}','[]','2022-03-29 10:39:55.376000','2022-03-29 
10:39:55.376000',NULL,NULL),(72,'plugin::users-permissions.advanced-settings.read',NULL,'{}','[]','2022-03-29 10:39:55.379000','2022-03-29 
10:39:55.379000',NULL,NULL),(73,'plugin::users-permissions.advanced-settings.update',NULL,'{}','[]','2022-03-29 10:39:55.384000','2022-03-29 10:39:55.384000',NULL,NULL),(74,'plugin::i18n.locale.create',NULL,'{}','[]','2022-03-29 
10:39:55.386000','2022-03-29 10:39:55.386000',NULL,NULL),(75,'plugin::i18n.locale.read',NULL,'{}','[]','2022-03-29 10:39:55.388000','2022-03-29 10:39:55.388000',NULL,NULL),(76,'plugin::i18n.locale.update',NULL,'{}','[]','2022-03-29 
10:39:55.390000','2022-03-29 10:39:55.390000',NULL,NULL),(77,'plugin::i18n.locale.delete',NULL,'{}','[]','2022-03-29 10:39:55.396000','2022-03-29 10:39:55.396000',NULL,NULL),(78,'admin::marketplace.read',NULL,'{}','[]','2022-03-29 
10:39:55.401000','2022-03-29 10:39:55.401000',NULL,NULL),(79,'admin::marketplace.plugins.install',NULL,'{}','[]','2022-03-29 10:39:55.405000','2022-03-29 
10:39:55.405000',NULL,NULL),(80,'admin::marketplace.plugins.uninstall',NULL,'{}','[]','2022-03-29 10:39:55.407000','2022-03-29 10:39:55.407000',NULL,NULL),(81,'admin::webhooks.create',NULL,'{}','[]','2022-03-29 10:39:55.408000','2022-03-29 
10:39:55.408000',NULL,NULL),(82,'admin::webhooks.read',NULL,'{}','[]','2022-03-29 10:39:55.413000','2022-03-29 10:39:55.413000',NULL,NULL),(83,'admin::webhooks.update',NULL,'{}','[]','2022-03-29 10:39:55.415000','2022-03-29 
10:39:55.415000',NULL,NULL),(84,'admin::webhooks.delete',NULL,'{}','[]','2022-03-29 10:39:55.418000','2022-03-29 10:39:55.418000',NULL,NULL),(85,'admin::users.create',NULL,'{}','[]','2022-03-29 10:39:55.421000','2022-03-29 
10:39:55.421000',NULL,NULL),(86,'admin::users.read',NULL,'{}','[]','2022-03-29 10:39:55.423000','2022-03-29 10:39:55.423000',NULL,NULL),(87,'admin::users.update',NULL,'{}','[]','2022-03-29 10:39:55.425000','2022-03-29 
10:39:55.425000',NULL,NULL),(88,'admin::users.delete',NULL,'{}','[]','2022-03-29 10:39:55.426000','2022-03-29 10:39:55.426000',NULL,NULL),(89,'admin::roles.create',NULL,'{}','[]','2022-03-29 10:39:55.428000','2022-03-29 
10:39:55.428000',NULL,NULL),(90,'admin::roles.read',NULL,'{}','[]','2022-03-29 10:39:55.430000','2022-03-29 10:39:55.430000',NULL,NULL),(91,'admin::roles.update',NULL,'{}','[]','2022-03-29 10:39:55.432000','2022-03-29 
10:39:55.432000',NULL,NULL),(92,'admin::roles.delete',NULL,'{}','[]','2022-03-29 10:39:55.434000','2022-03-29 10:39:55.434000',NULL,NULL),(93,'admin::api-tokens.create',NULL,'{}','[]','2022-03-29 10:39:55.435000','2022-03-29 
10:39:55.435000',NULL,NULL),(94,'admin::api-tokens.read',NULL,'{}','[]','2022-03-29 10:39:55.437000','2022-03-29 10:39:55.437000',NULL,NULL),(95,'admin::api-tokens.update',NULL,'{}','[]','2022-03-29 10:39:55.438000','2022-03-29 
10:39:55.438000',NULL,NULL),(96,'admin::api-tokens.delete',NULL,'{}','[]','2022-03-29 10:39:55.441000','2022-03-29 10:39:55.441000',NULL,NULL),(97,'plugin::comments.read',NULL,'{}','[]','2022-03-29 11:37:17.360000','2022-03-29 
11:37:17.360000',NULL,NULL),(98,'plugin::comments.moderate',NULL,'{}','[]','2022-03-29 11:37:17.363000','2022-03-29 11:37:17.363000',NULL,NULL),(99,'plugin::comments.reports.read',NULL,'{}','[]','2022-03-29 11:37:17.364000','2022-03-29 
11:37:17.364000',NULL,NULL),(100,'plugin::comments.reports.action',NULL,'{}','[]','2022-03-29 11:37:17.366000','2022-03-29 11:37:17.366000',NULL,NULL),(101,'plugin::comments.settings.read',NULL,'{}','[]','2022-03-29 
11:37:17.367000','2022-03-29 11:37:17.367000',NULL,NULL),(102,'plugin::comments.settings.change',NULL,'{}','[]','2022-03-29 11:37:17.368000','2022-03-29 
11:37:17.368000',NULL,NULL),(103,'plugin::content-manager.explorer.create','api::lead-form-submission.lead-form-submission','{\"fields\": [\"email\", \"status\", \"location\", \"mensagem\"]}','[]','2022-03-29 22:16:10.718000','2022-03-29 
22:16:10.718000',NULL,NULL),(104,'plugin::content-manager.explorer.read','api::lead-form-submission.lead-form-submission','{\"fields\": [\"email\", \"status\", \"location\", \"mensagem\"]}','[]','2022-03-29 22:16:10.720000','2022-03-29 
22:16:10.720000',NULL,NULL),(105,'plugin::content-manager.explorer.update','api::lead-form-submission.lead-form-submission','{\"fields\": [\"email\", \"status\", \"location\", \"mensagem\"]}','[]','2022-03-29 22:16:10.722000','2022-03-29 
22:16:10.722000',NULL,NULL),(106,'plugin::content-manager.explorer.create','api::blog.blog','{\"fields\": [\"thumbnail\", \"banner\", \"share_thumbnail\", \"title\", \"description\", \"article_create_date\"], \"locales\": [\"en\", \"fr\", 
\"pt-BR\"]}','[]','2022-04-16 23:53:42.548000','2022-04-16 23:53:42.548000',NULL,NULL),(107,'plugin::content-manager.explorer.create','api::dados-geral.dados-geral','{\"fields\": [\"logo\", \"favicon\", \"company_name\", 
\"call_phone_number\", \"whatsapp_phone_number\", \"contact_email\", \"full_address\", \"short_about\", \"google_maps_embed_link\", \"pagina\"], \"locales\": [\"en\", \"fr\", \"pt-BR\"]}','[]','2022-04-16 23:53:42.556000','2022-04-16 
23:53:42.556000',NULL,NULL),(108,'plugin::content-manager.explorer.create','api::servico.servico','{\"fields\": [\"icon\", \"banner\", \"title\", \"description\"]}','[]','2022-04-16 23:53:42.562000','2022-04-16 
23:53:42.562000',NULL,NULL),(109,'plugin::content-manager.explorer.create','api::sobre-nos.sobre-nos','{\"fields\": [\"logo\", \"title\", \"description\"]}','[]','2022-04-16 23:53:42.568000','2022-04-16 
23:53:42.568000',NULL,NULL),(110,'plugin::content-manager.explorer.create','api::tipo-de-servico.tipo-de-servico','{\"fields\": [\"title\"]}','[]','2022-04-16 23:53:42.573000','2022-04-16 
23:53:42.573000',NULL,NULL),(111,'plugin::content-manager.explorer.read','api::blog.blog','{\"fields\": [\"thumbnail\", \"banner\", \"share_thumbnail\", \"title\", \"description\", \"article_create_date\"], \"locales\": [\"en\", \"fr\", 
\"pt-BR\"]}','[]','2022-04-16 23:53:42.578000','2022-04-16 23:53:42.578000',NULL,NULL),(112,'plugin::content-manager.explorer.read','api::dados-geral.dados-geral','{\"fields\": [\"logo\", \"favicon\", \"company_name\", 
\"call_phone_number\", \"whatsapp_phone_number\", \"contact_email\", \"full_address\", \"short_about\", \"google_maps_embed_link\", \"pagina\"], \"locales\": [\"en\", \"fr\", \"pt-BR\"]}','[]','2022-04-16 23:53:42.583000','2022-04-16 
23:53:42.583000',NULL,NULL),(113,'plugin::content-manager.explorer.read','api::servico.servico','{\"fields\": [\"icon\", \"banner\", \"title\", \"description\"]}','[]','2022-04-16 23:53:42.588000','2022-04-16 
23:53:42.588000',NULL,NULL),(114,'plugin::content-manager.explorer.read','api::sobre-nos.sobre-nos','{\"fields\": [\"logo\", \"title\", \"description\"]}','[]','2022-04-16 23:53:42.592000','2022-04-16 
23:53:42.592000',NULL,NULL),(115,'plugin::content-manager.explorer.read','api::tipo-de-servico.tipo-de-servico','{\"fields\": [\"title\"]}','[]','2022-04-16 23:53:42.597000','2022-04-16 
23:53:42.597000',NULL,NULL),(116,'plugin::content-manager.explorer.update','api::blog.blog','{\"fields\": [\"thumbnail\", \"banner\", \"share_thumbnail\", \"title\", \"description\", \"article_create_date\"], \"locales\": [\"en\", \"fr\", 
\"pt-BR\"]}','[]','2022-04-16 23:53:42.601000','2022-04-16 23:53:42.601000',NULL,NULL),(117,'plugin::content-manager.explorer.update','api::dados-geral.dados-geral','{\"fields\": [\"logo\", \"favicon\", \"company_name\", 
\"call_phone_number\", \"whatsapp_phone_number\", \"contact_email\", \"full_address\", \"short_about\", \"google_maps_embed_link\", \"pagina\"], \"locales\": [\"en\", \"fr\", \"pt-BR\"]}','[]','2022-04-16 23:53:42.606000','2022-04-16 
23:53:42.606000',NULL,NULL),(118,'plugin::content-manager.explorer.update','api::servico.servico','{\"fields\": [\"icon\", \"banner\", \"title\", \"description\"]}','[]','2022-04-16 23:53:42.610000','2022-04-16 
23:53:42.610000',NULL,NULL),(119,'plugin::content-manager.explorer.update','api::sobre-nos.sobre-nos','{\"fields\": [\"logo\", \"title\", \"description\"]}','[]','2022-04-16 23:53:42.614000','2022-04-16 
23:53:42.614000',NULL,NULL),(120,'plugin::content-manager.explorer.update','api::tipo-de-servico.tipo-de-servico','{\"fields\": [\"title\"]}','[]','2022-04-16 23:53:42.618000','2022-04-16 
23:53:42.618000',NULL,NULL),(121,'plugin::content-manager.explorer.delete','api::blog.blog','{\"locales\": [\"en\", \"fr\", \"pt-BR\"]}','[]','2022-04-16 23:53:42.622000','2022-04-16 
23:53:42.622000',NULL,NULL),(122,'plugin::content-manager.explorer.delete','api::dados-geral.dados-geral','{\"locales\": [\"en\", \"fr\", \"pt-BR\"]}','[]','2022-04-16 23:53:42.626000','2022-04-16 
23:53:42.626000',NULL,NULL),(123,'plugin::content-manager.explorer.delete','api::servico.servico','{}','[]','2022-04-16 23:53:42.630000','2022-04-16 
23:53:42.630000',NULL,NULL),(124,'plugin::content-manager.explorer.delete','api::sobre-nos.sobre-nos','{}','[]','2022-04-16 23:53:42.634000','2022-04-16 
23:53:42.634000',NULL,NULL),(125,'plugin::content-manager.explorer.delete','api::tipo-de-servico.tipo-de-servico','{}','[]','2022-04-16 23:53:42.638000','2022-04-16 
23:53:42.638000',NULL,NULL),(126,'plugin::content-manager.explorer.publish','api::blog.blog','{\"locales\": [\"en\", \"fr\", \"pt-BR\"]}','[]','2022-04-16 23:53:42.641000','2022-04-16 
23:53:42.641000',NULL,NULL),(127,'plugin::content-manager.explorer.publish','api::dados-geral.dados-geral','{\"locales\": [\"en\", \"fr\", \"pt-BR\"]}','[]','2022-04-16 23:53:42.645000','2022-04-16 
23:53:42.645000',NULL,NULL),(128,'plugin::content-manager.explorer.publish','api::servico.servico','{}','[]','2022-04-16 23:53:42.649000','2022-04-16 
23:53:42.649000',NULL,NULL),(129,'plugin::content-manager.explorer.publish','api::sobre-nos.sobre-nos','{}','[]','2022-04-16 23:53:42.653000','2022-04-16 
23:53:42.653000',NULL,NULL),(130,'plugin::content-manager.explorer.publish','api::tipo-de-servico.tipo-de-servico','{}','[]','2022-04-16 23:53:42.656000','2022-04-16 
23:53:42.656000',NULL,NULL),(131,'plugin::content-manager.explorer.create','api::imovel.imovel','{\"fields\": [\"imagens\", \"titulo\"], \"locales\": [\"en\", \"fr\", \"pt-BR\"]}','[]','2022-04-19 20:42:53.162000','2022-04-19 
20:42:53.162000',NULL,NULL),(132,'plugin::content-manager.explorer.read','api::imovel.imovel','{\"fields\": [\"imagens\", \"titulo\"], \"locales\": [\"en\", \"fr\", \"pt-BR\"]}','[]','2022-04-19 20:42:53.176000','2022-04-19 
20:42:53.176000',NULL,NULL),(133,'plugin::content-manager.explorer.update','api::imovel.imovel','{\"fields\": [\"imagens\", \"titulo\"], \"locales\": [\"en\", \"fr\", \"pt-BR\"]}','[]','2022-04-19 20:42:53.182000','2022-04-19 
20:42:53.182000',NULL,NULL),(134,'plugin::content-manager.explorer.delete','api::imovel.imovel','{\"locales\": [\"en\", \"fr\", \"pt-BR\"]}','[]','2022-04-19 20:42:53.189000','2022-04-19 
20:42:53.189000',NULL,NULL),(135,'plugin::content-manager.explorer.publish','api::imovel.imovel','{\"locales\": [\"en\", \"fr\", \"pt-BR\"]}','[]','2022-04-19 20:42:53.196000','2022-04-19 
20:42:53.196000',NULL,NULL),(139,'plugin::content-manager.explorer.create','api::page.page','{\"fields\": [\"shortName\", \"metadata.metaTitle\", \"metadata.metaDescription\", \"metadata.shareImage\", \"metadata.twitterCardType\", 
\"metadata.twitterUsername\", \"contentSections\", \"slug\", \"icone\", \"oredem\"], \"locales\": [\"en\", \"fr\", \"pt-BR\"]}','[]','2022-05-31 17:33:46.603000','2022-05-31 
17:33:46.603000',NULL,NULL),(140,'plugin::content-manager.explorer.read','api::page.page','{\"fields\": [\"shortName\", \"metadata.metaTitle\", \"metadata.metaDescription\", \"metadata.shareImage\", \"metadata.twitterCardType\", 
\"metadata.twitterUsername\", \"contentSections\", \"slug\", \"icone\", \"oredem\"], \"locales\": [\"en\", \"fr\", \"pt-BR\"]}','[]','2022-05-31 17:33:46.609000','2022-05-31 
17:33:46.609000',NULL,NULL),(141,'plugin::content-manager.explorer.update','api::page.page','{\"fields\": [\"shortName\", \"metadata.metaTitle\", \"metadata.metaDescription\", \"metadata.shareImage\", \"metadata.twitterCardType\", 
\"metadata.twitterUsername\", \"contentSections\", \"slug\", \"icone\", \"oredem\"], \"locales\": [\"en\", \"fr\", \"pt-BR\"]}','[]','2022-05-31 17:33:46.614000','2022-05-31 
17:33:46.614000',NULL,NULL),(142,'plugin::content-manager.explorer.create','api::banner.banner','{\"fields\": [\"Imagem\", \"Texto_banner\", \"Button\", \"Exibir_botao\"], \"locales\": [\"en\", \"fr\", \"pt-BR\"]}','[]','2022-05-31 
17:48:12.923000','2022-05-31 17:48:12.923000',NULL,NULL),(143,'plugin::content-manager.explorer.read','api::banner.banner','{\"fields\": [\"Imagem\", \"Texto_banner\", \"Button\", \"Exibir_botao\"], \"locales\": [\"en\", \"fr\", 
\"pt-BR\"]}','[]','2022-05-31 17:48:12.933000','2022-05-31 17:48:12.933000',NULL,NULL),(144,'plugin::content-manager.explorer.update','api::banner.banner','{\"fields\": [\"Imagem\", \"Texto_banner\", \"Button\", \"Exibir_botao\"], 
\"locales\": [\"en\", \"fr\", \"pt-BR\"]}','[]','2022-05-31 17:48:12.937000','2022-05-31 17:48:12.937000',NULL,NULL),(145,'plugin::content-manager.explorer.delete','api::banner.banner','{\"locales\": [\"en\", \"fr\", 
\"pt-BR\"]}','[]','2022-05-31 17:48:12.941000','2022-05-31 17:48:12.941000',NULL,NULL),(146,'plugin::content-manager.explorer.publish','api::banner.banner','{\"locales\": [\"en\", \"fr\", \"pt-BR\"]}','[]','2022-05-31 
17:48:12.946000','2022-05-31 17:48:12.946000',NULL,NULL);
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions_role_links`
--

DROP TABLE IF EXISTS `admin_permissions_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_permissions_role_links` (
  `permission_id` int(10) unsigned DEFAULT NULL,
  `role_id` int(10) unsigned DEFAULT NULL,
  KEY `admin_permissions_role_links_fk` (`permission_id`),
  KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions_role_links`
--

LOCK TABLES `admin_permissions_role_links` WRITE;
/*!40000 ALTER TABLE `admin_permissions_role_links` DISABLE KEYS */;
INSERT INTO `admin_permissions_role_links` VALUES 
(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(11,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,3),(20,3),(21,3),(22,3),(23,3),(24,3),(25,3),(26,3),(27,3),(29,3),(31,3),(32,3),(33,3),(34,3),(35,3),(36,1),(40,1),(44,1),(48,1),(50,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(37,1),(41,1),(45,1),(49,1),(51,1),(52,1),(103,1),(104,1),(105,1),(106,1),(107,1),(108,1),(109,1),(110,1),(111,1),(112,1),(113,1),(114,1),(115,1),(116,1),(117,1),(118,1),(119,1),(120,1),(121,1),(122,1),(123,1),(124,1),(125,1),(126,1),(127,1),(128,1),(129,1),(130,1),(131,1),(132,1),(133,1),(134,1),(135,1),(139,1),(140,1),(141,1),(142,1),(143,1),(144,1),(145,1),(146,1);
/*!40000 ALTER TABLE `admin_permissions_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  KEY `admin_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2022-03-29 10:39:55.080000','2022-03-29 10:39:55.080000',NULL,NULL),(2,'Editor','strapi-editor','Editors 
can manage and publish contents including those of other users.','2022-03-29 10:39:55.096000','2022-03-29 10:39:55.096000',NULL,NULL),(3,'Author','strapi-author','Authors can manage the content they have created.','2022-03-29 
10:39:55.101000','2022-03-29 10:39:55.101000',NULL,NULL);
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_users_created_by_id_fk` (`created_by_id`),
  KEY `admin_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'Gabriel','Ariza','myblenet','myblenet@gmail.com','$2a$10$xzXaWQnSmj3B.Io1c2YOLO45JNcj9RweuHZUNfAV5VTCJpaVQlBTG',NULL,NULL,1,0,'pt-BR','2022-03-29 10:41:09.823000','2022-04-17 23:59:41.956000',NULL,NULL);
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users_roles_links`
--

DROP TABLE IF EXISTS `admin_users_roles_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users_roles_links` (
  `user_id` int(10) unsigned DEFAULT NULL,
  `role_id` int(10) unsigned DEFAULT NULL,
  KEY `admin_users_roles_links_fk` (`user_id`),
  KEY `admin_users_roles_links_inv_fk` (`role_id`),
  CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users_roles_links`
--

LOCK TABLES `admin_users_roles_links` WRITE;
/*!40000 ALTER TABLE `admin_users_roles_links` DISABLE KEYS */;
INSERT INTO `admin_users_roles_links` VALUES (1,1);
/*!40000 ALTER TABLE `admin_users_roles_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `texto_banner` varchar(255) DEFAULT NULL,
  `button` varchar(255) DEFAULT NULL,
  `exibir_botao` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `banners_created_by_id_fk` (`created_by_id`),
  KEY `banners_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `banners_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `banners_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners_localizations_links`
--

DROP TABLE IF EXISTS `banners_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners_localizations_links` (
  `banner_id` int(10) unsigned DEFAULT NULL,
  `inv_banner_id` int(10) unsigned DEFAULT NULL,
  KEY `banners_localizations_links_fk` (`banner_id`),
  KEY `banners_localizations_links_inv_fk` (`inv_banner_id`),
  CONSTRAINT `banners_localizations_links_fk` FOREIGN KEY (`banner_id`) REFERENCES `banners` (`id`) ON DELETE CASCADE,
  CONSTRAINT `banners_localizations_links_inv_fk` FOREIGN KEY (`inv_banner_id`) REFERENCES `banners` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners_localizations_links`
--

LOCK TABLES `banners_localizations_links` WRITE;
/*!40000 ALTER TABLE `banners_localizations_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `banners_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `article_create_date` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blogs_created_by_id_fk` (`created_by_id`),
  KEY `blogs_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `blogs_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `blogs_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs_localizations_links`
--

DROP TABLE IF EXISTS `blogs_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs_localizations_links` (
  `blog_id` int(10) unsigned DEFAULT NULL,
  `inv_blog_id` int(10) unsigned DEFAULT NULL,
  KEY `blogs_localizations_links_fk` (`blog_id`),
  KEY `blogs_localizations_links_inv_fk` (`inv_blog_id`),
  CONSTRAINT `blogs_localizations_links_fk` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `blogs_localizations_links_inv_fk` FOREIGN KEY (`inv_blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs_localizations_links`
--

LOCK TABLES `blogs_localizations_links` WRITE;
/*!40000 ALTER TABLE `blogs_localizations_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogs_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments_comment`
--

DROP TABLE IF EXISTS `comments_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `blocked` tinyint(1) DEFAULT NULL,
  `blocked_thread` tinyint(1) DEFAULT NULL,
  `block_reason` varchar(255) DEFAULT NULL,
  `author_id` varchar(255) DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `author_email` varchar(255) DEFAULT NULL,
  `author_avatar` varchar(255) DEFAULT NULL,
  `removed` tinyint(1) DEFAULT NULL,
  `approval_status` varchar(255) DEFAULT NULL,
  `related` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_comment_created_by_id_fk` (`created_by_id`),
  KEY `comments_comment_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `comments_comment_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `comments_comment_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments_comment`
--

LOCK TABLES `comments_comment` WRITE;
/*!40000 ALTER TABLE `comments_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments_comment-report`
--

DROP TABLE IF EXISTS `comments_comment-report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments_comment-report` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `reason` varchar(255) DEFAULT NULL,
  `resolved` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_comment-report_created_by_id_fk` (`created_by_id`),
  KEY `comments_comment-report_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `comments_comment-report_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `comments_comment-report_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments_comment-report`
--

LOCK TABLES `comments_comment-report` WRITE;
/*!40000 ALTER TABLE `comments_comment-report` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments_comment-report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments_comment_author_user_links`
--

DROP TABLE IF EXISTS `comments_comment_author_user_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments_comment_author_user_links` (
  `comment_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  KEY `comments_comment_author_user_links_fk` (`comment_id`),
  KEY `comments_comment_author_user_links_inv_fk` (`user_id`),
  CONSTRAINT `comments_comment_author_user_links_fk` FOREIGN KEY (`comment_id`) REFERENCES `comments_comment` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comments_comment_author_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments_comment_author_user_links`
--

LOCK TABLES `comments_comment_author_user_links` WRITE;
/*!40000 ALTER TABLE `comments_comment_author_user_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments_comment_author_user_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments_comment_report_related_links`
--

DROP TABLE IF EXISTS `comments_comment_report_related_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments_comment_report_related_links` (
  `comment_report_id` int(10) unsigned DEFAULT NULL,
  `comment_id` int(10) unsigned DEFAULT NULL,
  KEY `comments_comment_report_related_links_fk` (`comment_report_id`),
  KEY `comments_comment_report_related_links_inv_fk` (`comment_id`),
  CONSTRAINT `comments_comment_report_related_links_fk` FOREIGN KEY (`comment_report_id`) REFERENCES `comments_comment-report` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comments_comment_report_related_links_inv_fk` FOREIGN KEY (`comment_id`) REFERENCES `comments_comment` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments_comment_report_related_links`
--

LOCK TABLES `comments_comment_report_related_links` WRITE;
/*!40000 ALTER TABLE `comments_comment_report_related_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments_comment_report_related_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments_comment_thread_of_links`
--

DROP TABLE IF EXISTS `comments_comment_thread_of_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments_comment_thread_of_links` (
  `comment_id` int(10) unsigned DEFAULT NULL,
  `inv_comment_id` int(10) unsigned DEFAULT NULL,
  KEY `comments_comment_thread_of_links_fk` (`comment_id`),
  KEY `comments_comment_thread_of_links_inv_fk` (`inv_comment_id`),
  CONSTRAINT `comments_comment_thread_of_links_fk` FOREIGN KEY (`comment_id`) REFERENCES `comments_comment` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comments_comment_thread_of_links_inv_fk` FOREIGN KEY (`inv_comment_id`) REFERENCES `comments_comment` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments_comment_thread_of_links`
--

LOCK TABLES `comments_comment_thread_of_links` WRITE;
/*!40000 ALTER TABLE `comments_comment_thread_of_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments_comment_thread_of_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_elements_features`
--

DROP TABLE IF EXISTS `components_elements_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_elements_features` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_elements_features`
--

LOCK TABLES `components_elements_features` WRITE;
/*!40000 ALTER TABLE `components_elements_features` DISABLE KEYS */;
INSERT INTO `components_elements_features` VALUES (1,'A cool feature'),(2,'Another cool feature'),(3,'Some other cool feature'),(4,'The coolest feature'),(5,'Nice feature'),(6,'Fun feature'),(7,'Amazing feature'),(8,'Wow effect 
feature'),(9,'Mesmerizing feature'),(10,'Voilà une feature'),(11,'Une autre'),(12,'Encore une autre'),(13,'Fonctionnalité 1'),(14,'Fonctionnalité 2'),(15,'Fonctionnalité 3'),(16,'Fonctionnalité 1'),(17,'Fonctionnalité 
2'),(18,'Fonctionnalité 3');
/*!40000 ALTER TABLE `components_elements_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_elements_logos`
--

DROP TABLE IF EXISTS `components_elements_logos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_elements_logos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_elements_logos`
--

LOCK TABLES `components_elements_logos` WRITE;
/*!40000 ALTER TABLE `components_elements_logos` DISABLE KEYS */;
INSERT INTO `components_elements_logos` VALUES (1,'Strapi'),(2,'Strapi 2'),(3,'Strapi 3'),(4,'Strapi'),(5,'Strapi 2'),(6,'Strapi 3'),(7,'Strapi 2'),(8,'Strapi'),(9,'Strapi 3');
/*!40000 ALTER TABLE `components_elements_logos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_elements_notification_banners`
--

DROP TABLE IF EXISTS `components_elements_notification_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_elements_notification_banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` longtext,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_elements_notification_banners`
--

LOCK TABLES `components_elements_notification_banners` WRITE;
/*!40000 ALTER TABLE `components_elements_notification_banners` DISABLE KEYS */;
INSERT INTO `components_elements_notification_banners` VALUES (1,'Banner de notificação\n[Ver site atual](https://inovattaseguros.com.br)','info'),(2,'Cette page a été crée avec le Strapi starter pour les sites Corporate.\n [Voir les autres 
starters Strapi](https://strapi.io/starters)','info'),(3,'Banner de notificação\n[Ver site atual](https://inovattaseguros.com.br)','info');
/*!40000 ALTER TABLE `components_elements_notification_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_elements_plans`
--

DROP TABLE IF EXISTS `components_elements_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_elements_plans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `is_recommended` tinyint(1) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `price_period` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_elements_plans`
--

LOCK TABLES `components_elements_plans` WRITE;
/*!40000 ALTER TABLE `components_elements_plans` DISABLE KEYS */;
INSERT INTO `components_elements_plans` VALUES (1,'Hobby','Perfect for side projects',NULL,0.00,'forever'),(2,'Premium','A more advanced plan for SMBs',1,20.00,'per month'),(3,'Enterprise','For large companies needs',NULL,299.00,'per 
month'),(4,'Hobby','Parfait pour des projets personnels',NULL,0.00,'toujours'),(5,'Premium','Un plan plus avancé',1,20.00,'par mois'),(6,'Entreprise','Pour les besoin des grands entreprises',NULL,299.00,'par mois');
/*!40000 ALTER TABLE `components_elements_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_elements_plans_components`
--

DROP TABLE IF EXISTS `components_elements_plans_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_elements_plans_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned DEFAULT NULL,
  `component_id` int(10) unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `components_elements_plans_field_index` (`field`),
  KEY `components_elements_plans_component_type_index` (`component_type`),
  KEY `components_elements_plans_entity_fk` (`entity_id`),
  CONSTRAINT `components_elements_plans_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_elements_plans` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_elements_plans_components`
--

LOCK TABLES `components_elements_plans_components` WRITE;
/*!40000 ALTER TABLE `components_elements_plans_components` DISABLE KEYS */;
INSERT INTO `components_elements_plans_components` VALUES 
(1,1,1,'elements.feature','features',1),(2,1,2,'elements.feature','features',2),(3,1,3,'elements.feature','features',3),(4,2,4,'elements.feature','features',1),(5,2,5,'elements.feature','features',2),(6,2,6,'elements.feature','features',3),(7,4,10,'elements.feature','features',1),(8,4,11,'elements.feature','features',2),(9,4,12,'elements.feature','features',3),(10,5,13,'elements.feature','features',1),(11,5,14,'elements.feature','features',2),(12,5,15,'elements.feature','features',3),(13,3,7,'elements.feature','features',1),(14,3,8,'elements.feature','features',2),(15,3,9,'elements.feature','features',3),(16,6,16,'elements.feature','features',1),(17,6,17,'elements.feature','features',2),(18,6,18,'elements.feature','features',3);
/*!40000 ALTER TABLE `components_elements_plans_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_layout_footers`
--

DROP TABLE IF EXISTS `components_layout_footers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_layout_footers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `small_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_layout_footers`
--

LOCK TABLES `components_layout_footers` WRITE;
/*!40000 ALTER TABLE `components_layout_footers` DISABLE KEYS */;
INSERT INTO `components_layout_footers` VALUES (1,'© Copyright Inovatta Seguros™'),(2,'© Copyright Mon Entreprise™'),(3,'© Copyright Inovatta Seguros™');
/*!40000 ALTER TABLE `components_layout_footers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_layout_footers_components`
--

DROP TABLE IF EXISTS `components_layout_footers_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_layout_footers_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned DEFAULT NULL,
  `component_id` int(10) unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `components_layout_footers_field_index` (`field`),
  KEY `components_layout_footers_component_type_index` (`component_type`),
  KEY `components_layout_footers_entity_fk` (`entity_id`),
  CONSTRAINT `components_layout_footers_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_layout_footers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_layout_footers_components`
--

LOCK TABLES `components_layout_footers_components` WRITE;
/*!40000 ALTER TABLE `components_layout_footers_components` DISABLE KEYS */;
INSERT INTO `components_layout_footers_components` VALUES 
(1,2,3,'elements.footer-section','columns',1),(2,2,4,'elements.footer-section','columns',2),(3,2,6,'elements.footer-section','columns',3),(4,2,8,'elements.footer-section','columns',4),(9,1,1,'elements.footer-section','columns',1),(10,1,2,'elements.footer-section','columns',2),(11,1,5,'elements.footer-section','columns',3),(12,1,7,'elements.footer-section','columns',4),(13,3,9,'elements.footer-section','columns',1),(14,3,11,'elements.footer-section','columns',2),(15,3,10,'elements.footer-section','columns',3),(16,3,12,'elements.footer-section','columns',4);
/*!40000 ALTER TABLE `components_layout_footers_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_layout_navbars`
--

DROP TABLE IF EXISTS `components_layout_navbars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_layout_navbars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_layout_navbars`
--

LOCK TABLES `components_layout_navbars` WRITE;
/*!40000 ALTER TABLE `components_layout_navbars` DISABLE KEYS */;
INSERT INTO `components_layout_navbars` VALUES (1),(2),(3);
/*!40000 ALTER TABLE `components_layout_navbars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_layout_navbars_components`
--

DROP TABLE IF EXISTS `components_layout_navbars_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_layout_navbars_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned DEFAULT NULL,
  `component_id` int(10) unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `components_layout_navbars_field_index` (`field`),
  KEY `components_layout_navbars_component_type_index` (`component_type`),
  KEY `components_layout_navbars_entity_fk` (`entity_id`),
  CONSTRAINT `components_layout_navbars_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_layout_navbars` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_layout_navbars_components`
--

LOCK TABLES `components_layout_navbars_components` WRITE;
/*!40000 ALTER TABLE `components_layout_navbars_components` DISABLE KEYS */;
INSERT INTO `components_layout_navbars_components` VALUES 
(1,2,4,'links.link','links',1),(2,2,5,'links.link','links',2),(5,2,14,'links.button-link','button',1),(7,1,1,'links.link','links',1),(8,1,3,'links.link','links',2),(9,1,13,'links.button-link','button',1),(10,3,27,'links.link','links',1),(11,3,28,'links.link','links',2),(12,3,15,'links.button-link','button',1);
/*!40000 ALTER TABLE `components_layout_navbars_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_links_buttons`
--

DROP TABLE IF EXISTS `components_links_buttons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_links_buttons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `new_tab` tinyint(1) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_links_buttons`
--

LOCK TABLES `components_links_buttons` WRITE;
/*!40000 ALTER TABLE `components_links_buttons` DISABLE KEYS */;
INSERT INTO `components_links_buttons` VALUES (1,'#',0,'Send an email','primary'),(2,'https://github.com/strapi/strapi-template-corporate',0,'Get started','primary'),(3,'#',0,'DM us on 
Twitter','secondary'),(4,'https://github.com/strapi/strapi-template-corporate',1,'See the 
code','secondary'),(5,'https://github.com/strapi/strapi-template-corporate',0,'Commencer','primary'),(6,'https://github.com/strapi/strapi-template-corporate',1,'Voir le 
code','secondary'),(7,'https://github.com/strapi/strapi-template-corporate',0,'Get started','primary'),(8,'https://github.com/strapi/strapi-template-corporate',0,'See the code','secondary'),(9,'#',0,'Envoyer un 
mail','primary'),(10,'https://github.com/strapi/strapi-template-corporate',0,'Commencer','primary'),(11,'#',0,'DM nous sur Twitter','secondary'),(12,'https://github.com/strapi/strapi-template-corporate',0,'Voir le 
code','secondary'),(13,'#',0,'Sign up','secondary'),(14,'#',0,'S\'inscrire','secondary'),(15,'#',0,'Sign up','secondary'),(16,'https://github.com/strapi/strapi-template-corporate',0,'Get 
started','primary'),(17,'https://github.com/strapi/strapi-template-corporate',1,'See the code','secondary'),(18,'https://github.com/strapi/strapi-template-corporate',0,'Get 
started','primary'),(19,'https://github.com/strapi/strapi-template-corporate',0,'See the code','secondary');
/*!40000 ALTER TABLE `components_links_buttons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_links_footer_sections`
--

DROP TABLE IF EXISTS `components_links_footer_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_links_footer_sections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_links_footer_sections`
--

LOCK TABLES `components_links_footer_sections` WRITE;
/*!40000 ALTER TABLE `components_links_footer_sections` DISABLE KEYS */;
INSERT INTO `components_links_footer_sections` VALUES (1,'Seguros'),(2,'Legal'),(3,'Produit'),(4,'Légal'),(5,'Company'),(6,'Entreprise'),(7,'Social'),(8,'Réseaux sociaux'),(9,'Seguros'),(10,'Company'),(11,'Legal'),(12,'Social');
/*!40000 ALTER TABLE `components_links_footer_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_links_footer_sections_components`
--

DROP TABLE IF EXISTS `components_links_footer_sections_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_links_footer_sections_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned DEFAULT NULL,
  `component_id` int(10) unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `components_links_footer_sections_field_index` (`field`),
  KEY `components_links_footer_sections_component_type_index` (`component_type`),
  KEY `components_links_footer_sections_entity_fk` (`entity_id`),
  CONSTRAINT `components_links_footer_sections_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_links_footer_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_links_footer_sections_components`
--

LOCK TABLES `components_links_footer_sections_components` WRITE;
/*!40000 ALTER TABLE `components_links_footer_sections_components` DISABLE KEYS */;
INSERT INTO `components_links_footer_sections_components` VALUES 
(3,3,12,'links.link','links',1),(4,3,14,'links.link','links',2),(5,6,20,'links.link','links',1),(6,6,22,'links.link','links',2),(9,8,23,'links.link','links',1),(10,8,26,'links.link','links',2),(15,4,17,'links.link','links',1),(16,4,19,'links.link','links',2),(17,7,24,'links.link','links',1),(18,7,25,'links.link','links',2),(19,5,18,'links.link','links',1),(20,5,21,'links.link','links',2),(21,1,11,'links.link','links',1),(22,1,13,'links.link','links',2),(23,2,15,'links.link','links',1),(24,2,16,'links.link','links',2),(25,9,29,'links.link','links',1),(26,9,30,'links.link','links',2),(27,10,32,'links.link','links',1),(28,10,33,'links.link','links',2),(29,11,31,'links.link','links',1),(30,11,34,'links.link','links',2),(31,12,35,'links.link','links',1),(32,12,36,'links.link','links',2);
/*!40000 ALTER TABLE `components_links_footer_sections_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_links_links`
--

DROP TABLE IF EXISTS `components_links_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_links_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `new_tab` tinyint(1) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_links_links`
--

LOCK TABLES `components_links_links` WRITE;
/*!40000 ALTER TABLE `components_links_links` DISABLE KEYS */;
INSERT INTO `components_links_links` VALUES (1,'/pricing',0,'Pricing'),(2,'#',0,'All testimonials'),(3,'/contact',0,'Contact'),(4,'/pricing',0,'tarifs'),(5,'/contact',0,'nous contacter'),(6,'#',0,'All testimonials'),(7,'#',0,'View the list 
of UI sections'),(8,'#',0,'View how to create a page'),(9,'#',0,'Voir la liste de blocs UI'),(10,'#',0,'Voir comment créer une 
page'),(11,'#',0,'Veicular'),(12,'#',0,'Fonctionnalités'),(13,'#',0,'Residencial'),(14,'#',0,'S\'inscrire'),(15,'#',0,'Politicas de privacidade'),(16,'#',0,'Termos e condições'),(17,'#',0,'Confidentialité'),(18,'#',0,'Nossa 
história'),(19,'#',0,'Mentions légales'),(20,'#',0,'Nous rejoindre'),(21,'#',0,'Nosso 
time'),(22,'#',0,'L\'équipe'),(23,'#',0,'Twitter'),(24,'#',0,'Twitter'),(25,'#',0,'Instagram'),(26,'#',0,'LinkedIn'),(27,'/pricing',0,'Pricing'),(28,'/contact',0,'Contact'),(29,'#',0,'Veicular'),(30,'#',0,'Residencial'),(31,'#',0,'Politicas 
de privacidade'),(32,'#',0,'Nossa história'),(33,'#',0,'Nosso time'),(34,'#',0,'Termos e condições'),(35,'#',0,'Twitter'),(36,'#',0,'Instagram'),(37,'#',0,'View the list of UI sections'),(38,'#',0,'View how to create a page'),(39,'#',0,'All 
testimonials');
/*!40000 ALTER TABLE `components_links_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_links_simple_buttons`
--

DROP TABLE IF EXISTS `components_links_simple_buttons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_links_simple_buttons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_links_simple_buttons`
--

LOCK TABLES `components_links_simple_buttons` WRITE;
/*!40000 ALTER TABLE `components_links_simple_buttons` DISABLE KEYS */;
INSERT INTO `components_links_simple_buttons` VALUES (1,'Subscribe','primary'),(2,'S\'inscrire','primary'),(3,'Subscribe','primary');
/*!40000 ALTER TABLE `components_links_simple_buttons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_meta_metadata`
--

DROP TABLE IF EXISTS `components_meta_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_meta_metadata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` longtext,
  `twitter_card_type` varchar(255) DEFAULT NULL,
  `twitter_username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_meta_metadata`
--

LOCK TABLES `components_meta_metadata` WRITE;
/*!40000 ALTER TABLE `components_meta_metadata` DISABLE KEYS */;
INSERT INTO `components_meta_metadata` VALUES (1,'Inovatta Seguros | Corretora de seguros em Goiânia | Orçamento de seguro','Seguros automotores, fazemos cotações de todas as segura','summary','inovattaseguros'),(2,'Strapi corporate site 
starter','Build a fully editable site with Strapi','summary',NULL),(3,'Pricing','The different plans','summary',NULL),(4,'Contact','Get in touch with our team','summary',NULL),(5,'Strapi starter for Corporate Sites','Créer votre site 
corporate avec Strapi','summary','strapijs'),(6,'Strapi corporate site starter','Construire un site modifiable avec Strapi','summary',NULL),(7,'Secret page','Preview-only page','summary',NULL),(8,'Pricing','Les différentes 
offres','summary',NULL),(9,'Page secrète','Preview-only page','summary',NULL),(10,'Nous Contacter','Contactez notre équipe','summary',NULL),(11,'Inovatta Seguros | Corretora de seguros em Goiânia | Orçamento de seguro','Seguros automotores, 
fazemos cotações de todas as segura','summary','inovattaseguros'),(12,'Strapi corporate site starter','Build a fully editable site with Strapi','summary',NULL),(13,'Seguro de automóvel','Seguro auto é com a Inovatta 
seguros.','summary_large_image','inovattaseguros'),(14,'Seguro Residencial','Seguros residenciais com Inovatta seguros','summary','inovattaseguros'),(15,'Seguro de vida','Seguros vida com Inovatta 
seguros','summary','inovattaseguros'),(16,'Seguro de viagem','Seguros de viagem com Inovatta seguros','summary','inovattaseguros'),(17,'Seguro Bike','Seguros Bike com Inovatta 
seguros','summary','inovattaseguros'),(18,'Investimento','Seguros vida com Inovatta seguros','summary','inovattaseguros');
/*!40000 ALTER TABLE `components_meta_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_sections_lead_forms`
--

DROP TABLE IF EXISTS `components_sections_lead_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_sections_lead_forms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `email_placeholder` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_sections_lead_forms`
--

LOCK TABLES `components_sections_lead_forms` WRITE;
/*!40000 ALTER TABLE `components_sections_lead_forms` DISABLE KEYS */;
INSERT INTO `components_sections_lead_forms` VALUES (1,'Subscribe To Our Newsletter','email@company.com','Home Page Bottom'),(2,'S\'inscrire à notre Newsletter','email@company.com','Home Page Bottom'),(3,'Subscribe To Our 
Newsletter','email@company.com','Home Page Bottom');
/*!40000 ALTER TABLE `components_sections_lead_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_sections_lead_forms_components`
--

DROP TABLE IF EXISTS `components_sections_lead_forms_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_sections_lead_forms_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned DEFAULT NULL,
  `component_id` int(10) unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `components_sections_lead_forms_field_index` (`field`),
  KEY `components_sections_lead_forms_component_type_index` (`component_type`),
  KEY `components_sections_lead_forms_entity_fk` (`entity_id`),
  CONSTRAINT `components_sections_lead_forms_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_sections_lead_forms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_sections_lead_forms_components`
--

LOCK TABLES `components_sections_lead_forms_components` WRITE;
/*!40000 ALTER TABLE `components_sections_lead_forms_components` DISABLE KEYS */;
INSERT INTO `components_sections_lead_forms_components` VALUES (1,1,1,'links.button','submitButton',1),(2,2,2,'links.button','submitButton',1),(3,3,3,'links.button','submitButton',1);
/*!40000 ALTER TABLE `components_sections_lead_forms_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_sections_pricings`
--

DROP TABLE IF EXISTS `components_sections_pricings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_sections_pricings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_sections_pricings`
--

LOCK TABLES `components_sections_pricings` WRITE;
/*!40000 ALTER TABLE `components_sections_pricings` DISABLE KEYS */;
INSERT INTO `components_sections_pricings` VALUES (1,'Clear pricing table'),(2,'Tableau de tarifs');
/*!40000 ALTER TABLE `components_sections_pricings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_sections_pricings_components`
--

DROP TABLE IF EXISTS `components_sections_pricings_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_sections_pricings_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned DEFAULT NULL,
  `component_id` int(10) unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `components_sections_pricings_field_index` (`field`),
  KEY `components_sections_pricings_component_type_index` (`component_type`),
  KEY `components_sections_pricings_entity_fk` (`entity_id`),
  CONSTRAINT `components_sections_pricings_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_sections_pricings` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_sections_pricings_components`
--

LOCK TABLES `components_sections_pricings_components` WRITE;
/*!40000 ALTER TABLE `components_sections_pricings_components` DISABLE KEYS */;
INSERT INTO `components_sections_pricings_components` VALUES 
(1,2,4,'elements.plan','plans',1),(2,2,5,'elements.plan','plans',2),(3,2,6,'elements.plan','plans',3),(4,1,1,'elements.plan','plans',1),(5,1,2,'elements.plan','plans',2),(6,1,3,'elements.plan','plans',3);
/*!40000 ALTER TABLE `components_sections_pricings_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_sections_rich_texts`
--

DROP TABLE IF EXISTS `components_sections_rich_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_sections_rich_texts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_sections_rich_texts`
--

LOCK TABLES `components_sections_rich_texts` WRITE;
/*!40000 ALTER TABLE `components_sections_rich_texts` DISABLE KEYS */;
INSERT INTO `components_sections_rich_texts` VALUES (1,'# Get in touch\n\n> This is an example of a page that relies almost entirely on the RichText section. It\'s useful for blog articles, or content-heavy pages like legal terms.\n\nWe\'d 
love to hear from you.\n\n## Social media\n\n* [Twitter](#)\n* [Twitter](#)\n* [Twitter](#)\n\n## Postal address\n\n404 Headless Street\n__92210__ **Saint Cloud**, *France*\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do 
eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum 
dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),(2,'## Secret page\n\nYou can only view this page in Preview Mode.'),(3,'## Page secrète. \n\n 
Vous seul pouvez voir cette page en Preview Mode'),(4,'# Contactez nous\n\n> Ceci est un exemple d\'une page qui repose presque entièrement sur le composant RichText. Vous pouvez l\'utiliser pour des articles de blog, ou pour des pages 
comportant beaucoup de texte, comme par exemple les conditions d\'utilisation.\n\nNous aimerions beaucoup avoir vos retours.\n\n## Social media\n\n* [Twitter](#)\n* [Twitter](#)\n* [Twitter](#)\n\n## Postal address\n\n404 Headless 
Street\n__92210__ **Saint Cloud**, *France*\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim 
id est laborum.');
/*!40000 ALTER TABLE `components_sections_rich_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_slices_bottom_actions`
--

DROP TABLE IF EXISTS `components_slices_bottom_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_slices_bottom_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_slices_bottom_actions`
--

LOCK TABLES `components_slices_bottom_actions` WRITE;
/*!40000 ALTER TABLE `components_slices_bottom_actions` DISABLE KEYS */;
INSERT INTO `components_slices_bottom_actions` VALUES (1,'Get in touch'),(2,'Start building your website'),(3,'Start building your website'),(4,'Get in touch'),(5,'Start building your website');
/*!40000 ALTER TABLE `components_slices_bottom_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_slices_bottom_actions_components`
--

DROP TABLE IF EXISTS `components_slices_bottom_actions_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_slices_bottom_actions_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned DEFAULT NULL,
  `component_id` int(10) unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `components_slices_bottom_actions_field_index` (`field`),
  KEY `components_slices_bottom_actions_component_type_index` (`component_type`),
  KEY `components_slices_bottom_actions_entity_fk` (`entity_id`),
  CONSTRAINT `components_slices_bottom_actions_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_slices_bottom_actions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_slices_bottom_actions_components`
--

LOCK TABLES `components_slices_bottom_actions_components` WRITE;
/*!40000 ALTER TABLE `components_slices_bottom_actions_components` DISABLE KEYS */;
INSERT INTO `components_slices_bottom_actions_components` VALUES 
(1,1,1,'links.button-link','buttons',1),(2,1,3,'links.button-link','buttons',2),(3,4,9,'links.button-link','buttons',1),(4,4,11,'links.button-link','buttons',2),(5,2,7,'links.button-link','buttons',1),(6,2,8,'links.button-link','buttons',2),(7,3,10,'links.button-link','buttons',1),(8,3,12,'links.button-link','buttons',2),(9,5,18,'links.button-link','buttons',1),(10,5,19,'links.button-link','buttons',2);
/*!40000 ALTER TABLE `components_slices_bottom_actions_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_slices_feature_columns`
--

DROP TABLE IF EXISTS `components_slices_feature_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_slices_feature_columns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_slices_feature_columns`
--

LOCK TABLES `components_slices_feature_columns` WRITE;
/*!40000 ALTER TABLE `components_slices_feature_columns` DISABLE KEYS */;
INSERT INTO `components_slices_feature_columns` VALUES (1,'Preview your changes','Thanks to an integrated Preview Mode, you can visualize your pages before publishing them.'),(2,'Fully responsive','This starter works well on all screens, 
whether it\'s mobile, tablet or desktop.'),(3,'Easy to customize','We use Tailwind for styling. You can change your site\'s theme without digging through the code.'),(4,'Visualisez vos changments','Grace à un mode preview, vous pouvez voir 
vos pages avant de les publier.'),(5,'100% responsive','Ce starter marche sur toutes les tailles d\'écrans.'),(6,'Facile à personnaliser','On utilise Tailwind pour les styles. Vous pouvez changez le thème de votre site sans avoir besoin 
d\'aller dans le code.'),(7,'Preview your changes','Thanks to an integrated Preview Mode, you can visualize your pages before publishing them.'),(8,'Fully responsive','This starter works well on all screens, whether it\'s mobile, tablet or 
desktop.'),(9,'Easy to customize','We use Tailwind for styling. You can change your site\'s theme without digging through the code.');
/*!40000 ALTER TABLE `components_slices_feature_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_slices_feature_columns_groups`
--

DROP TABLE IF EXISTS `components_slices_feature_columns_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_slices_feature_columns_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_slices_feature_columns_groups`
--

LOCK TABLES `components_slices_feature_columns_groups` WRITE;
/*!40000 ALTER TABLE `components_slices_feature_columns_groups` DISABLE KEYS */;
INSERT INTO `components_slices_feature_columns_groups` VALUES (1),(2),(3);
/*!40000 ALTER TABLE `components_slices_feature_columns_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_slices_feature_columns_groups_components`
--

DROP TABLE IF EXISTS `components_slices_feature_columns_groups_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_slices_feature_columns_groups_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned DEFAULT NULL,
  `component_id` int(10) unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `components_slices_feature_columns_groups_field_index` (`field`),
  KEY `components_slices_feature_columns_groups_component_type_index` (`component_type`),
  KEY `components_slices_feature_columns_groups_entity_fk` (`entity_id`),
  CONSTRAINT `components_slices_feature_columns_groups_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_slices_feature_columns_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_slices_feature_columns_groups_components`
--

LOCK TABLES `components_slices_feature_columns_groups_components` WRITE;
/*!40000 ALTER TABLE `components_slices_feature_columns_groups_components` DISABLE KEYS */;
INSERT INTO `components_slices_feature_columns_groups_components` VALUES 
(1,1,1,'elements.feature-column','features',1),(2,1,2,'elements.feature-column','features',2),(3,1,3,'elements.feature-column','features',3),(4,2,4,'elements.feature-column','features',1),(5,2,5,'elements.feature-column','features',2),(6,2,6,'elements.feature-column','features',3),(7,3,7,'elements.feature-column','features',1),(8,3,8,'elements.feature-column','features',2),(9,3,9,'elements.feature-column','features',3);
/*!40000 ALTER TABLE `components_slices_feature_columns_groups_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_slices_feature_rows`
--

DROP TABLE IF EXISTS `components_slices_feature_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_slices_feature_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_slices_feature_rows`
--

LOCK TABLES `components_slices_feature_rows` WRITE;
/*!40000 ALTER TABLE `components_slices_feature_rows` DISABLE KEYS */;
INSERT INTO `components_slices_feature_rows` VALUES (1,'Let marketing teams build their pages','Thanks to a pre-built list of UI sections, marketers can design exactly the pages they want.'),(2,'Leave your developers alone','You can 
publish, edit and delete pages without help from developers. Your technical team can finally focus on their tasks.'),(3,'Les équipes marketing peuvent maintenant faire leurs propres pages','Grace à une liste pré-construite de blocs UI, les 
équipes marketing peuvent faire la mise en page exactement comme elles veulent'),(4,'Laissez vos développeurs tranquilles','Vous pouvez publier, modifier, et supprimer des pages sans l\'aide d\'un développeur.  Votre équipe technique peut 
enfin se concentrer sur d\'autre tâches.'),(5,'Let marketing teams build their pages','Thanks to a pre-built list of UI sections, marketers can design exactly the pages they want.'),(6,'Leave your developers alone','You can publish, edit 
and delete pages without help from developers. Your technical team can finally focus on their tasks.');
/*!40000 ALTER TABLE `components_slices_feature_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_slices_feature_rows_components`
--

DROP TABLE IF EXISTS `components_slices_feature_rows_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_slices_feature_rows_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned DEFAULT NULL,
  `component_id` int(10) unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `components_slices_feature_rows_field_index` (`field`),
  KEY `components_slices_feature_rows_component_type_index` (`component_type`),
  KEY `components_slices_feature_rows_entity_fk` (`entity_id`),
  CONSTRAINT `components_slices_feature_rows_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_slices_feature_rows` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_slices_feature_rows_components`
--

LOCK TABLES `components_slices_feature_rows_components` WRITE;
/*!40000 ALTER TABLE `components_slices_feature_rows_components` DISABLE KEYS */;
INSERT INTO `components_slices_feature_rows_components` VALUES 
(1,1,7,'links.link','link',1),(2,2,8,'links.link','link',1),(3,4,10,'links.link','link',1),(4,3,9,'links.link','link',1),(5,5,37,'links.link','link',1),(6,6,38,'links.link','link',1);
/*!40000 ALTER TABLE `components_slices_feature_rows_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_slices_feature_rows_groups`
--

DROP TABLE IF EXISTS `components_slices_feature_rows_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_slices_feature_rows_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_slices_feature_rows_groups`
--

LOCK TABLES `components_slices_feature_rows_groups` WRITE;
/*!40000 ALTER TABLE `components_slices_feature_rows_groups` DISABLE KEYS */;
INSERT INTO `components_slices_feature_rows_groups` VALUES (1),(2),(3);
/*!40000 ALTER TABLE `components_slices_feature_rows_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_slices_feature_rows_groups_components`
--

DROP TABLE IF EXISTS `components_slices_feature_rows_groups_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_slices_feature_rows_groups_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned DEFAULT NULL,
  `component_id` int(10) unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `components_slices_feature_rows_groups_field_index` (`field`),
  KEY `components_slices_feature_rows_groups_component_type_index` (`component_type`),
  KEY `components_slices_feature_rows_groups_entity_fk` (`entity_id`),
  CONSTRAINT `components_slices_feature_rows_groups_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_slices_feature_rows_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_slices_feature_rows_groups_components`
--

LOCK TABLES `components_slices_feature_rows_groups_components` WRITE;
/*!40000 ALTER TABLE `components_slices_feature_rows_groups_components` DISABLE KEYS */;
INSERT INTO `components_slices_feature_rows_groups_components` VALUES 
(1,1,1,'elements.feature-row','features',1),(2,1,2,'elements.feature-row','features',2),(3,2,3,'elements.feature-row','features',1),(4,2,4,'elements.feature-row','features',2),(5,3,5,'elements.feature-row','features',1),(6,3,6,'elements.feature-row','features',2);
/*!40000 ALTER TABLE `components_slices_feature_rows_groups_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_slices_heroes`
--

DROP TABLE IF EXISTS `components_slices_heroes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_slices_heroes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `small_text_with_link` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_slices_heroes`
--

LOCK TABLES `components_slices_heroes` WRITE;
/*!40000 ALTER TABLE `components_slices_heroes` DISABLE KEYS */;
INSERT INTO `components_slices_heroes` VALUES (1,'The best way to build your Corporate Site','New Strapi starter','Get started with your Strapi business website in seconds.','Want to build your own from scratch? Tutorial coming 
soon'),(2,'La meilleure façon de faire votre site Corporate','Nouveau starter Strapi','Commencer vite avec votre site corporate','Vous voulez construire votre propre starter? Guide à venir'),(3,'The best way to build your Corporate 
Site','New Strapi starter','Get started with your Strapi business website in seconds.','Want to build your own from scratch? Tutorial coming soon');
/*!40000 ALTER TABLE `components_slices_heroes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_slices_heroes_components`
--

DROP TABLE IF EXISTS `components_slices_heroes_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_slices_heroes_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned DEFAULT NULL,
  `component_id` int(10) unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `components_slices_heroes_field_index` (`field`),
  KEY `components_slices_heroes_component_type_index` (`component_type`),
  KEY `components_slices_heroes_entity_fk` (`entity_id`),
  CONSTRAINT `components_slices_heroes_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_slices_heroes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_slices_heroes_components`
--

LOCK TABLES `components_slices_heroes_components` WRITE;
/*!40000 ALTER TABLE `components_slices_heroes_components` DISABLE KEYS */;
INSERT INTO `components_slices_heroes_components` VALUES 
(1,1,2,'links.button-link','buttons',1),(2,1,4,'links.button-link','buttons',2),(3,2,5,'links.button-link','buttons',1),(4,2,6,'links.button-link','buttons',2),(5,3,16,'links.button-link','buttons',1),(6,3,17,'links.button-link','buttons',2);
/*!40000 ALTER TABLE `components_slices_heroes_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_slices_large_videos`
--

DROP TABLE IF EXISTS `components_slices_large_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_slices_large_videos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_slices_large_videos`
--

LOCK TABLES `components_slices_large_videos` WRITE;
/*!40000 ALTER TABLE `components_slices_large_videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `components_slices_large_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_slices_testimonials`
--

DROP TABLE IF EXISTS `components_slices_testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_slices_testimonials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` longtext,
  `author_name` varchar(255) DEFAULT NULL,
  `author_title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_slices_testimonials`
--

LOCK TABLES `components_slices_testimonials` WRITE;
/*!40000 ALTER TABLE `components_slices_testimonials` DISABLE KEYS */;
INSERT INTO `components_slices_testimonials` VALUES (1,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco 
laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.','Your Customer Name','A happy customer','#'),(2,'Lorem ipsum dolor sit amet, 
consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in 
reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.','Nom d\'un(e) Client(e) ici','Un(e) Client(e) Satisfait(e)','#'),(3,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut 
labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla 
pariatur.','Your Customer Name','A happy customer','#');
/*!40000 ALTER TABLE `components_slices_testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_slices_testimonials_groups`
--

DROP TABLE IF EXISTS `components_slices_testimonials_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_slices_testimonials_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_slices_testimonials_groups`
--

LOCK TABLES `components_slices_testimonials_groups` WRITE;
/*!40000 ALTER TABLE `components_slices_testimonials_groups` DISABLE KEYS */;
INSERT INTO `components_slices_testimonials_groups` VALUES (1,'Your customer testimonials here','This section is where you can showcase your customers. Insert quotes, and show the logos of companies who like your product'),(2,'Ici, les 
témoignages des vos clients.','Dans cette partie, vous pouvez mettre en avant vos clients.  Mettez des citations, et montrez les logos des entreprises qui aiment votre produit.'),(3,'Your customer testimonials here','This section is where 
you can showcase your customers. Insert quotes, and show the logos of companies who like your product');
/*!40000 ALTER TABLE `components_slices_testimonials_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_slices_testimonials_groups_components`
--

DROP TABLE IF EXISTS `components_slices_testimonials_groups_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_slices_testimonials_groups_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned DEFAULT NULL,
  `component_id` int(10) unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `components_slices_testimonials_groups_field_index` (`field`),
  KEY `components_slices_testimonials_groups_component_type_index` (`component_type`),
  KEY `components_slices_testimonials_groups_entity_fk` (`entity_id`),
  CONSTRAINT `components_slices_testimonials_groups_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_slices_testimonials_groups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_slices_testimonials_groups_components`
--

LOCK TABLES `components_slices_testimonials_groups_components` WRITE;
/*!40000 ALTER TABLE `components_slices_testimonials_groups_components` DISABLE KEYS */;
INSERT INTO `components_slices_testimonials_groups_components` VALUES 
(1,1,2,'links.link','link',1),(2,2,6,'links.link','link',1),(3,1,1,'elements.logos','logos',1),(4,1,2,'elements.logos','logos',2),(5,1,3,'elements.logos','logos',3),(6,2,4,'elements.logos','logos',1),(7,2,5,'elements.logos','logos',2),(8,2,6,'elements.logos','logos',3),(9,2,2,'elements.testimonial','testimonials',1),(10,1,1,'elements.testimonial','testimonials',1),(11,3,39,'links.link','link',1),(12,3,8,'elements.logos','logos',1),(13,3,7,'elements.logos','logos',2),(14,3,9,'elements.logos','logos',3),(15,3,3,'elements.testimonial','testimonials',1);
/*!40000 ALTER TABLE `components_slices_testimonials_groups_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dados_gerais`
--

DROP TABLE IF EXISTS `dados_gerais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dados_gerais` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL,
  `call_phone_number` varchar(255) DEFAULT NULL,
  `whatsapp_phone_number` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `full_address` longtext,
  `short_about` longtext,
  `google_maps_embed_link` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dados_gerais_created_by_id_fk` (`created_by_id`),
  KEY `dados_gerais_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `dados_gerais_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `dados_gerais_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dados_gerais`
--

LOCK TABLES `dados_gerais` WRITE;
/*!40000 ALTER TABLE `dados_gerais` DISABLE KEYS */;
/*!40000 ALTER TABLE `dados_gerais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dados_gerais_localizations_links`
--

DROP TABLE IF EXISTS `dados_gerais_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dados_gerais_localizations_links` (
  `dados_geral_id` int(10) unsigned DEFAULT NULL,
  `inv_dados_geral_id` int(10) unsigned DEFAULT NULL,
  KEY `dados_gerais_localizations_links_fk` (`dados_geral_id`),
  KEY `dados_gerais_localizations_links_inv_fk` (`inv_dados_geral_id`),
  CONSTRAINT `dados_gerais_localizations_links_fk` FOREIGN KEY (`dados_geral_id`) REFERENCES `dados_gerais` (`id`) ON DELETE CASCADE,
  CONSTRAINT `dados_gerais_localizations_links_inv_fk` FOREIGN KEY (`inv_dados_geral_id`) REFERENCES `dados_gerais` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dados_gerais_localizations_links`
--

LOCK TABLES `dados_gerais_localizations_links` WRITE;
/*!40000 ALTER TABLE `dados_gerais_localizations_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `dados_gerais_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dados_gerais_pagina_links`
--

DROP TABLE IF EXISTS `dados_gerais_pagina_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dados_gerais_pagina_links` (
  `dados_geral_id` int(10) unsigned DEFAULT NULL,
  `page_id` int(10) unsigned DEFAULT NULL,
  KEY `dados_gerais_pagina_links_fk` (`dados_geral_id`),
  KEY `dados_gerais_pagina_links_inv_fk` (`page_id`),
  CONSTRAINT `dados_gerais_pagina_links_fk` FOREIGN KEY (`dados_geral_id`) REFERENCES `dados_gerais` (`id`) ON DELETE CASCADE,
  CONSTRAINT `dados_gerais_pagina_links_inv_fk` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dados_gerais_pagina_links`
--

LOCK TABLES `dados_gerais_pagina_links` WRITE;
/*!40000 ALTER TABLE `dados_gerais_pagina_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `dados_gerais_pagina_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_reference_id` int(11) DEFAULT NULL,
  `design` json DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body_html` longtext,
  `body_text` longtext,
  `enabled` tinyint(1) DEFAULT NULL,
  `tags` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email_templates_created_by_id_fk` (`created_by_id`),
  KEY `email_templates_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `email_templates_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `email_templates_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` json DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `files_created_by_id_fk` (`created_by_id`),
  KEY `files_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'favicon','favicon','favicon',512,512,'{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_favicon_8f7a6f226f.png\", \"hash\": \"small_favicon_8f7a6f226f\", \"mime\": \"image/png\", \"name\": 
\"small_favicon\", \"path\": null, \"size\": 26.5, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_favicon_8f7a6f226f.png\", \"hash\": \"thumbnail_favicon_8f7a6f226f\", \"mime\": 
\"image/png\", \"name\": \"thumbnail_favicon\", \"path\": null, \"size\": 5.61, \"width\": 156, \"height\": 156}}','favicon_8f7a6f226f','.png','image/png',2.78,'/uploads/favicon_8f7a6f226f.png',NULL,'local',NULL,'2022-03-29 
10:39:55.203000','2022-03-29 10:39:55.203000',NULL,NULL),(2,'favicon','favicon','favicon',500,500,'{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_favicon_c55894aa30.png\", \"hash\": \"thumbnail_favicon_c55894aa30\", 
\"mime\": \"image/png\", \"name\": \"thumbnail_favicon\", \"path\": null, \"size\": 28.98, \"width\": 156, \"height\": 156}}','favicon_c55894aa30','.png','image/png',22.47,'/uploads/favicon_c55894aa30.png',NULL,'local',NULL,'2022-03-29 
10:39:55.205000','2022-03-29 11:08:20.204000',NULL,1),(3,'undraw-content-team','undraw-content-team','undraw-content-team',1119,712,'{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_undraw_content_team_046cd66b88.png\", \"hash\": 
\"large_undraw_content_team_046cd66b88\", \"mime\": \"image/png\", \"name\": \"large_undraw-content-team\", \"path\": null, \"size\": 71.49, \"width\": 1000, \"height\": 636}, \"small\": {\"ext\": \".png\", \"url\": 
\"/uploads/small_undraw_content_team_046cd66b88.png\", \"hash\": \"small_undraw_content_team_046cd66b88\", \"mime\": \"image/png\", \"name\": \"small_undraw-content-team\", \"path\": null, \"size\": 31.36, \"width\": 500, \"height\": 318}, 
\"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_undraw_content_team_046cd66b88.png\", \"hash\": \"medium_undraw_content_team_046cd66b88\", \"mime\": \"image/png\", \"name\": \"medium_undraw-content-team\", \"path\": null, 
\"size\": 49.93, \"width\": 750, \"height\": 477}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_undraw_content_team_046cd66b88.png\", \"hash\": \"thumbnail_undraw_content_team_046cd66b88\", \"mime\": \"image/png\", 
\"name\": \"thumbnail_undraw-content-team\", \"path\": null, \"size\": 13.68, \"width\": 245, \"height\": 
156}}','undraw_content_team_046cd66b88','.png','image/png',15.13,'/uploads/undraw_content_team_046cd66b88.png',NULL,'local',NULL,'2022-03-29 10:39:55.280000','2022-03-29 
10:39:55.280000',NULL,NULL),(4,'undraw-content-team','undraw-content-team','undraw-content-team',1119,712,'{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_undraw_content_team_2f95a43815.png\", \"hash\": 
\"large_undraw_content_team_2f95a43815\", \"mime\": \"image/png\", \"name\": \"large_undraw-content-team\", \"path\": null, \"size\": 71.49, \"width\": 1000, \"height\": 636}, \"small\": {\"ext\": \".png\", \"url\": 
\"/uploads/small_undraw_content_team_2f95a43815.png\", \"hash\": \"small_undraw_content_team_2f95a43815\", \"mime\": \"image/png\", \"name\": \"small_undraw-content-team\", \"path\": null, \"size\": 31.36, \"width\": 500, \"height\": 318}, 
\"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_undraw_content_team_2f95a43815.png\", \"hash\": \"medium_undraw_content_team_2f95a43815\", \"mime\": \"image/png\", \"name\": \"medium_undraw-content-team\", \"path\": null, 
\"size\": 49.93, \"width\": 750, \"height\": 477}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_undraw_content_team_2f95a43815.png\", \"hash\": \"thumbnail_undraw_content_team_2f95a43815\", \"mime\": \"image/png\", 
\"name\": \"thumbnail_undraw-content-team\", \"path\": null, \"size\": 13.68, \"width\": 245, \"height\": 
156}}','undraw_content_team_2f95a43815','.png','image/png',15.13,'/uploads/undraw_content_team_2f95a43815.png',NULL,'local',NULL,'2022-03-29 10:39:55.281000','2022-03-29 
10:39:55.281000',NULL,NULL),(5,'undraw-content-team','undraw-content-team','undraw-content-team',NULL,NULL,NULL,'undraw_content_team_991fac9dfd','.svg','image/svg+xml',11.25,'/uploads/undraw_content_team_991fac9dfd.svg',NULL,NULL,NULL,'2022-03-29 
10:39:55.297000','2022-03-29 
10:39:55.297000',NULL,NULL),(6,'undraw-design-page','undraw-design-page','undraw-design-page',NULL,NULL,NULL,'undraw_design_page_0f3f2b15ea','.svg','image/svg+xml',10.35,'/uploads/undraw_design_page_0f3f2b15ea.svg',NULL,NULL,NULL,'2022-03-29 
10:39:55.311000','2022-03-29 
10:39:55.311000',NULL,NULL),(7,'undraw-content-team','undraw-content-team','undraw-content-team',NULL,NULL,NULL,'undraw_content_team_2998c6416e','.svg','image/svg+xml',11.25,'/uploads/undraw_content_team_2998c6416e.svg',NULL,NULL,NULL,'2022-03-29 
10:39:55.318000','2022-03-29 
10:39:55.318000',NULL,NULL),(8,'undraw-create-page','undraw-create-page','undraw-create-page',NULL,NULL,NULL,'undraw_create_page_e216de4713','.svg','image/svg+xml',13.29,'/uploads/undraw_create_page_e216de4713.svg',NULL,NULL,NULL,'2022-03-29 
10:39:55.324000','2022-03-29 
10:39:55.324000',NULL,NULL),(9,'undraw-design-page','undraw-design-page','undraw-design-page',NULL,NULL,NULL,'undraw_design_page_85e9b3a35c','.svg','image/svg+xml',10.35,'/uploads/undraw_design_page_85e9b3a35c.svg',NULL,NULL,NULL,'2022-03-29 
10:39:55.330000','2022-03-29 10:39:55.330000',NULL,NULL),(10,'preview','preview','preview',NULL,NULL,NULL,'preview_479c772459','.svg','image/svg+xml',0.92,'/uploads/preview_479c772459.svg',NULL,NULL,NULL,'2022-03-29 
10:39:55.339000','2022-03-29 
10:39:55.339000',NULL,NULL),(11,'undraw-create-page','undraw-create-page','undraw-create-page',NULL,NULL,NULL,'undraw_create_page_0c0cc1bb66','.svg','image/svg+xml',13.29,'/uploads/undraw_create_page_0c0cc1bb66.svg',NULL,NULL,NULL,'2022-03-29 
10:39:55.345000','2022-03-29 10:39:55.345000',NULL,NULL),(12,'preview','preview','preview',NULL,NULL,NULL,'preview_e5cebd37b5','.svg','image/svg+xml',0.92,'/uploads/preview_e5cebd37b5.svg',NULL,NULL,NULL,'2022-03-29 
10:39:55.362000','2022-03-29 10:39:55.362000',NULL,NULL),(13,'devices','devices','devices',NULL,NULL,NULL,'devices_b35e8b2075','.svg','image/svg+xml',0.32,'/uploads/devices_b35e8b2075.svg',NULL,NULL,NULL,'2022-03-29 
10:39:55.363000','2022-03-29 10:39:55.363000',NULL,NULL),(14,'devices','devices','devices',NULL,NULL,NULL,'devices_9b67e5842d','.svg','image/svg+xml',0.32,'/uploads/devices_9b67e5842d.svg',NULL,NULL,NULL,'2022-03-29 
10:39:55.375000','2022-03-29 10:39:55.375000',NULL,NULL),(15,'palette','palette','palette',NULL,NULL,NULL,'palette_7c94974219','.svg','image/svg+xml',1.09,'/uploads/palette_7c94974219.svg',NULL,NULL,NULL,'2022-03-29 
10:39:55.377000','2022-03-29 10:39:55.377000',NULL,NULL),(16,'palette','palette','palette',NULL,NULL,NULL,'palette_b6f3d09fbd','.svg','image/svg+xml',1.09,'/uploads/palette_b6f3d09fbd.svg',NULL,NULL,NULL,'2022-03-29 
10:39:55.389000','2022-03-29 10:39:55.389000',NULL,NULL),(17,'undraw-content-team','undraw-content-team','undraw-content-team',1119,712,'{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_undraw_content_team_bc27eb3b3e.png\", 
\"hash\": \"large_undraw_content_team_bc27eb3b3e\", \"mime\": \"image/png\", \"name\": \"large_undraw-content-team\", \"path\": null, \"size\": 71.49, \"width\": 1000, \"height\": 636}, \"small\": {\"ext\": \".png\", \"url\": 
\"/uploads/small_undraw_content_team_bc27eb3b3e.png\", \"hash\": \"small_undraw_content_team_bc27eb3b3e\", \"mime\": \"image/png\", \"name\": \"small_undraw-content-team\", \"path\": null, \"size\": 31.36, \"width\": 500, \"height\": 318}, 
\"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_undraw_content_team_bc27eb3b3e.png\", \"hash\": \"medium_undraw_content_team_bc27eb3b3e\", \"mime\": \"image/png\", \"name\": \"medium_undraw-content-team\", \"path\": null, 
\"size\": 49.93, \"width\": 750, \"height\": 477}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_undraw_content_team_bc27eb3b3e.png\", \"hash\": \"thumbnail_undraw_content_team_bc27eb3b3e\", \"mime\": \"image/png\", 
\"name\": \"thumbnail_undraw-content-team\", \"path\": null, \"size\": 13.68, \"width\": 245, \"height\": 
156}}','undraw_content_team_bc27eb3b3e','.png','image/png',15.13,'/uploads/undraw_content_team_bc27eb3b3e.png',NULL,'local',NULL,'2022-03-29 10:39:55.427000','2022-03-29 
10:39:55.427000',NULL,NULL),(18,'inovatta-corretora-de-seguros','inovatta-corretora-de-seguros','inovatta-corretora-de-seguros',500,500,'{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_undraw_content_team_e60944787d.png\", 
\"hash\": \"thumbnail_undraw_content_team_e60944787d\", \"mime\": \"image/png\", \"name\": \"thumbnail_inovatta-corretora-de-seguros\", \"path\": null, \"size\": 28.98, \"width\": 156, \"height\": 
156}}','undraw_content_team_e60944787d','.png','image/png',22.47,'/uploads/undraw_content_team_e60944787d.png',NULL,'local',NULL,'2022-03-29 10:39:55.435000','2022-03-29 
11:07:22.157000',NULL,1),(19,'logo','logo','logo',1000,265,'{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_logo_1e8753b735.png\", \"hash\": \"small_logo_1e8753b735\", \"mime\": \"image/png\", \"name\": \"small_logo\", \"path\": 
null, \"size\": 21.22, \"width\": 500, \"height\": 133}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_logo_1e8753b735.png\", \"hash\": \"medium_logo_1e8753b735\", \"mime\": \"image/png\", \"name\": \"medium_logo\", \"path\": 
null, \"size\": 36.37, \"width\": 750, \"height\": 199}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_logo_1e8753b735.png\", \"hash\": \"thumbnail_logo_1e8753b735\", \"mime\": \"image/png\", \"name\": \"thumbnail_logo\", 
\"path\": null, \"size\": 9.88, \"width\": 245, \"height\": 65}}','logo_1e8753b735','.png','image/png',6.65,'/uploads/logo_1e8753b735.png',NULL,'local',NULL,'2022-03-29 10:39:55.543000','2022-03-29 
10:39:55.543000',NULL,NULL),(21,'logo','logo','logo',500,500,'{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_logo_c5047557ea.png\", \"hash\": \"thumbnail_logo_c5047557ea\", \"mime\": \"image/png\", \"name\": 
\"thumbnail_logo\", \"path\": null, \"size\": 28.98, \"width\": 156, \"height\": 156}}','logo_c5047557ea','.png','image/png',22.47,'/uploads/logo_c5047557ea.png',NULL,'local',NULL,'2022-03-29 10:39:55.589000','2022-03-29 
11:10:30.030000',NULL,1),(25,'logo','logo','logo',500,500,'{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_logo_c412ff3594.png\", \"hash\": \"thumbnail_logo_c412ff3594\", \"mime\": \"image/png\", \"name\": 
\"thumbnail_logo\", \"path\": null, \"size\": 28.98, \"width\": 156, \"height\": 156}}','logo_c412ff3594','.png','image/png',22.47,'/uploads/logo_c412ff3594.png',NULL,'local',NULL,'2022-03-29 10:39:55.751000','2022-03-29 
11:11:07.791000',NULL,1),(32,'user','user','user',1448,1450,'{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_user_402c5a0c61.png\", \"hash\": \"large_user_402c5a0c61\", \"mime\": \"image/png\", \"name\": \"large_user\", \"path\": 
null, \"size\": 1933.26, \"width\": 999, \"height\": 1000}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_user_402c5a0c61.png\", \"hash\": \"small_user_402c5a0c61\", \"mime\": \"image/png\", \"name\": \"small_user\", \"path\": 
null, \"size\": 520.32, \"width\": 499, \"height\": 500}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_user_402c5a0c61.png\", \"hash\": \"medium_user_402c5a0c61\", \"mime\": \"image/png\", \"name\": \"medium_user\", \"path\": 
null, \"size\": 1120.61, \"width\": 749, \"height\": 750}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_user_402c5a0c61.png\", \"hash\": \"thumbnail_user_402c5a0c61\", \"mime\": \"image/png\", \"name\": 
\"thumbnail_user\", \"path\": null, \"size\": 61.2, \"width\": 156, \"height\": 156}}','user_402c5a0c61','.png','image/png',953.54,'/uploads/user_402c5a0c61.png',NULL,'local',NULL,'2022-03-29 10:39:56.591000','2022-03-29 
12:59:27.255000',NULL,1),(33,'girls.png','girls.png','girls.png',1448,1450,'{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_girls_037622162a.png\", \"hash\": \"large_girls_037622162a\", \"mime\": \"image/png\", \"name\": 
\"large_girls.png\", \"path\": null, \"size\": 1933.26, \"width\": 999, \"height\": 1000}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_girls_037622162a.png\", \"hash\": \"small_girls_037622162a\", \"mime\": \"image/png\", 
\"name\": \"small_girls.png\", \"path\": null, \"size\": 520.32, \"width\": 499, \"height\": 500}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_girls_037622162a.png\", \"hash\": \"medium_girls_037622162a\", \"mime\": 
\"image/png\", \"name\": \"medium_girls.png\", \"path\": null, \"size\": 1120.61, \"width\": 749, \"height\": 750}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_girls_037622162a.png\", \"hash\": 
\"thumbnail_girls_037622162a\", \"mime\": \"image/png\", \"name\": \"thumbnail_girls.png\", \"path\": null, \"size\": 61.2, \"width\": 156, \"height\": 
156}}','girls_037622162a','.png','image/png',953.54,'/uploads/girls_037622162a.png',NULL,'local',NULL,'2022-04-17 23:14:28.366000','2022-04-17 
23:14:28.366000',1,1),(34,'1596400732_0839d30a0f5fd4f391d6.png','1596400732_0839d30a0f5fd4f391d6.png','1596400732_0839d30a0f5fd4f391d6.png',230,100,NULL,'1596400732_0839d30a0f5fd4f391d6_fa016a283f','.png','image/png',2.11,'/uploads/1596400732_0839d30a0f5fd4f391d6_fa016a283f.png',NULL,'local',NULL,'2022-04-19 
20:43:24.585000','2022-04-19 20:43:24.585000',1,1),(35,'icone.svg','icone.svg','icone.svg',NULL,NULL,NULL,'icone_d70aa06b07','.svg','image/svg+xml',0.27,'/uploads/icone_d70aa06b07.svg',NULL,NULL,NULL,'2022-05-31 17:36:07.147000','2022-05-31 
17:36:07.147000',1,1),(36,'icone-seguro-vida.svg','icone-seguro-vida.svg','icone-seguro-vida.svg',NULL,NULL,NULL,'icone_seguro_vida_d0799513aa','.svg','image/svg+xml',0.29,'/uploads/icone_seguro_vida_d0799513aa.svg',NULL,NULL,NULL,'2022-05-31 
17:40:22.309000','2022-05-31 17:40:22.309000',1,1);
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_related_morphs`
--

DROP TABLE IF EXISTS `files_related_morphs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files_related_morphs` (
  `file_id` int(10) unsigned DEFAULT NULL,
  `related_id` int(10) unsigned DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) unsigned DEFAULT NULL,
  KEY `files_related_morphs_fk` (`file_id`),
  CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_related_morphs`
--

LOCK TABLES `files_related_morphs` WRITE;
/*!40000 ALTER TABLE `files_related_morphs` DISABLE KEYS */;
INSERT INTO `files_related_morphs` VALUES 
(17,5,'meta.metadata','shareImage',1),(1,2,'api::global.global','favicon',1),(4,2,'meta.metadata','shareImage',1),(3,6,'meta.metadata','shareImage',1),(12,1,'elements.feature-column','icon',1),(16,3,'elements.feature-column','icon',1),(14,2,'elements.feature-column','icon',1),(10,4,'elements.feature-column','icon',1),(13,5,'elements.feature-column','icon',1),(9,1,'elements.feature-row','media',1),(7,1,'sections.hero','picture',1),(15,6,'elements.feature-column','icon',1),(11,2,'elements.feature-row','media',1),(8,4,'elements.feature-row','media',1),(6,3,'elements.feature-row','media',1),(19,4,'elements.logos','logo',1),(5,2,'sections.hero','picture',1),(32,2,'elements.testimonial','picture',1),(18,1,'meta.metadata','shareImage',1),(21,1,'layout.navbar','logo',1),(25,1,'layout.footer','logo',1),(2,1,'api::global.global','favicon',1),(18,11,'meta.metadata','shareImage',1),(21,3,'layout.navbar','logo',1),(25,3,'layout.footer','logo',1),(2,3,'api::global.global','favicon',1),(4,12,'meta.metadata','shareImage',1),(9,5,'elements.feature-row','media',1),(11,6,'elements.feature-row','media',1),(7,3,'sections.hero','picture',1),(34,1,'api::imovel.imovel','imagens',1),(34,2,'api::imovel.imovel','imagens',1),(18,18,'meta.metadata','shareImage',1),(35,15,'api::page.page','icone',1),(18,17,'meta.metadata','shareImage',1),(35,14,'api::page.page','icone',1),(18,16,'meta.metadata','shareImage',1),(35,13,'api::page.page','icone',1),(21,13,'meta.metadata','shareImage',1),(35,10,'api::page.page','icone',1),(18,14,'meta.metadata','shareImage',1),(35,11,'api::page.page','icone',1),(18,15,'meta.metadata','shareImage',1),(36,12,'api::page.page','icone',1);
/*!40000 ALTER TABLE `files_related_morphs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `globals`
--

DROP TABLE IF EXISTS `globals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `globals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `meta_title_suffix` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `globals_created_by_id_fk` (`created_by_id`),
  KEY `globals_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `globals_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `globals_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globals`
--

LOCK TABLES `globals` WRITE;
/*!40000 ALTER TABLE `globals` DISABLE KEYS */;
INSERT INTO `globals` VALUES (1,'Inovatta Corretora de seguros em Goiânia','2022-03-29 10:39:55.810000','2022-03-29 11:42:35.536000',NULL,1,'en'),(2,'Strapi Corporate','2022-03-29 10:39:55.810000','2022-03-29 
11:42:35.536000',NULL,NULL,'fr'),(3,'Inovatta Corretora de seguros em Goiânia','2022-03-29 11:42:35.495000','2022-03-29 11:42:35.495000',1,1,'pt-BR');
/*!40000 ALTER TABLE `globals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `globals_components`
--

DROP TABLE IF EXISTS `globals_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `globals_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned DEFAULT NULL,
  `component_id` int(10) unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `globals_field_index` (`field`),
  KEY `globals_component_type_index` (`component_type`),
  KEY `globals_entity_fk` (`entity_id`),
  CONSTRAINT `globals_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `globals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globals_components`
--

LOCK TABLES `globals_components` WRITE;
/*!40000 ALTER TABLE `globals_components` DISABLE KEYS */;
INSERT INTO `globals_components` VALUES 
(1,2,5,'meta.metadata','metadata',1),(3,2,2,'elements.notification-banner','notificationBanner',1),(5,2,2,'layout.navbar','navbar',1),(7,2,2,'layout.footer','footer',1),(9,1,1,'meta.metadata','metadata',1),(10,1,1,'elements.notification-banner','notificationBanner',1),(11,1,1,'layout.navbar','navbar',1),(12,1,1,'layout.footer','footer',1),(13,3,11,'meta.metadata','metadata',1),(14,3,3,'elements.notification-banner','notificationBanner',1),(15,3,3,'layout.navbar','navbar',1),(16,3,3,'layout.footer','footer',1);
/*!40000 ALTER TABLE `globals_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `globals_localizations_links`
--

DROP TABLE IF EXISTS `globals_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `globals_localizations_links` (
  `global_id` int(10) unsigned DEFAULT NULL,
  `inv_global_id` int(10) unsigned DEFAULT NULL,
  KEY `globals_localizations_links_fk` (`global_id`),
  KEY `globals_localizations_links_inv_fk` (`inv_global_id`),
  CONSTRAINT `globals_localizations_links_fk` FOREIGN KEY (`global_id`) REFERENCES `globals` (`id`) ON DELETE CASCADE,
  CONSTRAINT `globals_localizations_links_inv_fk` FOREIGN KEY (`inv_global_id`) REFERENCES `globals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globals_localizations_links`
--

LOCK TABLES `globals_localizations_links` WRITE;
/*!40000 ALTER TABLE `globals_localizations_links` DISABLE KEYS */;
INSERT INTO `globals_localizations_links` VALUES (3,1),(3,2),(1,3),(1,2),(2,3),(2,1);
/*!40000 ALTER TABLE `globals_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i18n_locale`
--

DROP TABLE IF EXISTS `i18n_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i18n_locale` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i18n_locale`
--

LOCK TABLES `i18n_locale` WRITE;
/*!40000 ALTER TABLE `i18n_locale` DISABLE KEYS */;
INSERT INTO `i18n_locale` VALUES (1,'English (en)','en','2022-03-29 10:39:55.034000','2022-03-29 10:39:55.034000',NULL,NULL),(2,'French (fr)','fr','2022-03-29 10:39:55.051000','2022-03-29 10:39:55.051000',NULL,NULL),(3,'Portuguese (Brazil) 
(pt-BR)','pt-BR','2022-03-29 11:40:34.084000','2022-03-29 11:40:40.740000',1,1);
/*!40000 ALTER TABLE `i18n_locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imoveis`
--

DROP TABLE IF EXISTS `imoveis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imoveis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `imoveis_created_by_id_fk` (`created_by_id`),
  KEY `imoveis_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `imoveis_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `imoveis_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imoveis`
--

LOCK TABLES `imoveis` WRITE;
/*!40000 ALTER TABLE `imoveis` DISABLE KEYS */;
INSERT INTO `imoveis` VALUES (1,'Teste','2022-04-19 20:43:43.729000','2022-04-19 20:44:34.136000','2022-04-19 20:44:01.471000',1,1,'pt-BR'),(2,'Title of this amazing imobiliary home','2022-04-19 20:44:34.090000','2022-04-19 
20:44:35.602000','2022-04-19 20:44:35.594000',1,1,'en');
/*!40000 ALTER TABLE `imoveis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imoveis_localizations_links`
--

DROP TABLE IF EXISTS `imoveis_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imoveis_localizations_links` (
  `imovel_id` int(10) unsigned DEFAULT NULL,
  `inv_imovel_id` int(10) unsigned DEFAULT NULL,
  KEY `imoveis_localizations_links_fk` (`imovel_id`),
  KEY `imoveis_localizations_links_inv_fk` (`inv_imovel_id`),
  CONSTRAINT `imoveis_localizations_links_fk` FOREIGN KEY (`imovel_id`) REFERENCES `imoveis` (`id`) ON DELETE CASCADE,
  CONSTRAINT `imoveis_localizations_links_inv_fk` FOREIGN KEY (`inv_imovel_id`) REFERENCES `imoveis` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imoveis_localizations_links`
--

LOCK TABLES `imoveis_localizations_links` WRITE;
/*!40000 ALTER TABLE `imoveis_localizations_links` DISABLE KEYS */;
INSERT INTO `imoveis_localizations_links` VALUES (2,1),(1,2);
/*!40000 ALTER TABLE `imoveis_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_form_submissions`
--

DROP TABLE IF EXISTS `lead_form_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_form_submissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  `mensagem` longtext,
  PRIMARY KEY (`id`),
  KEY `lead_form_submissions_created_by_id_fk` (`created_by_id`),
  KEY `lead_form_submissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `lead_form_submissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `lead_form_submissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_form_submissions`
--

LOCK TABLES `lead_form_submissions` WRITE;
/*!40000 ALTER TABLE `lead_form_submissions` DISABLE KEYS */;
INSERT INTO `lead_form_submissions` VALUES (1,'teste@gmail.com','seen','site','2022-03-29 22:26:30.619000','2022-03-29 22:26:30.619000',1,1,'# Teste de texto\n\n\n**Mensagem enviada**'),(2,'teste2@gmail.com','seen','site','2022-03-29 
22:27:50.166000','2022-03-29 22:27:50.166000',1,1,'# Teste de texto\n\n\n**Mensagem enviada**');
/*!40000 ALTER TABLE `lead_form_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `short_name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `oredem` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_created_by_id_fk` (`created_by_id`),
  KEY `pages_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `pages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `pages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','','2022-03-29 10:39:56.673000','2022-03-29 10:39:56.673000','2021-10-22 05:11:55.490000',NULL,NULL,'en',NULL),(2,'Pricing','pricing','2022-03-29 10:39:55.113000','2022-03-29 10:39:55.113000','2021-10-22 
05:11:55.490000',NULL,NULL,'en',NULL),(3,'Secret','secret','2022-03-29 10:39:55.088000','2022-03-29 10:39:55.088000',NULL,NULL,NULL,'en',NULL),(4,'Contact','contact','2022-03-29 10:39:55.104000','2022-03-29 10:39:55.104000','2021-10-22 
05:11:55.490000',NULL,NULL,'en',NULL),(5,'Home','','2022-03-29 10:39:56.672000','2022-03-29 10:39:56.672000','2021-10-22 05:11:55.490000',NULL,NULL,'fr',NULL),(6,'Pricing','pricing','2022-03-29 10:39:55.112000','2022-03-29 
10:39:55.112000','2021-10-22 05:11:55.490000',NULL,NULL,'fr',NULL),(7,'Secret','secret','2022-03-29 10:39:55.093000','2022-03-29 10:39:55.093000',NULL,NULL,NULL,'fr',NULL),(8,'Contact','contact','2022-03-29 10:39:55.100000','2022-03-29 
10:39:55.100000','2021-10-22 05:11:55.490000',NULL,NULL,'fr',NULL),(9,'Home','','2022-03-30 00:02:14.508000','2022-03-30 00:02:14.508000',NULL,1,1,'en',NULL),(10,'Seguro Auto','seguro-auto','2022-05-31 17:22:54.938000','2022-05-31 
17:38:14.356000','2022-05-31 17:22:56.455000',1,1,'pt-BR',1),(11,'Seguro Residencial','seguro-residencial','2022-05-31 17:24:22.151000','2022-05-31 17:38:23.357000','2022-05-31 17:24:23.252000',1,1,'pt-BR',2),(12,'Seguro de 
Vida','seguro-de-vida','2022-05-31 17:24:58.725000','2022-05-31 17:40:28.212000','2022-05-31 17:24:59.582000',1,1,'pt-BR',3),(13,'Seguro viagem','seguro-viagem','2022-05-31 17:26:03.669000','2022-05-31 17:37:50.667000','2022-05-31 
17:26:05.026000',1,1,'pt-BR',NULL),(14,'Seguro Bike','seguro-bike','2022-05-31 17:27:07.591000','2022-05-31 17:37:06.386000','2022-05-31 17:27:08.657000',1,1,'pt-BR',NULL),(15,'Investimento','investimento','2022-05-31 
17:28:21.441000','2022-05-31 17:36:13.857000','2022-05-31 17:28:22.468000',1,1,'pt-BR',NULL);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_components`
--

DROP TABLE IF EXISTS `pages_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned DEFAULT NULL,
  `component_id` int(10) unsigned DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pages_field_index` (`field`),
  KEY `pages_component_type_index` (`component_type`),
  KEY `pages_entity_fk` (`entity_id`),
  CONSTRAINT `pages_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_components`
--

LOCK TABLES `pages_components` WRITE;
/*!40000 ALTER TABLE `pages_components` DISABLE KEYS */;
INSERT INTO `pages_components` VALUES 
(1,3,7,'meta.metadata','metadata',1),(2,3,2,'sections.rich-text','contentSections',1),(3,7,9,'meta.metadata','metadata',1),(4,7,3,'sections.rich-text','contentSections',1),(5,8,10,'meta.metadata','metadata',1),(6,4,4,'meta.metadata','metadata',1),(7,8,4,'sections.rich-text','contentSections',1),(8,8,4,'sections.bottom-actions','contentSections',2),(9,4,1,'sections.rich-text','contentSections',1),(10,4,1,'sections.bottom-actions','contentSections',2),(11,6,8,'meta.metadata','metadata',1),(12,2,3,'meta.metadata','metadata',1),(13,6,2,'sections.pricing','contentSections',1),(14,2,1,'sections.pricing','contentSections',1),(15,5,6,'meta.metadata','metadata',1),(16,1,2,'meta.metadata','metadata',1),(17,5,2,'sections.hero','contentSections',1),(18,5,2,'sections.feature-rows-group','contentSections',2),(19,5,2,'sections.feature-columns-group','contentSections',3),(20,5,2,'sections.testimonials-group','contentSections',4),(21,5,2,'sections.lead-form','contentSections',5),(22,5,3,'sections.bottom-actions','contentSections',6),(23,1,1,'sections.hero','contentSections',1),(24,1,1,'sections.feature-rows-group','contentSections',2),(25,1,1,'sections.feature-columns-group','contentSections',3),(26,1,1,'sections.testimonials-group','contentSections',4),(27,1,1,'sections.lead-form','contentSections',5),(28,1,2,'sections.bottom-actions','contentSections',6),(29,9,12,'meta.metadata','metadata',1),(30,9,3,'sections.hero','contentSections',1),(31,9,3,'sections.feature-rows-group','contentSections',2),(32,9,3,'sections.feature-columns-group','contentSections',3),(33,9,3,'sections.testimonials-group','contentSections',4),(34,9,3,'sections.lead-form','contentSections',5),(35,9,5,'sections.bottom-actions','contentSections',6),(45,15,18,'meta.metadata','metadata',1),(47,14,17,'meta.metadata','metadata',1),(50,13,16,'meta.metadata','metadata',1),(51,10,13,'meta.metadata','metadata',1),(52,11,14,'meta.metadata','metadata',1),(54,12,15,'meta.metadata','metadata',1);
/*!40000 ALTER TABLE `pages_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_localizations_links`
--

DROP TABLE IF EXISTS `pages_localizations_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_localizations_links` (
  `page_id` int(10) unsigned DEFAULT NULL,
  `inv_page_id` int(10) unsigned DEFAULT NULL,
  KEY `pages_localizations_links_fk` (`page_id`),
  KEY `pages_localizations_links_inv_fk` (`inv_page_id`),
  CONSTRAINT `pages_localizations_links_fk` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `pages_localizations_links_inv_fk` FOREIGN KEY (`inv_page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_localizations_links`
--

LOCK TABLES `pages_localizations_links` WRITE;
/*!40000 ALTER TABLE `pages_localizations_links` DISABLE KEYS */;
INSERT INTO `pages_localizations_links` VALUES (3,7),(7,3),(8,4),(4,8),(6,2),(2,6),(5,1),(1,5);
/*!40000 ALTER TABLE `pages_localizations_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicos`
--

DROP TABLE IF EXISTS `servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `servicos_created_by_id_fk` (`created_by_id`),
  KEY `servicos_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `servicos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `servicos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicos`
--

LOCK TABLES `servicos` WRITE;
/*!40000 ALTER TABLE `servicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sobres_nos`
--

DROP TABLE IF EXISTS `sobres_nos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sobres_nos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sobres_nos_created_by_id_fk` (`created_by_id`),
  KEY `sobres_nos_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `sobres_nos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `sobres_nos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sobres_nos`
--

LOCK TABLES `sobres_nos` WRITE;
/*!40000 ALTER TABLE `sobres_nos` DISABLE KEYS */;
/*!40000 ALTER TABLE `sobres_nos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_api_tokens`
--

DROP TABLE IF EXISTS `strapi_api_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_api_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_api_tokens`
--

LOCK TABLES `strapi_api_tokens` WRITE;
/*!40000 ALTER TABLE `strapi_api_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_api_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_core_store_settings`
--

DROP TABLE IF EXISTS `strapi_core_store_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_core_store_settings`
--

LOCK TABLES `strapi_core_store_settings` WRITE;
/*!40000 ALTER TABLE `strapi_core_store_settings` DISABLE KEYS */;
INSERT INTO `strapi_core_store_settings` VALUES 
(1,'strapi_content_types_schema','{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}igurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"emurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mlse,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"onnection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api 
Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api 
Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"stri\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configufo\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"typalse,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manaer\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"us"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updat\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":ffalse}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"plugin::comments.comment\":{\"info\":{\"tableName\":\"plugin-comments-comments\",\"singularName\":\"comment\",\"pluralName\":ons.user\",\"configurable\":false},\"authorId\":{\"type\":\"string\",\"configurable\":false},\"authorName\":{\"type\":\"string\",\"configurable\":false},\"authorEmail\":{\"type\":\"email\",\"configurable\":false},\"authorAvatar\":{\"type\":\"string\",\"configurable\":false},\"removed\":{\"type\":\"boolean\",\"configurable\":false},\"approvalStype\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"tableName\":\"plugin-comments-comments\",\"singularName\":\"comment\",\"pluralName\":\"comments\",\Id\":{\"type\":\"string\",\"configurable\":false},\"authorName\":{\"type\":\"string\",\"configurable\":false},\"authorEmail\":{\"type\":\"email\",\"configurable\":false},\"authorAvatar\":{\"type\":\"string\",\"configurable\":false},\"removed\":{\"type\":\"boolean\",\"configurable\":false},\"approvalStatus\":{\"type\":reports\",\"singularName\":\"comment-report\",\"pluralName\":\"comment-reports\",\"displayName\":\"Reports\",\"description\":\"Reports 
content 
type\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"ve\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"tableName\":\"plugin-cments.comment\",\"inversedBy\":\"reports\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"comment-report\",\"connection\":\"default\",\"uid\":\"plugin::comments.comment-report\",\"plugin\":\"comments\",\"collectionName\":\"comments_comm\"},\"bodyText\":{\"type\":\"text\"},\"enabled\":{\"type\":\"boolean\",\"default\":true},\"tags\":{\"type\":\"json\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"email_templates\",\type\":\"integer\",\"required\":false,\"unique\":true},\"design\":{\"type\":\"json\"},\"name\":{\"type\":\"string\"},\"subject\":{\"type\":\"string\"},\"bodyHtml\":{\"type\":\"text\"},\"bodyText\":{\"type\":\"text\"},\"enabled\":{\"type\":\"boolean\",\"default\":true},\"tags\":{\"type\":\"json\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"email-template\",\"connection\":\"default\",\"uid\":\"plugin::email-designer.email-template\",\"plugin\":\"email-designer\",\"globalId\":\"EmailDesignerEmailTemplate\"},\"api::banner.banner\":{\"kind\":\"collectionType\",\"collectionName\":\"banners\",\"info\":{\"singularName\":\"banner\",\"pluralName\":\"banners\",\"displayName\":\"Banner\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"Imagem\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"Texto_banner\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"Button\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"Exibir_botao\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"boolean\",\"default\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::banner.banner\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"banners\",\"info\":{\"singularName\":\"banner\",\"pluralName\":\"banners\",\"displayName\":\"Banner\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"Imagem\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"Texto_banner\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"Button\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\"},\"Exibir_botao\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"boolean\",\"default\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"banner\",\"connection\":\"default\",\"uid\":\"api::banner.banner\",\"apiName\":\"banner\",\"globalId\":\"Banner\",\"actions\":{}log\",\"pluralName\":\"blogs\",\"displayName\":\"Blog\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"thumbnail\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"required\":true},\"banner\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"share_thumbnail\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"required\":true},\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"unique\":true,\"required\":truee\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"targetes\"],\"type\":\"media\",\"multiple\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"required\":true},\"banner\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"share_thumbnail\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"required\":true},\"title\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"unique\":true,\"required\":true},\"description\":{\"pluginOptgerais\",\"info\":{\"singularName\":\"dados-geral\",\"pluralName\":\"dados-gerais\",\"displayName\":\"Dados 
gerais\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"logo\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"favicon\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\"],\"plug"string\",\"regex\":\"[\\\\+]?[0-9]{0,3}[-\\\\s\\\\.]?[(]?[0-9]{1,4}[)]?[\\\\s]?[0-9]{1}[-\\\\s\\\\.]?[0-9]{1,4}[-\\\\s\\\\.]?[0-9]{1,4}\",\"default\":\"+55 
62 9 
9999-9999\"},\"contact_email\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"email\"},\"full_address\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\"},\"short_about\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\"},\"google_mapsable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::dados-geral.dados-geral\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"dados_gerais\",\"info\":{\"singularName\":\"dados-geral\",\"pluralName\":\"dados-gerais\",\"displayName\":\"Dados 
gerais\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"logo\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"favicon\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"company_name\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"required\":true,\"default\":\"My 
Company\"},\"call_phone_number\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"default\":\"+55 (62) 9 
9999-9999\",\"regex\":\"[\\\\+]?[0-9]{0,3}[-\\\\s\\\\.]?[(]?[0-9]{1,4}[)]?[\\\\s]?[0-9]{1}[-\\\\s\\\\.]?[0-9]{1,4}[-\\\\s\\\\.]?[0-9]{1,4}\"},\"whatsapp_phone_number\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"regex\":\"[\\\\+]?[0-9]{0,3}[-\\\\s\\\\.]?[(]?[0-9]{1,4}[)]?[\\\\s]?[0-9]{1}[-\\\\s\\\\.]?[0-9]{1,4}[-\\\\s\\\\.]?[0-9]{1,4}\",\"default\":\"+55 
62 9 
9999-9999\"},\"contact_email\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"email\"},\"full_address\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\"},\"short_about\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"richtext\"},\"google_maps_embed_link\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"text\",\"default\":\"https://www.google.com/maps/embed?pb=\"},\"pagina\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::page.page\"}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"dados-geral\",\"connection\":\"default\",\"uid\":\"api::dados-geral.dados-geral\",\"apiName\":\"dados-geral\",\"globalId\":\"DadosGeral\",\"actions\":{},\"lifecycles\":{}},\"api::global.global\":{\"kind\":\"singleType\",\"collectionName\":\"globals\",\"info\":{\"singularName\":\"global\",\"pluralName\":\"globals\",\"displayName\":\"Geral\",\"name\":\"global\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"metadata\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"meta.metadata\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"metaTitleSuffix\":{\"type\":\"string\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"favicon\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"notificationBanner\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"elements.notification-banner\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"navbar\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"layout.navbar\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"footer\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"layout.footer\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::global.global\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"globals\",\"info\":{\"singularName\":\"global\",\"pluralName\":\"globals\",\"displayName\":\"Geral\",\"name\":\"global\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"metadata\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"meta.metadata\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"metaTitleSuffix\":{\"type\":\"string\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"favicon\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"notificationBanner\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"elements.notification-banner\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"navbar\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"layout.navbar\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"footer\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"layout.footer\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"global\",\"connection\":\"default\",\"uid\":\"api::global.global\",\"apiName\":\"global\",\"globalId\":\"Global\",\"actions\":{},\"lifecycles\":{}},\"api::imovel.imovel\":{\"kind\":\"collectionType\",\"collectionName\":\"imoveis\",\"info\":{\"singularName\":\"imovel\",\"pluralName\":\"imoveis\",\"displayNam"attributes\":{\"imagens\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"titulo\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"required\":true,\"unique\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"con\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"imoveis\",\"info\":{\"singularName\":\"imovel\",\"pluralName\":\"imoveis\",\"displayName\":\"Imóveis\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"imagens\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"titulo\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"string\",\"required\":true,\"unique\":true}},\"kind\":\"collectionType\"},\"mods\",\"displayName\":\"Lead 
cadastrado\",\"name\":\"lead-form-submission\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"email\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"seen\",\"contacted\",\"ignored\"]},\"location\":{\"type\":\"string\"},\"mensagem\":{\"type\":\"richtext\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\yName\":\"Lead 
cadastrado\",\"name\":\"lead-form-submission\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"email\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"seen\",\"contacted\",\"ignored\"]},\"location\":{\"type\":\"string\"},\"mensagem\":{\"type\":\"richtext\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"lead-form-submission\",\"connectioibutes\":{\"shortName\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"metadata\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"meta.metadata\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"contentSections\":{\"type\":\"dynamiczone\",\"components\":[\"sections.bottom-actions\",\"sections.feature-columns-group\",\"sections.feature-rows-group\",\"sections.hero\",\"sections.large-video\",\"sections.lead-form\",\"sections.pricing\",\"sections.rich-text\",\"sections.testimonials-group\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"slug\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"string\",\"regex\":\"^$|^[a-zA-Z/-]+$\"},\"icone\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"oredem\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"integer\",\"min\":1,\"max\":40,\"default\":1},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::page.page\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"pages\",\"info\":{\"singularName\":\"page\",\"pluralName\":\"pages\",\"displayName\":\"Página\",\"name\":\"page\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"shortName\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"metadata\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"meta.metadata\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"contentSections\":{\"type\":\"dynamiczone\",\"components\":[\"sections.bottom-actions\",\"sections.feature-columns-group\",\"sections.feature-rows-group\",\"sections.hero\",\"sections.large-video\",\"sections.lead-form\",\"sections.pricing\",\"sections.rich-text\",\"sections.testimonials-group\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"slug\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"string\",\"regex\":\"^$|^[a-zA-Z/-]+$\"},\"icone\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"oredem\":{\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"type\":\"integer\",\"min\":1,\"max\":40,\"default\":1}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"page\",\"connection\":\"default\",\"uid\":\"api::page.page\",\"apiName\":\"page\",\"globalId\":\"Page\",\"actions\":{},\"lifecycles\":{}},\"api::servico.servico\":{\"kind\":\"collectionType\",\"collectionName\":\"servicos\",\"info\":{\"singularName\":\"servico\",\"pluralName\":\"servicos\",\"displayName\":\"Serviços\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"icon\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"required\":true},\"banner\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"required\":true},\"title\":{\"type\":\"string\",\"unique\":true,\"required\":true,\"minLength\":3},\"description\":{\"type\":\"richtext\",\"required\":trutrue,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"servicos\",\"info\":{\"singularName\":\"servico\",\"pluralName\":\"servicos\",\"displayName\":\"Serviços\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"icon\":{\"allowedTypes\":[\"images\"],\"type\",\"modelName\":\"servico\",\"connection\":\"default\",\"uid\":\"api::servico.servico\",\"apiName\":\"servico\",\"globalId\":\"Servico\",\"actions\":{},\"lifecycles\":{}},\"api::sobre-nos.sobre-nos\":{\"kind\":\"singleType\",\"collectionName\":\"sobres_nos\",\"info\":{\"singularName\":\"sobre-nos\",\"pluralName\":\"sobres-nos\",\"displayName\":\"Sobre 
Nós\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"logo\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"required\":true},\"title\":{\"type\":\"string\",\"required\":true},\"description\":{\"t":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"sobres_nos\",\"info\":{\"singularName\":\"sobre-nos\",\"pluralName\":\"sobres-nos\",\"displayName\":\"Sobre 
Nós\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"logo\":{\"allowedTypes\":[\"images\"],\"type\":\"media\",\"multiple\":false,\"required\":true},\"title\":{\"type\":\"string\",\"re"tipos-de-servicos\",\"displayName\":\"Tipos 
de 
serviços\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"tipos_de_servicos\",\"info\":{\"singularName\":\"tipo-de-servico\",\"pluralName\":\"tipos-de-servicos\",\"displayName\":\"Tipos 
de 
serviços\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"tipo-de-servico\",\"connection\":\"default\",\"uid\":\"api::tipo-de-servico.tipo-de-servico\",\"apiName\":\"tipo-de-servico\",\"globalId\":\"TipoDeServico\",\"actions\":{},\"lifecycles\":{}}}','object',NULL,NULL),(2,'plugin_content_manager_configuration_components::elements.logos','{\"uid\":\"elements.logos\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"logo\":{\"edit\":{\"label\":\"logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"logo\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"logo\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"logo\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(3,'plugin_content_manager_configuration_components::elements.feature-row','{\"uid\":\"elements.feature-row\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"media\":{\"edit\":{\"label\":\"media\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"media\",\"searchable\":false,\"sortable\":false}},\"link\":{\"edit\":{\"label\":\"link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"link\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"description\",\"media\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"media\",\"size\":6}],[{\"name\":\"link\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(4,'plugin_content_manager_configuration_components::elements.feature','{\"uid\":\"elements.feature\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\"],\"edit\":[[{\"name\":\"name\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(5,'plugin_content_manager_configuration_components::elements.plan','{\"uid\":\"elements.plan\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"descriptie\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"features\":{\"edit\":{\"label\":\"features\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"features\",\"searchable\":false,\"sortable\":false}},\"isRecommended\":{\"edit\":{\"label\":\"isRecommended\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isRecommended\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"price\",\"searchable\":true,\"sortable\":true}},\"pricePeriod\":{\"edit\":{\"label\":\"pricePeriod\",\"description\",\"size\":6}],[{\"name\":\"features\",\"size\":12}],[{\"name\":\"isRecommended\",\"size\":4},{\"name\":\"price\",\"size\":4}],[{\"name\":\"pricePeriod\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(6,'plugin_content_manager_configuration_components::elements.testimonial','{\"uid\":\"elements.testimonial\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"authorName\",\"defaultSortBy\":\"authorName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false"text\":{\"edit\":{\"label\":\"text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"text\",\"searchable\":true,\"sortable\":true}},\"authorName\":{\"edit\":{\"label\":\"authorName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"authorName\",\"searchable\":true,\"sortable\":true}},\"authorTitle\":{\"edit\":{\"label\":\"authorTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"authorTitle\ze\":6},{\"name\":\"link\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(7,'plugin_content_manager_configuration_components::layout.navbar','{\"uid\":\"layout.navbar\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"links\":{\"edit\":{\\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"links\",\"button\",\"logo\"],\"edit\":[[{\"name\":\"links\",\"size\":12}],[{\"name\":\"button\",\"size\":12}],[{\"name\":\"logo\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object',NULL,NULL),(8,'plugin_content_manager_configuration_components::links.button-link','{\"uid\":\"links.button-link\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\"edit\":{\"label\":\"text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"text\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"url\",\"newTab\",\"text\"],\"edit\":[[{\le\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"buttons\":{\"edit\":{\"label\":\"buttons\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"buttons\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"iription\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"text\",\"searchable\":false,\"sortable\":false}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\"],\"edit\":[[{\"na,\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible:{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"links\":{\"edit\":{\"label\":\"links\",\"description\":\"\",\"placeholder\":rtable\":false}},\"logo\":{\"edit\":{\"label\":\"logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"logo\",\"searchable\":false,\"sortable\":false}},\"columns\":{\"edit\":{\"label\":\"columns\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":,\"pageSize\":10,\"mainField\":\"metaTitle\",\"defaultSortBy\":\"metaTitle\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"metaTitle\":{\"edit\":{\"label\":\"metaTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"edichable\":true,\"sortable\":true}},\"twitterUsername\":{\"edit\":{\"label\":\"twitterUsername\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"twitterUsername\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"metaTitle\",\"metaDescriptio"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"text\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searcue},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"video\{\"uid\":\"sections.pricing\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"se,\"searchable\":true,\"pageSize\":10,\"mainField\":\"url\",\"defaultSortBy\":\"url\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\"ugin_content_manager_configuration_components::sections.feature-rows-group','{\"uid\":\"sections.feature-rows-group\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrdertOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"features\":{\"edit\":{\"label\":\"features\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label"sortable\":true}},\"label\":{\"edit\":{\"label\":\"label\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"label\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"descriptioble\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"label\",\"description\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"label\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"picture\",\"size\":6}],[{\"name\":\"smallTe,\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"link\":{\"edit\":{\"label\":\"link\",\"description\":\"\",\"placeholder\":\"\",\"visible\\":[]},\"isComponent\":true}','object',NULL,NULL),(23,'plugin_content_manager_configuration_components::sections.rich-text','{\"uid\":\"sections.rich-text\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":tSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editablen\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"emailPlaceholder\",\"size\":6}],[{\"name\":\"submitButton\",\"size\":12}],[{\"name\":\"location\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}','object',NU\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\""label\":\"status\",\"searchable\":true,\"sortable\":true}},\"location\":{\"edit\":{\"label\":\"location\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"location\",\"tion\",\"size\":6}],[{\"name\":\"mensagem\",\"size\":12}]],\"editRelations\":[]}}','object',NULL,NULL),(27,'plugin_content_manager_configuration_content_types::admin::api-token','{\"uid\":\"admin::api-token\",\"settinarchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":gs\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"labe\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sorion\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholaceholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\','{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"edigin::users-permissions.permission','{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"roltrue},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editab\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\sible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placehold\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"descriptionplaceholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",chable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"seaame\",\"code\",\"createdAt\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}','object',NULL,NULL),(34,'plugin_content_manageeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\e\":\"blocked\",\"size\":4}]]}}','object',NULL,NULL),(35,'plugin_content_manager_configuration_content_types::api::page.page','{\"uid\":\"api::page.page\",\"settings\":{\hable\":false,\"sortable\":false}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"labe\"edit\":[[{\"name\":\"icone\",\"size\":6},{\"name\":\"shortName\",\"size\":6}],[{\"name\":\"slug\",\"size\":6}],[{\"name\":\"metadata\",\"size\":12}],[{\"name\":\"co\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaTitleSuffix\",\"searchable\":true,\"sortable\":true}},\"favicon\":{\"edit\":{\"lab\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"labe"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callecret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callbaet\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid 
email\"],\"subdomain\":\"my.subdomain.com/cas\"}}','object',NULL,NULL),(39,'plugin_users-pp><%= URL %>?confirmation=<%= CODE 
%></p>\\n\\n<p>Thanks.</p>\"}}}','object',NULL,NULL),(40,'plugin_users-permissions_advanced','{\"unique_email\":true,\"all"label\":\"templateReferenceId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"templateReferenceId\",\iption\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"bodyText\",\"searchable\":true,\"sortable\":trs\":[],\"edit\":[[{\"name\":\"templateReferenceId\",\"size\":4}],[{\"name\":\"design\",\"size\":12}],[{\"name\":\"name\",\"size\":6},{\"name\":ble\":true,\"editable\":true},\"list\":{\"label\":\"reason\",\"searchable\":true,\"sortable\":true}},\"resolved\":{\"edit\":{\"label\":\"resolved\",\"desed\"],\"edit\":[[{\"name\":\"content\",\"size\":6},{\"name\":\"reason\",\"size\":6}],[{\"name\":\"resolved\",\"size\":4}]]}}','object',NULL,NULL),(46,'placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blockedThread\",\"searchable\":true,\"sortable\":true}},\"blockReason\":{\"edit\":{\"label\":\"blockReason\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blockReason\",\"searchable\":true,\"sortable\":true}},\"authorUser\":{\"edit\":{\"label\":\"authorUser\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"authorUser\",\"searchable\":true,\"sortable\":true}},\"authorId\":{\"edit\":{\"label\":\"authorId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"authorId\",\"searchable\":true,\"sortable\":true}},\"authorName\":{\"edit\":{\"label\":\"authorName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"authorName\",\"searchable\":true,\"sortable\":true}},\"authorEmail\":{\"edit\":{\"label\":\"authorEmail\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"authorEmail\",\"searchable\":true,\"sortable\":true}},\"authorAvatar\":{\"edit\":{\"label\":\"authorAvatar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"authorAvatar\",\"searchable\":true,\"sortable\":true}},\"removed\":{\"edit\":{\"label\":\"removed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"removed\",\"searchable\":true,\"sortable\":true}},\"approvalStatus\":{\"edit\":{\"label\":\"approvalStatus\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"approvalStatus\",\"searchable\":true,\"sortable\":true}},\"related\":{\"edit\":{\"label\":\"related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"related\",\"searchable\":true,\"sortable\":true}},\"reports\":{\"edit\":{\"label\":\"reports\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"reports\",\"searchable\":false,\"sortable\":false}},\"threadOf\":{\"edit\":{\"label\":\"threadOf\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"blockReason\"},\"list\":{\"label\":\"threadOf\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"content\",\"blocked\",\"blockedThread\"],\"editRelations\":[\"authorUser\",\"reports\",\"threadOf\"],\"edit\":[[{\"name\":\"content\",\"size\":6},{\"nameme\":\"blockedThread\",\"size\":4},{\"name\":\"blockReason\",\"size\":6}],[{\"name\":\"authorId\",\"size\":6},{\"name\":\"authorName\",\"size\":6}],[{\"name\":\"authorEmail\",\"size\":6},{\"name\":\"authorAvatar\",\"size\":6}],[{\"name\":\"removed\",\"size\":4},{\"name\":\"approvalStatus\",\"size\":6}],[{\"name\":\"related\",\"size\":6}]]}}','object',NULL,NULL),(47,'plugin_content_manager_configuration_content_types::api::tipo-de-servico.tipo-de-servico','{\"uid\":\"api::tipo-de-servico.tipo-de-servico\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"createdAt\",\"updatedAt\"],\"editRelations\":[],\"edit\":[[{\"name\":\"title\",\"size\":6}]]}}','object',NULL,NULL),(48,'plugin_content_manager_configuration_content_types::api::sobre-nos.sobre-nos','{\"uid\":\"api::,\"list\":{\"label\":\"logo\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editab\"size\":6}],[{\"name\":\"description\",\"size\":12}]]}}','object',NULL,NULL),(49,'plugin_content_manager_configuration_content_types::api::blog.blog','{\"uid\":\"api::blog.blog\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"thumbnail\":{\"edit\":{\"label\":\"thumbnail\",\"description\":\"\",\"ail\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":false,\"sortel\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"thumbnail\",\"banner\",\"share_thumbnail\"],\"editRelations\":[],\"edit\":[[{\"name\":\"thumbnail\",\"size\":6},{\"name\":\"banner\",\"size\":6}],[{\"name\":\"share_thumbnail\",\"size\":6},{\"name\":\"title\",\"size\":6}],[{\"name\":\"description\",\"size\":12}],[{\"name\":\"article_create_date\",\"size\":6}]]}}','object',NULL,NULL),(50,'plug:false}},\"favicon\":{\"edit\":{\"label\":\"favicon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"favicon\",\"searchable\":false,\"sortable\":false}},\"company_name\":{\"edit\":{\"label\":\"company_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"company_name\",\"searchable\":true,\"sortable\":true}},\"cal{\"label\":\"contact_email\",\"searchable\":true,\"sortable\":true}},\"full_address\":{\"edit\":{\"label\":\"full_address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"full_address\",\"searchable\":false,\"sortable\":false}},\"short_about\":{\"edit\":{\"label\":\"short_about\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"ediplaceholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"logo\",\"favic":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"sear\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":t:{\"edit\":{\"label\":\"imagens\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"imagens\",\"searchable\":false,\"sortable\":false}},\"titulo\":{\"edit\":{\"label\":\"titulo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tint_types::api::banner.banner','{\"uid\":\"api::banner.banner\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Texto_banner\",\"defaultSortBy\":\"Texto_banner\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchab"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Exibir_botao\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\"cs_client     
= @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_database_schema` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) 
DE"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"def\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissilse,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files\",\"indexes\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"comments_comment\",\"indexes\":[{\"name\":\"comments_comment_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"comments_comment_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"comments_comment_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"},{\"name\":\"comments_comment_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"content\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked_thread\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"block_reason\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"author_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"author_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"author_email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"author_avatar\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"removed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"approval_status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"related\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"comments_comment-report\",\"indexes\":[{\"name\":\"comments_comment-report_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"comments_comment-report_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"comments_comment-report_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"},{\"name\":\"comments_comment-report_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"content\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reason\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"resolved\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"email_templates\",\"indexes\":[{\"name\":\"email_templates_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"email_templates_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"email_templates_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"},{\"name\":\"email_templates_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"template_reference_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"design\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"body_html\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"body_text\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tags\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"banners\",\"indexes\":[{\"name\":\"banners_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"banners_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"banners_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"},{\"name\":\"banners_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"texto_banner\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"button\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"exibir_botao\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"blogs\",\"indexes\":[{\"name\":\"blogs_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"blogs_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"blogs_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"},{\"name\":\"blogs_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"article_create_date\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"dados_gerais\",\"indexes\":[{\"name\":\"dados_gerais_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"dados_gerais_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"dados_gerais_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"},{\"name\":\"dados_gerais_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"company_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"call_phone_number\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"whatsapp_phone_number\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"contact_email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"full_address\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"short_about\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"google_maps_embed_link\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"globals\",\"indexes\":[{\"name\":\"globals_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"globals_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"globals_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"},{\"name\":\"globals_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"meta_title_suffix\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"imoveis\",\"indexes\":[{\"name\":\"imoveis_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"imoveis_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"imoveis_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"},{\"name\":\"imoveis_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"titulo\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"lead_form_submissions\",\"indexes\":[{\"name\":\"lead_form_submissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"lead_form_submissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"lead_form_submissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"},{\"name\":\"lead_form_submissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"location\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mensagem\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"pages\",\"indexes\":[{\"name\":\"pages_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"pages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"pages_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"},{\"name\":\"pages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"short_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"slug\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"oredem\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"servicos\",\"indexes\":[{\"name\":\"servicos_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"servicos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"servicos_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"},{\"name\":\"servicos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"sobres_nos\",\"indexes\":[{\"name\":\"sobres_nos_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"sobres_nos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"sobres_nos_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"},{\"name\":\"sobres_nos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"tipos_de_servicos\",\"indexes\":[{\"name\":\"tipos_de_servicos_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"tipos_de_servicos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"tipos_de_servicos_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"},{\"name\":\"tipos_de_servicos_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET 
NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"components_slices_feature_columns\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_slices_feature_rows\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_elements_features\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_links_footer_sections\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_elements_logos\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_elements_notification_banners\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"text\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_elements_plans\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_recommended\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"price\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"price_period\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_slices_testimonials\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"text\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"author_name\",\"type\":\se},{\"name\":\"link\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_layout_footers\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"small_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_layout_navbars\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false}]},b\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_links_simple_buttons\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"text\",\"type\":\"string\",\"ng\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"new_tab\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_meta_metadata\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\se}]},{\"name\":\"components_slices_bottom_actions\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_slices_feature_columns_groups\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increme:false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"label\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"small_text_with_link\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":nuls\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email_placeholder\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"location\",\"type\ll,\"notNullable\":true,\"unsigned\":false},{\"name\":\"content\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_slices_testimonials_groups\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":fs\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_related_morphs\",\"indexes\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"]}],\"foreignKeys\":[{\"name\":\"files,\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_links\",\"indexes\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_links_fk\",\"co\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"},{\"name\":\"comments_comment_author_user_links_inv_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"comment_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\ASCADE\"}],\"columns\":[{\"name\":\"comment_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_comment_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"comments_comment_report_relatee\":false,\"unsigned\":true},{\"name\":\"comment_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"banners_localizations_links\",\"indexes\":[{\"name\":\"banners_localizations_links_fk\",\"columns\":[\"banner_id\"]},{\"name\":\"bannersme\":\"blogs_localizations_links_fk\",\"columns\":[\"blog_id\"]},{\"name\":\"blogs_localizations_links_inv_fk\",\"columns\":[\"inv_blog_id\"]}],\"foreignKeys\":[{\"name\":\"blogs_localizations_links_fk\",\"columns\":[\"blog_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"blogs\_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"dados_gerais\",\"onDelete\":\"CASCADE\"},{\"name\":\"dados_gerais_pagina_links_inv_fk\",\"columns\":[\"page_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"pages\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"nams_geral_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"dados_gerais\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"dados_geral_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_dados_geral_io\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":referencedTable\":\"globals\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"global_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_global_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\el_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"pages_components\",\"indexes\":[{\"name\":\"pages_field_index\",\"columns\":[\"field\"],\"type\":null},{\"name\":\"pages_component_type_id\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":0,\"notNullable\":false,\"unsigned\":t]},{\"name\":\"components_slices_feature_rows_components\",\"indexes\":[{\"name\":\"components_slices_feature_rows_field_index\",\"columns\":[\"field\"],\"type\":null},{\"name\":\"components_slices_feature_rows_component_type_index\\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"dname\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},referencedColumns\":[\"id\"],\"referencedTable\":\"components_elements_plans\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,ters_component_type_index\",\"columns\":[\"component_type\"],\"type\":null},{\"name\":\"components_layout_footers_entity_fk\",\"columns\":[\"entity_id\"]}],\"foreignKeys\":[{\"name\":\"components_layout_footers_entity_fk\",\"\":[],\"defaultTo\":0,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"components_layout_navbars_components\",\"indexes\":[{\"name\":\"components_layout_navbars_field_index\",\"columns\":[\"field\"],\"type\":null},{\\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"e\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_id\",\"type\":\"integer\",\"args\":[],\"defaulteignKeys\":[{\"name\":\"components_slices_feature_columns_groups_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"components_slices_feature_columns_groups\",\"onDeletendexes\":[{\"name\":\"components_slices_feature_rows_groups_field_index\",\"columns\":[\"field\"],\"type\":null},{\"name\":\"components_slices_feature_rows_groups_component_type_index\",\"columns\":[\"componelable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defnotNullable\":false,\"unsigned\":true},{\"name\":\"component_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"str"components_sections_lead_forms\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsignes\":[\"component_type\"],\"type\":null},{\"name\":\"components_sections_pricings_entity_fk\",\"columns\":[\"entity_id\"]}],\"foreignKeys\":[{\"name\":\"components_sections_pricings_entity_fk\",\"coNullable\":false,\"unsigned\":true}]},{\"name\":\"components_slices_testimonials_groups_components\",\"indexes\":[{\"name\":\"components_slices_testimonials_groups_field_index\",\"columns\":[\nsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\ations`
--

LOCK TABLES `strapi_migrations` WRITE;
/*!40000 ALTER TABLE `strapi_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Ta EXISTS `tipos_de_servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos_de_servicos` (
  `id` int(10)os_de_servicos`
--

LOCK TABLES `tipos_de_servicos` WRITE;
/*!40000 ALTER TABLE `tipos_de_servicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipos_de_servicos` ENABLE KEYS */;
UNLOCK TABated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--,NULL),(12,'api::page.page.find','2022-03-29 10:39:55.049000','2022-03-29 10:39:55.049000',NULL,NULL),(13,'api::page.page.findOne','2022-03-29 10:39:55.049000','2022-03-29 10:39:55ULL,NULL),(22,'api::sobre-nos.sobre-nos.find','2022-05-31 
17:19:08.037000','2022-05-31 17:19:08.037000',NULL,NULL),(23,'api::tipo-de-servico.tipo-de-servico.findOne','2022-05-31 17:19:08.037000','2022-05-31 
17:19:08.037000',NULL,NULL),(24,'api::lead-form-submission.lead-form-submission.findOne','2022-05-31 17:19:08.036000','2022-05-31 17:19:08.036000',NULL,NULL),(25,'api::lead-form-submission.lead-form-submission.find','2022-05-31 
17:19:08.036000','2022-05-31 17:19:08.036000',NULL,NULL),(26,'api::tipo-de-servico.tipo-de-servico.find','2022-05-31 17:19:08.037000','2022-05-31 17:19:08.037000',NULL,NULL),(27,'api::servico.servico.findOne','2022-05-31 
17:19:08.037000','2022-05-31 17:19:08.037000',NULL,NULL),(28,'plugin::content-type-builder.components.getComponents','2022-05-31 17:19:08.037000','2022-05-31 
17:19:08.037000',NULL,NULL),(29,'plugin::content-type-builder.components.getComponent','2022-05-31 17:19:08.037000','2022-05-31 17:19:08.037000',NULL,NULL),(30,'plugin::content-type-builder.content-types.getContentTypes','2022-05-31 
17:19:08.037000','2022-05-31 17:19:08.037000',NULL,NULL),(31,'plugin::content-type-builder.content-types.getContentType','2022-05-31 17:19:08.037000','2022-05-31 17:19:08.037000',NULL,NULL),(32,'plugin::email.email.send','2022-05-31 
17:19:08.037000','2022-05-31 17:19:08.037000',NULL,NULL),(33,'plugin::upload.content-api.find','2022-05-31 17:19:08.037000','2022-05-31 17:19:08.037000',NULL,NULL),(34,'plugin::upload.content-api.findOne','2022-05-31 
17:19:08.037000','2022-05-31 17:19:08.037000',NULL,NULL),(35,'plugin::upload.content-api.count','2022-05-31 17:19:08.037000','2022-05-31 17:19:08.037000',NULL,NULL),(36,'plugin::i18n.locales.listLocales','2022-05-31 
17:19:08.037000','2022-05-31 17:19:08.037000',NULL,NULL),(37,'plugin::comments.client.findAllFlat','2022-05-31 17:19:08.037000','2022-05-31 17:19:08.037000',NULL,NULL),(38,'plugin::comments.client.findAllInHierarchy','2022-05-31 
17:19:08.037000','2022-05-31 17:19:08.037000',NULL,NULL);
/*!40000 ALTER TABLE `up_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_permissions_role_links`
--

DROP TABLE IF EXISTS `up_permissions_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `up_permissions_role_links` (
  `permission_id` int(10) unsigned DEFAULT NULL,
  `role_id` int(10) unsigned DEFAULT NULL,
  KEY `up_permissions_role_links_fk` (`permission_id`),
  KEY `up_permissions_role_links_inv_fk` (`role_id`),
  CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_permissions_role_links`
--

LOCK TABLES `up_permissions_role_links` WRITE;
/*!40000 ALTER TABLE `up_permissions_role_links` DISABLE KEYS */;
INSERT INTO `up_permissions_role_links` VALUES 
(1,1),(2,1),(6,2),(7,2),(5,2),(10,2),(12,2),(14,2),(13,2),(15,2),(16,2),(17,2),(19,2),(18,2),(22,2),(25,2),(21,2),(26,2),(20,2),(27,2),(24,2),(23,2),(37,2),(35,2),(29,2),(33,2),(28,2),(31,2),(34,2),(30,2),(36,2),(32,2),(38,2);
/*!40000 ALTER TABLE `up_permissions_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_roles`
--

DROP TABLE IF EXISTS `up_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `up_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_roles_created_by_id_fk` (`created_by_id`),
  KEY `up_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_roles`
--

LOCK TABLES `up_roles` WRITE;
/*!40000 ALTER TABLE `up_roles` DISABLE KEYS */;
INSERT INTO `up_roles` VALUES (1,'Authenticated','Default role given to authenticated user.','authenticated','2022-03-29 10:39:55.020000','2022-03-29 10:39:55.020000',NULL,NULL),(2,'Public','Default role given to unauthenticated 
user.','public','2022-03-29 10:39:55.021000','2022-05-31 17:19:08.013000',NULL,NULL);
/*!40000 ALTER TABLE `up_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_users`
--

DROP TABLE IF EXISTS `up_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `up_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) unsigned DEFAULT NULL,
  `updated_by_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `up_users_created_by_id_fk` (`created_by_id`),
  KEY `up_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_users`
--

LOCK TABLES `up_users` WRITE;
/*!40000 ALTER TABLE `up_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `up_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_users_role_links`
--

DROP TABLE IF EXISTS `up_users_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `up_users_role_links` (
  `user_id` int(10) unsigned DEFAULT NULL,
  `role_id` int(10) unsigned DEFAULT NULL,
  KEY `up_users_role_links_fk` (`user_id`),
  KEY `up_users_role_links_inv_fk` (`role_id`),
  CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_users_role_links`
--

LOCK TABLES `up_users_role_links` WRITE;
/*!40000 ALTER TABLE `up_users_role_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `up_users_role_links` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-03 21:22:47

