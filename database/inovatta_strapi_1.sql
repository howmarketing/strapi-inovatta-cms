-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 30/03/2022 às 06:00
-- Versão do servidor: 10.4.21-MariaDB
-- Versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `inovatta_strapi_1`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::content-manager.explorer.create', 'api::global.global', '{\"fields\":[\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"metaTitleSuffix\",\"favicon\",\"notificationBanner.text\",\"notificationBanner.type\",\"navbar.links.url\",\"navbar.links.newTab\",\"navbar.links.text\",\"navbar.button.url\",\"navbar.button.newTab\",\"navbar.button.text\",\"navbar.button.type\",\"navbar.logo\",\"footer.logo\",\"footer.columns.title\",\"footer.columns.links.url\",\"footer.columns.links.newTab\",\"footer.columns.links.text\",\"footer.smallText\"]}', '[]', '2022-03-29 10:39:55.111000', '2022-03-29 10:39:55.111000', NULL, NULL),
(2, 'plugin::content-manager.explorer.create', 'api::lead-form-submission.lead-form-submission', '{\"fields\":[\"email\",\"status\",\"location\"]}', '[]', '2022-03-29 10:39:55.117000', '2022-03-29 10:39:55.117000', NULL, NULL),
(3, 'plugin::content-manager.explorer.create', 'api::page.page', '{\"fields\":[\"shortName\",\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"contentSections\",\"slug\"]}', '[]', '2022-03-29 10:39:55.120000', '2022-03-29 10:39:55.120000', NULL, NULL),
(4, 'plugin::content-manager.explorer.read', 'api::global.global', '{\"fields\":[\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"metaTitleSuffix\",\"favicon\",\"notificationBanner.text\",\"notificationBanner.type\",\"navbar.links.url\",\"navbar.links.newTab\",\"navbar.links.text\",\"navbar.button.url\",\"navbar.button.newTab\",\"navbar.button.text\",\"navbar.button.type\",\"navbar.logo\",\"footer.logo\",\"footer.columns.title\",\"footer.columns.links.url\",\"footer.columns.links.newTab\",\"footer.columns.links.text\",\"footer.smallText\"]}', '[]', '2022-03-29 10:39:55.122000', '2022-03-29 10:39:55.122000', NULL, NULL),
(5, 'plugin::content-manager.explorer.read', 'api::lead-form-submission.lead-form-submission', '{\"fields\":[\"email\",\"status\",\"location\"]}', '[]', '2022-03-29 10:39:55.124000', '2022-03-29 10:39:55.124000', NULL, NULL),
(6, 'plugin::content-manager.explorer.read', 'api::page.page', '{\"fields\":[\"shortName\",\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"contentSections\",\"slug\"]}', '[]', '2022-03-29 10:39:55.125000', '2022-03-29 10:39:55.125000', NULL, NULL),
(7, 'plugin::content-manager.explorer.update', 'api::global.global', '{\"fields\":[\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"metaTitleSuffix\",\"favicon\",\"notificationBanner.text\",\"notificationBanner.type\",\"navbar.links.url\",\"navbar.links.newTab\",\"navbar.links.text\",\"navbar.button.url\",\"navbar.button.newTab\",\"navbar.button.text\",\"navbar.button.type\",\"navbar.logo\",\"footer.logo\",\"footer.columns.title\",\"footer.columns.links.url\",\"footer.columns.links.newTab\",\"footer.columns.links.text\",\"footer.smallText\"]}', '[]', '2022-03-29 10:39:55.127000', '2022-03-29 10:39:55.127000', NULL, NULL),
(8, 'plugin::content-manager.explorer.update', 'api::lead-form-submission.lead-form-submission', '{\"fields\":[\"email\",\"status\",\"location\"]}', '[]', '2022-03-29 10:39:55.128000', '2022-03-29 10:39:55.128000', NULL, NULL),
(9, 'plugin::content-manager.explorer.update', 'api::page.page', '{\"fields\":[\"shortName\",\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"contentSections\",\"slug\"]}', '[]', '2022-03-29 10:39:55.130000', '2022-03-29 10:39:55.130000', NULL, NULL),
(11, 'plugin::content-manager.explorer.delete', 'api::lead-form-submission.lead-form-submission', '{}', '[]', '2022-03-29 10:39:55.133000', '2022-03-29 10:39:55.133000', NULL, NULL),
(14, 'plugin::upload.read', NULL, '{}', '[]', '2022-03-29 10:39:55.146000', '2022-03-29 10:39:55.146000', NULL, NULL),
(15, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-03-29 10:39:55.162000', '2022-03-29 10:39:55.162000', NULL, NULL),
(16, 'plugin::upload.assets.update', NULL, '{}', '[]', '2022-03-29 10:39:55.164000', '2022-03-29 10:39:55.164000', NULL, NULL),
(17, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-03-29 10:39:55.166000', '2022-03-29 10:39:55.166000', NULL, NULL),
(18, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-03-29 10:39:55.168000', '2022-03-29 10:39:55.168000', NULL, NULL),
(19, 'plugin::content-manager.explorer.create', 'api::global.global', '{\"fields\":[\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"metaTitleSuffix\",\"favicon\",\"notificationBanner.text\",\"notificationBanner.type\",\"navbar.links.url\",\"navbar.links.newTab\",\"navbar.links.text\",\"navbar.button.url\",\"navbar.button.newTab\",\"navbar.button.text\",\"navbar.button.type\",\"navbar.logo\",\"footer.logo\",\"footer.columns.title\",\"footer.columns.links.url\",\"footer.columns.links.newTab\",\"footer.columns.links.text\",\"footer.smallText\"]}', '[\"admin::is-creator\"]', '2022-03-29 10:39:55.171000', '2022-03-29 10:39:55.171000', NULL, NULL),
(20, 'plugin::content-manager.explorer.create', 'api::lead-form-submission.lead-form-submission', '{\"fields\":[\"email\",\"status\",\"location\"]}', '[\"admin::is-creator\"]', '2022-03-29 10:39:55.181000', '2022-03-29 10:39:55.181000', NULL, NULL),
(21, 'plugin::content-manager.explorer.create', 'api::page.page', '{\"fields\":[\"shortName\",\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"contentSections\",\"slug\"]}', '[\"admin::is-creator\"]', '2022-03-29 10:39:55.183000', '2022-03-29 10:39:55.183000', NULL, NULL),
(22, 'plugin::content-manager.explorer.read', 'api::global.global', '{\"fields\":[\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"metaTitleSuffix\",\"favicon\",\"notificationBanner.text\",\"notificationBanner.type\",\"navbar.links.url\",\"navbar.links.newTab\",\"navbar.links.text\",\"navbar.button.url\",\"navbar.button.newTab\",\"navbar.button.text\",\"navbar.button.type\",\"navbar.logo\",\"footer.logo\",\"footer.columns.title\",\"footer.columns.links.url\",\"footer.columns.links.newTab\",\"footer.columns.links.text\",\"footer.smallText\"]}', '[\"admin::is-creator\"]', '2022-03-29 10:39:55.185000', '2022-03-29 10:39:55.185000', NULL, NULL),
(23, 'plugin::content-manager.explorer.read', 'api::lead-form-submission.lead-form-submission', '{\"fields\":[\"email\",\"status\",\"location\"]}', '[\"admin::is-creator\"]', '2022-03-29 10:39:55.187000', '2022-03-29 10:39:55.187000', NULL, NULL),
(24, 'plugin::content-manager.explorer.read', 'api::page.page', '{\"fields\":[\"shortName\",\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"contentSections\",\"slug\"]}', '[\"admin::is-creator\"]', '2022-03-29 10:39:55.192000', '2022-03-29 10:39:55.192000', NULL, NULL),
(25, 'plugin::content-manager.explorer.update', 'api::global.global', '{\"fields\":[\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"metaTitleSuffix\",\"favicon\",\"notificationBanner.text\",\"notificationBanner.type\",\"navbar.links.url\",\"navbar.links.newTab\",\"navbar.links.text\",\"navbar.button.url\",\"navbar.button.newTab\",\"navbar.button.text\",\"navbar.button.type\",\"navbar.logo\",\"footer.logo\",\"footer.columns.title\",\"footer.columns.links.url\",\"footer.columns.links.newTab\",\"footer.columns.links.text\",\"footer.smallText\"]}', '[\"admin::is-creator\"]', '2022-03-29 10:39:55.196000', '2022-03-29 10:39:55.196000', NULL, NULL),
(26, 'plugin::content-manager.explorer.update', 'api::lead-form-submission.lead-form-submission', '{\"fields\":[\"email\",\"status\",\"location\"]}', '[\"admin::is-creator\"]', '2022-03-29 10:39:55.198000', '2022-03-29 10:39:55.198000', NULL, NULL),
(27, 'plugin::content-manager.explorer.update', 'api::page.page', '{\"fields\":[\"shortName\",\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"contentSections\",\"slug\"]}', '[\"admin::is-creator\"]', '2022-03-29 10:39:55.205000', '2022-03-29 10:39:55.205000', NULL, NULL),
(29, 'plugin::content-manager.explorer.delete', 'api::lead-form-submission.lead-form-submission', '{}', '[\"admin::is-creator\"]', '2022-03-29 10:39:55.211000', '2022-03-29 10:39:55.211000', NULL, NULL),
(31, 'plugin::upload.read', NULL, '{}', '[\"admin::is-creator\"]', '2022-03-29 10:39:55.214000', '2022-03-29 10:39:55.214000', NULL, NULL),
(32, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-03-29 10:39:55.219000', '2022-03-29 10:39:55.219000', NULL, NULL),
(33, 'plugin::upload.assets.update', NULL, '{}', '[\"admin::is-creator\"]', '2022-03-29 10:39:55.226000', '2022-03-29 10:39:55.226000', NULL, NULL),
(34, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-03-29 10:39:55.234000', '2022-03-29 10:39:55.234000', NULL, NULL),
(35, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-03-29 10:39:55.236000', '2022-03-29 10:39:55.236000', NULL, NULL),
(36, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2022-03-29 10:39:55.271000', '2022-03-29 10:39:55.271000', NULL, NULL),
(37, 'plugin::content-manager.explorer.create', 'api::global.global', '{\"fields\":[\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"metaTitleSuffix\",\"favicon\",\"notificationBanner.text\",\"notificationBanner.type\",\"navbar.links.url\",\"navbar.links.newTab\",\"navbar.links.text\",\"navbar.button.url\",\"navbar.button.newTab\",\"navbar.button.text\",\"navbar.button.type\",\"navbar.logo\",\"footer.logo\",\"footer.columns.title\",\"footer.columns.links.url\",\"footer.columns.links.newTab\",\"footer.columns.links.text\",\"footer.smallText\"],\"locales\":[\"en\",\"fr\",\"pt-BR\"]}', '[]', '2022-03-29 11:40:34.146000', '2022-03-29 11:40:34.146000', NULL, NULL),
(39, 'plugin::content-manager.explorer.create', 'api::page.page', '{\"fields\":[\"shortName\",\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"contentSections\",\"slug\"],\"locales\":[\"en\",\"fr\",\"pt-BR\"]}', '[]', '2022-03-29 11:40:34.150000', '2022-03-29 11:40:34.150000', NULL, NULL),
(40, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2022-03-29 10:39:55.278000', '2022-03-29 10:39:55.278000', NULL, NULL),
(41, 'plugin::content-manager.explorer.read', 'api::global.global', '{\"fields\":[\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"metaTitleSuffix\",\"favicon\",\"notificationBanner.text\",\"notificationBanner.type\",\"navbar.links.url\",\"navbar.links.newTab\",\"navbar.links.text\",\"navbar.button.url\",\"navbar.button.newTab\",\"navbar.button.text\",\"navbar.button.type\",\"navbar.logo\",\"footer.logo\",\"footer.columns.title\",\"footer.columns.links.url\",\"footer.columns.links.newTab\",\"footer.columns.links.text\",\"footer.smallText\"],\"locales\":[\"en\",\"fr\",\"pt-BR\"]}', '[]', '2022-03-29 11:40:34.154000', '2022-03-29 11:40:34.154000', NULL, NULL),
(43, 'plugin::content-manager.explorer.read', 'api::page.page', '{\"fields\":[\"shortName\",\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"contentSections\",\"slug\"],\"locales\":[\"en\",\"fr\",\"pt-BR\"]}', '[]', '2022-03-29 11:40:34.157000', '2022-03-29 11:40:34.157000', NULL, NULL),
(44, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2022-03-29 10:39:55.288000', '2022-03-29 10:39:55.288000', NULL, NULL),
(45, 'plugin::content-manager.explorer.update', 'api::global.global', '{\"fields\":[\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"metaTitleSuffix\",\"favicon\",\"notificationBanner.text\",\"notificationBanner.type\",\"navbar.links.url\",\"navbar.links.newTab\",\"navbar.links.text\",\"navbar.button.url\",\"navbar.button.newTab\",\"navbar.button.text\",\"navbar.button.type\",\"navbar.logo\",\"footer.logo\",\"footer.columns.title\",\"footer.columns.links.url\",\"footer.columns.links.newTab\",\"footer.columns.links.text\",\"footer.smallText\"],\"locales\":[\"en\",\"fr\",\"pt-BR\"]}', '[]', '2022-03-29 11:40:34.161000', '2022-03-29 11:40:34.161000', NULL, NULL),
(47, 'plugin::content-manager.explorer.update', 'api::page.page', '{\"fields\":[\"shortName\",\"metadata.metaTitle\",\"metadata.metaDescription\",\"metadata.shareImage\",\"metadata.twitterCardType\",\"metadata.twitterUsername\",\"contentSections\",\"slug\"],\"locales\":[\"en\",\"fr\",\"pt-BR\"]}', '[]', '2022-03-29 11:40:34.164000', '2022-03-29 11:40:34.164000', NULL, NULL),
(48, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2022-03-29 10:39:55.301000', '2022-03-29 10:39:55.301000', NULL, NULL),
(49, 'plugin::content-manager.explorer.delete', 'api::global.global', '{\"locales\":[\"en\",\"fr\",\"pt-BR\"]}', '[]', '2022-03-29 11:40:34.168000', '2022-03-29 11:40:34.168000', NULL, NULL),
(50, 'plugin::content-manager.explorer.delete', 'api::lead-form-submission.lead-form-submission', '{}', '[]', '2022-03-29 10:39:55.308000', '2022-03-29 10:39:55.308000', NULL, NULL),
(51, 'plugin::content-manager.explorer.delete', 'api::page.page', '{\"locales\":[\"en\",\"fr\",\"pt-BR\"]}', '[]', '2022-03-29 11:40:34.171000', '2022-03-29 11:40:34.171000', NULL, NULL),
(52, 'plugin::content-manager.explorer.publish', 'api::page.page', '{\"locales\":[\"en\",\"fr\",\"pt-BR\"]}', '[]', '2022-03-29 11:40:34.174000', '2022-03-29 11:40:34.174000', NULL, NULL),
(53, 'plugin::content-manager.single-types.configure-view', NULL, '{}', '[]', '2022-03-29 10:39:55.317000', '2022-03-29 10:39:55.317000', NULL, NULL),
(54, 'plugin::content-manager.collection-types.configure-view', NULL, '{}', '[]', '2022-03-29 10:39:55.320000', '2022-03-29 10:39:55.320000', NULL, NULL),
(55, 'plugin::content-manager.components.configure-layout', NULL, '{}', '[]', '2022-03-29 10:39:55.322000', '2022-03-29 10:39:55.322000', NULL, NULL),
(56, 'plugin::content-type-builder.read', NULL, '{}', '[]', '2022-03-29 10:39:55.324000', '2022-03-29 10:39:55.324000', NULL, NULL),
(57, 'plugin::email.settings.read', NULL, '{}', '[]', '2022-03-29 10:39:55.327000', '2022-03-29 10:39:55.327000', NULL, NULL),
(58, 'plugin::upload.read', NULL, '{}', '[]', '2022-03-29 10:39:55.329000', '2022-03-29 10:39:55.329000', NULL, NULL),
(59, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-03-29 10:39:55.333000', '2022-03-29 10:39:55.333000', NULL, NULL),
(60, 'plugin::upload.assets.update', NULL, '{}', '[]', '2022-03-29 10:39:55.337000', '2022-03-29 10:39:55.337000', NULL, NULL),
(61, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-03-29 10:39:55.339000', '2022-03-29 10:39:55.339000', NULL, NULL),
(62, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-03-29 10:39:55.341000', '2022-03-29 10:39:55.341000', NULL, NULL),
(63, 'plugin::upload.settings.read', NULL, '{}', '[]', '2022-03-29 10:39:55.345000', '2022-03-29 10:39:55.345000', NULL, NULL),
(64, 'plugin::users-permissions.roles.create', NULL, '{}', '[]', '2022-03-29 10:39:55.351000', '2022-03-29 10:39:55.351000', NULL, NULL),
(65, 'plugin::users-permissions.roles.read', NULL, '{}', '[]', '2022-03-29 10:39:55.358000', '2022-03-29 10:39:55.358000', NULL, NULL),
(66, 'plugin::users-permissions.roles.update', NULL, '{}', '[]', '2022-03-29 10:39:55.361000', '2022-03-29 10:39:55.361000', NULL, NULL),
(67, 'plugin::users-permissions.roles.delete', NULL, '{}', '[]', '2022-03-29 10:39:55.364000', '2022-03-29 10:39:55.364000', NULL, NULL),
(68, 'plugin::users-permissions.providers.read', NULL, '{}', '[]', '2022-03-29 10:39:55.369000', '2022-03-29 10:39:55.369000', NULL, NULL),
(69, 'plugin::users-permissions.providers.update', NULL, '{}', '[]', '2022-03-29 10:39:55.372000', '2022-03-29 10:39:55.372000', NULL, NULL),
(70, 'plugin::users-permissions.email-templates.read', NULL, '{}', '[]', '2022-03-29 10:39:55.374000', '2022-03-29 10:39:55.374000', NULL, NULL),
(71, 'plugin::users-permissions.email-templates.update', NULL, '{}', '[]', '2022-03-29 10:39:55.376000', '2022-03-29 10:39:55.376000', NULL, NULL),
(72, 'plugin::users-permissions.advanced-settings.read', NULL, '{}', '[]', '2022-03-29 10:39:55.379000', '2022-03-29 10:39:55.379000', NULL, NULL),
(73, 'plugin::users-permissions.advanced-settings.update', NULL, '{}', '[]', '2022-03-29 10:39:55.384000', '2022-03-29 10:39:55.384000', NULL, NULL),
(74, 'plugin::i18n.locale.create', NULL, '{}', '[]', '2022-03-29 10:39:55.386000', '2022-03-29 10:39:55.386000', NULL, NULL),
(75, 'plugin::i18n.locale.read', NULL, '{}', '[]', '2022-03-29 10:39:55.388000', '2022-03-29 10:39:55.388000', NULL, NULL),
(76, 'plugin::i18n.locale.update', NULL, '{}', '[]', '2022-03-29 10:39:55.390000', '2022-03-29 10:39:55.390000', NULL, NULL),
(77, 'plugin::i18n.locale.delete', NULL, '{}', '[]', '2022-03-29 10:39:55.396000', '2022-03-29 10:39:55.396000', NULL, NULL),
(78, 'admin::marketplace.read', NULL, '{}', '[]', '2022-03-29 10:39:55.401000', '2022-03-29 10:39:55.401000', NULL, NULL),
(79, 'admin::marketplace.plugins.install', NULL, '{}', '[]', '2022-03-29 10:39:55.405000', '2022-03-29 10:39:55.405000', NULL, NULL),
(80, 'admin::marketplace.plugins.uninstall', NULL, '{}', '[]', '2022-03-29 10:39:55.407000', '2022-03-29 10:39:55.407000', NULL, NULL),
(81, 'admin::webhooks.create', NULL, '{}', '[]', '2022-03-29 10:39:55.408000', '2022-03-29 10:39:55.408000', NULL, NULL),
(82, 'admin::webhooks.read', NULL, '{}', '[]', '2022-03-29 10:39:55.413000', '2022-03-29 10:39:55.413000', NULL, NULL),
(83, 'admin::webhooks.update', NULL, '{}', '[]', '2022-03-29 10:39:55.415000', '2022-03-29 10:39:55.415000', NULL, NULL),
(84, 'admin::webhooks.delete', NULL, '{}', '[]', '2022-03-29 10:39:55.418000', '2022-03-29 10:39:55.418000', NULL, NULL),
(85, 'admin::users.create', NULL, '{}', '[]', '2022-03-29 10:39:55.421000', '2022-03-29 10:39:55.421000', NULL, NULL),
(86, 'admin::users.read', NULL, '{}', '[]', '2022-03-29 10:39:55.423000', '2022-03-29 10:39:55.423000', NULL, NULL),
(87, 'admin::users.update', NULL, '{}', '[]', '2022-03-29 10:39:55.425000', '2022-03-29 10:39:55.425000', NULL, NULL),
(88, 'admin::users.delete', NULL, '{}', '[]', '2022-03-29 10:39:55.426000', '2022-03-29 10:39:55.426000', NULL, NULL),
(89, 'admin::roles.create', NULL, '{}', '[]', '2022-03-29 10:39:55.428000', '2022-03-29 10:39:55.428000', NULL, NULL),
(90, 'admin::roles.read', NULL, '{}', '[]', '2022-03-29 10:39:55.430000', '2022-03-29 10:39:55.430000', NULL, NULL),
(91, 'admin::roles.update', NULL, '{}', '[]', '2022-03-29 10:39:55.432000', '2022-03-29 10:39:55.432000', NULL, NULL),
(92, 'admin::roles.delete', NULL, '{}', '[]', '2022-03-29 10:39:55.434000', '2022-03-29 10:39:55.434000', NULL, NULL),
(93, 'admin::api-tokens.create', NULL, '{}', '[]', '2022-03-29 10:39:55.435000', '2022-03-29 10:39:55.435000', NULL, NULL),
(94, 'admin::api-tokens.read', NULL, '{}', '[]', '2022-03-29 10:39:55.437000', '2022-03-29 10:39:55.437000', NULL, NULL),
(95, 'admin::api-tokens.update', NULL, '{}', '[]', '2022-03-29 10:39:55.438000', '2022-03-29 10:39:55.438000', NULL, NULL),
(96, 'admin::api-tokens.delete', NULL, '{}', '[]', '2022-03-29 10:39:55.441000', '2022-03-29 10:39:55.441000', NULL, NULL),
(97, 'plugin::comments.read', NULL, '{}', '[]', '2022-03-29 11:37:17.360000', '2022-03-29 11:37:17.360000', NULL, NULL),
(98, 'plugin::comments.moderate', NULL, '{}', '[]', '2022-03-29 11:37:17.363000', '2022-03-29 11:37:17.363000', NULL, NULL),
(99, 'plugin::comments.reports.read', NULL, '{}', '[]', '2022-03-29 11:37:17.364000', '2022-03-29 11:37:17.364000', NULL, NULL),
(100, 'plugin::comments.reports.action', NULL, '{}', '[]', '2022-03-29 11:37:17.366000', '2022-03-29 11:37:17.366000', NULL, NULL),
(101, 'plugin::comments.settings.read', NULL, '{}', '[]', '2022-03-29 11:37:17.367000', '2022-03-29 11:37:17.367000', NULL, NULL),
(102, 'plugin::comments.settings.change', NULL, '{}', '[]', '2022-03-29 11:37:17.368000', '2022-03-29 11:37:17.368000', NULL, NULL),
(103, 'plugin::content-manager.explorer.create', 'api::lead-form-submission.lead-form-submission', '{\"fields\":[\"email\",\"status\",\"location\",\"mensagem\"]}', '[]', '2022-03-29 22:16:10.718000', '2022-03-29 22:16:10.718000', NULL, NULL),
(104, 'plugin::content-manager.explorer.read', 'api::lead-form-submission.lead-form-submission', '{\"fields\":[\"email\",\"status\",\"location\",\"mensagem\"]}', '[]', '2022-03-29 22:16:10.720000', '2022-03-29 22:16:10.720000', NULL, NULL),
(105, 'plugin::content-manager.explorer.update', 'api::lead-form-submission.lead-form-submission', '{\"fields\":[\"email\",\"status\",\"location\",\"mensagem\"]}', '[]', '2022-03-29 22:16:10.722000', '2022-03-29 22:16:10.722000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(11, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(29, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 1),
(40, 1),
(44, 1),
(48, 1),
(50, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(37, 1),
(39, 1),
(41, 1),
(43, 1),
(45, 1),
(47, 1),
(49, 1),
(51, 1),
(52, 1),
(103, 1),
(104, 1),
(105, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2022-03-29 10:39:55.080000', '2022-03-29 10:39:55.080000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2022-03-29 10:39:55.096000', '2022-03-29 10:39:55.096000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2022-03-29 10:39:55.101000', '2022-03-29 10:39:55.101000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Gabriel', 'Ariza', 'myblenet', 'myblenet@gmail.com', '$2a$10$xzXaWQnSmj3B.Io1c2YOLO45JNcj9RweuHZUNfAV5VTCJpaVQlBTG', NULL, NULL, 1, 0, 'pt-BR', '2022-03-29 10:41:09.823000', '2022-03-29 13:00:16.623000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `comments_comment`
--

CREATE TABLE `comments_comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` longtext DEFAULT NULL,
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
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `comments_comment-report`
--

CREATE TABLE `comments_comment-report` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` longtext DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `resolved` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `comments_comment_author_user_links`
--

CREATE TABLE `comments_comment_author_user_links` (
  `comment_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `comments_comment_report_related_links`
--

CREATE TABLE `comments_comment_report_related_links` (
  `comment_report_id` int(10) UNSIGNED DEFAULT NULL,
  `comment_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `comments_comment_thread_of_links`
--

CREATE TABLE `comments_comment_thread_of_links` (
  `comment_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_comment_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_elements_features`
--

CREATE TABLE `components_elements_features` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_elements_features`
--

INSERT INTO `components_elements_features` (`id`, `name`) VALUES
(1, 'A cool feature'),
(2, 'Another cool feature'),
(3, 'Some other cool feature'),
(4, 'The coolest feature'),
(5, 'Nice feature'),
(6, 'Fun feature'),
(7, 'Amazing feature'),
(8, 'Wow effect feature'),
(9, 'Mesmerizing feature'),
(10, 'Voilà une feature'),
(11, 'Une autre'),
(12, 'Encore une autre'),
(13, 'Fonctionnalité 1'),
(14, 'Fonctionnalité 2'),
(15, 'Fonctionnalité 3'),
(16, 'Fonctionnalité 1'),
(17, 'Fonctionnalité 2'),
(18, 'Fonctionnalité 3');

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_elements_logos`
--

CREATE TABLE `components_elements_logos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_elements_logos`
--

INSERT INTO `components_elements_logos` (`id`, `title`) VALUES
(1, 'Strapi'),
(2, 'Strapi 2'),
(3, 'Strapi 3'),
(4, 'Strapi'),
(5, 'Strapi 2'),
(6, 'Strapi 3'),
(7, 'Strapi 2'),
(8, 'Strapi'),
(9, 'Strapi 3');

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_elements_notification_banners`
--

CREATE TABLE `components_elements_notification_banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_elements_notification_banners`
--

INSERT INTO `components_elements_notification_banners` (`id`, `text`, `type`) VALUES
(1, 'Banner de notificação\n[Ver site atual](https://inovattaseguros.com.br)', 'info'),
(2, 'Cette page a été crée avec le Strapi starter pour les sites Corporate.\n [Voir les autres starters Strapi](https://strapi.io/starters)', 'info'),
(3, 'Banner de notificação\n[Ver site atual](https://inovattaseguros.com.br)', 'info');

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_elements_plans`
--

CREATE TABLE `components_elements_plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `is_recommended` tinyint(1) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `price_period` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_elements_plans`
--

INSERT INTO `components_elements_plans` (`id`, `name`, `description`, `is_recommended`, `price`, `price_period`) VALUES
(1, 'Hobby', 'Perfect for side projects', NULL, '0.00', 'forever'),
(2, 'Premium', 'A more advanced plan for SMBs', 1, '20.00', 'per month'),
(3, 'Enterprise', 'For large companies needs', NULL, '299.00', 'per month'),
(4, 'Hobby', 'Parfait pour des projets personnels', NULL, '0.00', 'toujours'),
(5, 'Premium', 'Un plan plus avancé', 1, '20.00', 'par mois'),
(6, 'Entreprise', 'Pour les besoin des grands entreprises', NULL, '299.00', 'par mois');

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_elements_plans_components`
--

CREATE TABLE `components_elements_plans_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `component_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_elements_plans_components`
--

INSERT INTO `components_elements_plans_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 1, 'elements.feature', 'features', 1),
(2, 1, 2, 'elements.feature', 'features', 2),
(3, 1, 3, 'elements.feature', 'features', 3),
(4, 2, 4, 'elements.feature', 'features', 1),
(5, 2, 5, 'elements.feature', 'features', 2),
(6, 2, 6, 'elements.feature', 'features', 3),
(7, 4, 10, 'elements.feature', 'features', 1),
(8, 4, 11, 'elements.feature', 'features', 2),
(9, 4, 12, 'elements.feature', 'features', 3),
(10, 5, 13, 'elements.feature', 'features', 1),
(11, 5, 14, 'elements.feature', 'features', 2),
(12, 5, 15, 'elements.feature', 'features', 3),
(13, 3, 7, 'elements.feature', 'features', 1),
(14, 3, 8, 'elements.feature', 'features', 2),
(15, 3, 9, 'elements.feature', 'features', 3),
(16, 6, 16, 'elements.feature', 'features', 1),
(17, 6, 17, 'elements.feature', 'features', 2),
(18, 6, 18, 'elements.feature', 'features', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_layout_footers`
--

CREATE TABLE `components_layout_footers` (
  `id` int(10) UNSIGNED NOT NULL,
  `small_text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_layout_footers`
--

INSERT INTO `components_layout_footers` (`id`, `small_text`) VALUES
(1, '© Copyright Inovatta Seguros™'),
(2, '© Copyright Mon Entreprise™'),
(3, '© Copyright Inovatta Seguros™');

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_layout_footers_components`
--

CREATE TABLE `components_layout_footers_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `component_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_layout_footers_components`
--

INSERT INTO `components_layout_footers_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 2, 3, 'elements.footer-section', 'columns', 1),
(2, 2, 4, 'elements.footer-section', 'columns', 2),
(3, 2, 6, 'elements.footer-section', 'columns', 3),
(4, 2, 8, 'elements.footer-section', 'columns', 4),
(9, 1, 1, 'elements.footer-section', 'columns', 1),
(10, 1, 2, 'elements.footer-section', 'columns', 2),
(11, 1, 5, 'elements.footer-section', 'columns', 3),
(12, 1, 7, 'elements.footer-section', 'columns', 4),
(13, 3, 9, 'elements.footer-section', 'columns', 1),
(14, 3, 11, 'elements.footer-section', 'columns', 2),
(15, 3, 10, 'elements.footer-section', 'columns', 3),
(16, 3, 12, 'elements.footer-section', 'columns', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_layout_navbars`
--

CREATE TABLE `components_layout_navbars` (
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_layout_navbars`
--

INSERT INTO `components_layout_navbars` (`id`) VALUES
(1),
(2),
(3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_layout_navbars_components`
--

CREATE TABLE `components_layout_navbars_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `component_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_layout_navbars_components`
--

INSERT INTO `components_layout_navbars_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 2, 4, 'links.link', 'links', 1),
(2, 2, 5, 'links.link', 'links', 2),
(5, 2, 14, 'links.button-link', 'button', 1),
(7, 1, 1, 'links.link', 'links', 1),
(8, 1, 3, 'links.link', 'links', 2),
(9, 1, 13, 'links.button-link', 'button', 1),
(10, 3, 27, 'links.link', 'links', 1),
(11, 3, 28, 'links.link', 'links', 2),
(12, 3, 15, 'links.button-link', 'button', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_links_buttons`
--

CREATE TABLE `components_links_buttons` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `new_tab` tinyint(1) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_links_buttons`
--

INSERT INTO `components_links_buttons` (`id`, `url`, `new_tab`, `text`, `type`) VALUES
(1, '#', 0, 'Send an email', 'primary'),
(2, 'https://github.com/strapi/strapi-template-corporate', 0, 'Get started', 'primary'),
(3, '#', 0, 'DM us on Twitter', 'secondary'),
(4, 'https://github.com/strapi/strapi-template-corporate', 1, 'See the code', 'secondary'),
(5, 'https://github.com/strapi/strapi-template-corporate', 0, 'Commencer', 'primary'),
(6, 'https://github.com/strapi/strapi-template-corporate', 1, 'Voir le code', 'secondary'),
(7, 'https://github.com/strapi/strapi-template-corporate', 0, 'Get started', 'primary'),
(8, 'https://github.com/strapi/strapi-template-corporate', 0, 'See the code', 'secondary'),
(9, '#', 0, 'Envoyer un mail', 'primary'),
(10, 'https://github.com/strapi/strapi-template-corporate', 0, 'Commencer', 'primary'),
(11, '#', 0, 'DM nous sur Twitter', 'secondary'),
(12, 'https://github.com/strapi/strapi-template-corporate', 0, 'Voir le code', 'secondary'),
(13, '#', 0, 'Sign up', 'secondary'),
(14, '#', 0, 'S\'inscrire', 'secondary'),
(15, '#', 0, 'Sign up', 'secondary'),
(16, 'https://github.com/strapi/strapi-template-corporate', 0, 'Get started', 'primary'),
(17, 'https://github.com/strapi/strapi-template-corporate', 1, 'See the code', 'secondary'),
(18, 'https://github.com/strapi/strapi-template-corporate', 0, 'Get started', 'primary'),
(19, 'https://github.com/strapi/strapi-template-corporate', 0, 'See the code', 'secondary');

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_links_footer_sections`
--

CREATE TABLE `components_links_footer_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_links_footer_sections`
--

INSERT INTO `components_links_footer_sections` (`id`, `title`) VALUES
(1, 'Seguros'),
(2, 'Legal'),
(3, 'Produit'),
(4, 'Légal'),
(5, 'Company'),
(6, 'Entreprise'),
(7, 'Social'),
(8, 'Réseaux sociaux'),
(9, 'Seguros'),
(10, 'Company'),
(11, 'Legal'),
(12, 'Social');

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_links_footer_sections_components`
--

CREATE TABLE `components_links_footer_sections_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `component_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_links_footer_sections_components`
--

INSERT INTO `components_links_footer_sections_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(3, 3, 12, 'links.link', 'links', 1),
(4, 3, 14, 'links.link', 'links', 2),
(5, 6, 20, 'links.link', 'links', 1),
(6, 6, 22, 'links.link', 'links', 2),
(9, 8, 23, 'links.link', 'links', 1),
(10, 8, 26, 'links.link', 'links', 2),
(15, 4, 17, 'links.link', 'links', 1),
(16, 4, 19, 'links.link', 'links', 2),
(17, 7, 24, 'links.link', 'links', 1),
(18, 7, 25, 'links.link', 'links', 2),
(19, 5, 18, 'links.link', 'links', 1),
(20, 5, 21, 'links.link', 'links', 2),
(21, 1, 11, 'links.link', 'links', 1),
(22, 1, 13, 'links.link', 'links', 2),
(23, 2, 15, 'links.link', 'links', 1),
(24, 2, 16, 'links.link', 'links', 2),
(25, 9, 29, 'links.link', 'links', 1),
(26, 9, 30, 'links.link', 'links', 2),
(27, 10, 32, 'links.link', 'links', 1),
(28, 10, 33, 'links.link', 'links', 2),
(29, 11, 31, 'links.link', 'links', 1),
(30, 11, 34, 'links.link', 'links', 2),
(31, 12, 35, 'links.link', 'links', 1),
(32, 12, 36, 'links.link', 'links', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_links_links`
--

CREATE TABLE `components_links_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `new_tab` tinyint(1) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_links_links`
--

INSERT INTO `components_links_links` (`id`, `url`, `new_tab`, `text`) VALUES
(1, '/pricing', 0, 'Pricing'),
(2, '#', 0, 'All testimonials'),
(3, '/contact', 0, 'Contact'),
(4, '/pricing', 0, 'tarifs'),
(5, '/contact', 0, 'nous contacter'),
(6, '#', 0, 'All testimonials'),
(7, '#', 0, 'View the list of UI sections'),
(8, '#', 0, 'View how to create a page'),
(9, '#', 0, 'Voir la liste de blocs UI'),
(10, '#', 0, 'Voir comment créer une page'),
(11, '#', 0, 'Veicular'),
(12, '#', 0, 'Fonctionnalités'),
(13, '#', 0, 'Residencial'),
(14, '#', 0, 'S\'inscrire'),
(15, '#', 0, 'Politicas de privacidade'),
(16, '#', 0, 'Termos e condições'),
(17, '#', 0, 'Confidentialité'),
(18, '#', 0, 'Nossa história'),
(19, '#', 0, 'Mentions légales'),
(20, '#', 0, 'Nous rejoindre'),
(21, '#', 0, 'Nosso time'),
(22, '#', 0, 'L\'équipe'),
(23, '#', 0, 'Twitter'),
(24, '#', 0, 'Twitter'),
(25, '#', 0, 'Instagram'),
(26, '#', 0, 'LinkedIn'),
(27, '/pricing', 0, 'Pricing'),
(28, '/contact', 0, 'Contact'),
(29, '#', 0, 'Veicular'),
(30, '#', 0, 'Residencial'),
(31, '#', 0, 'Politicas de privacidade'),
(32, '#', 0, 'Nossa história'),
(33, '#', 0, 'Nosso time'),
(34, '#', 0, 'Termos e condições'),
(35, '#', 0, 'Twitter'),
(36, '#', 0, 'Instagram'),
(37, '#', 0, 'View the list of UI sections'),
(38, '#', 0, 'View how to create a page'),
(39, '#', 0, 'All testimonials');

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_links_simple_buttons`
--

CREATE TABLE `components_links_simple_buttons` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_links_simple_buttons`
--

INSERT INTO `components_links_simple_buttons` (`id`, `text`, `type`) VALUES
(1, 'Subscribe', 'primary'),
(2, 'S\'inscrire', 'primary'),
(3, 'Subscribe', 'primary');

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_meta_metadata`
--

CREATE TABLE `components_meta_metadata` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `twitter_card_type` varchar(255) DEFAULT NULL,
  `twitter_username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_meta_metadata`
--

INSERT INTO `components_meta_metadata` (`id`, `meta_title`, `meta_description`, `twitter_card_type`, `twitter_username`) VALUES
(1, 'Inovatta Seguros | Corretora de seguros em Goiânia | Orçamento de seguro', 'Seguros automotores, fazemos cotações de todas as segura', 'summary', 'inovattaseguros'),
(2, 'Strapi corporate site starter', 'Build a fully editable site with Strapi', 'summary', NULL),
(3, 'Pricing', 'The different plans', 'summary', NULL),
(4, 'Contact', 'Get in touch with our team', 'summary', NULL),
(5, 'Strapi starter for Corporate Sites', 'Créer votre site corporate avec Strapi', 'summary', 'strapijs'),
(6, 'Strapi corporate site starter', 'Construire un site modifiable avec Strapi', 'summary', NULL),
(7, 'Secret page', 'Preview-only page', 'summary', NULL),
(8, 'Pricing', 'Les différentes offres', 'summary', NULL),
(9, 'Page secrète', 'Preview-only page', 'summary', NULL),
(10, 'Nous Contacter', 'Contactez notre équipe', 'summary', NULL),
(11, 'Inovatta Seguros | Corretora de seguros em Goiânia | Orçamento de seguro', 'Seguros automotores, fazemos cotações de todas as segura', 'summary', 'inovattaseguros'),
(12, 'Strapi corporate site starter', 'Build a fully editable site with Strapi', 'summary', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_sections_lead_forms`
--

CREATE TABLE `components_sections_lead_forms` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `email_placeholder` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_sections_lead_forms`
--

INSERT INTO `components_sections_lead_forms` (`id`, `title`, `email_placeholder`, `location`) VALUES
(1, 'Subscribe To Our Newsletter', 'email@company.com', 'Home Page Bottom'),
(2, 'S\'inscrire à notre Newsletter', 'email@company.com', 'Home Page Bottom'),
(3, 'Subscribe To Our Newsletter', 'email@company.com', 'Home Page Bottom');

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_sections_lead_forms_components`
--

CREATE TABLE `components_sections_lead_forms_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `component_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_sections_lead_forms_components`
--

INSERT INTO `components_sections_lead_forms_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 1, 'links.button', 'submitButton', 1),
(2, 2, 2, 'links.button', 'submitButton', 1),
(3, 3, 3, 'links.button', 'submitButton', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_sections_pricings`
--

CREATE TABLE `components_sections_pricings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_sections_pricings`
--

INSERT INTO `components_sections_pricings` (`id`, `title`) VALUES
(1, 'Clear pricing table'),
(2, 'Tableau de tarifs');

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_sections_pricings_components`
--

CREATE TABLE `components_sections_pricings_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `component_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_sections_pricings_components`
--

INSERT INTO `components_sections_pricings_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 2, 4, 'elements.plan', 'plans', 1),
(2, 2, 5, 'elements.plan', 'plans', 2),
(3, 2, 6, 'elements.plan', 'plans', 3),
(4, 1, 1, 'elements.plan', 'plans', 1),
(5, 1, 2, 'elements.plan', 'plans', 2),
(6, 1, 3, 'elements.plan', 'plans', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_sections_rich_texts`
--

CREATE TABLE `components_sections_rich_texts` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_sections_rich_texts`
--

INSERT INTO `components_sections_rich_texts` (`id`, `content`) VALUES
(1, '# Get in touch\n\n> This is an example of a page that relies almost entirely on the RichText section. It\'s useful for blog articles, or content-heavy pages like legal terms.\n\nWe\'d love to hear from you.\n\n## Social media\n\n* [Twitter](#)\n* [Twitter](#)\n* [Twitter](#)\n\n## Postal address\n\n404 Headless Street\n__92210__ **Saint Cloud**, *France*\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(2, '## Secret page\n\nYou can only view this page in Preview Mode.'),
(3, '## Page secrète. \n\n Vous seul pouvez voir cette page en Preview Mode'),
(4, '# Contactez nous\n\n> Ceci est un exemple d\'une page qui repose presque entièrement sur le composant RichText. Vous pouvez l\'utiliser pour des articles de blog, ou pour des pages comportant beaucoup de texte, comme par exemple les conditions d\'utilisation.\n\nNous aimerions beaucoup avoir vos retours.\n\n## Social media\n\n* [Twitter](#)\n* [Twitter](#)\n* [Twitter](#)\n\n## Postal address\n\n404 Headless Street\n__92210__ **Saint Cloud**, *France*\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_slices_bottom_actions`
--

CREATE TABLE `components_slices_bottom_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_slices_bottom_actions`
--

INSERT INTO `components_slices_bottom_actions` (`id`, `title`) VALUES
(1, 'Get in touch'),
(2, 'Start building your website'),
(3, 'Start building your website'),
(4, 'Get in touch'),
(5, 'Start building your website');

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_slices_bottom_actions_components`
--

CREATE TABLE `components_slices_bottom_actions_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `component_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_slices_bottom_actions_components`
--

INSERT INTO `components_slices_bottom_actions_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 1, 'links.button-link', 'buttons', 1),
(2, 1, 3, 'links.button-link', 'buttons', 2),
(3, 4, 9, 'links.button-link', 'buttons', 1),
(4, 4, 11, 'links.button-link', 'buttons', 2),
(5, 2, 7, 'links.button-link', 'buttons', 1),
(6, 2, 8, 'links.button-link', 'buttons', 2),
(7, 3, 10, 'links.button-link', 'buttons', 1),
(8, 3, 12, 'links.button-link', 'buttons', 2),
(9, 5, 18, 'links.button-link', 'buttons', 1),
(10, 5, 19, 'links.button-link', 'buttons', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_slices_feature_columns`
--

CREATE TABLE `components_slices_feature_columns` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_slices_feature_columns`
--

INSERT INTO `components_slices_feature_columns` (`id`, `title`, `description`) VALUES
(1, 'Preview your changes', 'Thanks to an integrated Preview Mode, you can visualize your pages before publishing them.'),
(2, 'Fully responsive', 'This starter works well on all screens, whether it\'s mobile, tablet or desktop.'),
(3, 'Easy to customize', 'We use Tailwind for styling. You can change your site\'s theme without digging through the code.'),
(4, 'Visualisez vos changments', 'Grace à un mode preview, vous pouvez voir vos pages avant de les publier.'),
(5, '100% responsive', 'Ce starter marche sur toutes les tailles d\'écrans.'),
(6, 'Facile à personnaliser', 'On utilise Tailwind pour les styles. Vous pouvez changez le thème de votre site sans avoir besoin d\'aller dans le code.'),
(7, 'Preview your changes', 'Thanks to an integrated Preview Mode, you can visualize your pages before publishing them.'),
(8, 'Fully responsive', 'This starter works well on all screens, whether it\'s mobile, tablet or desktop.'),
(9, 'Easy to customize', 'We use Tailwind for styling. You can change your site\'s theme without digging through the code.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_slices_feature_columns_groups`
--

CREATE TABLE `components_slices_feature_columns_groups` (
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_slices_feature_columns_groups`
--

INSERT INTO `components_slices_feature_columns_groups` (`id`) VALUES
(1),
(2),
(3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_slices_feature_columns_groups_components`
--

CREATE TABLE `components_slices_feature_columns_groups_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `component_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_slices_feature_columns_groups_components`
--

INSERT INTO `components_slices_feature_columns_groups_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 1, 'elements.feature-column', 'features', 1),
(2, 1, 2, 'elements.feature-column', 'features', 2),
(3, 1, 3, 'elements.feature-column', 'features', 3),
(4, 2, 4, 'elements.feature-column', 'features', 1),
(5, 2, 5, 'elements.feature-column', 'features', 2),
(6, 2, 6, 'elements.feature-column', 'features', 3),
(7, 3, 7, 'elements.feature-column', 'features', 1),
(8, 3, 8, 'elements.feature-column', 'features', 2),
(9, 3, 9, 'elements.feature-column', 'features', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_slices_feature_rows`
--

CREATE TABLE `components_slices_feature_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_slices_feature_rows`
--

INSERT INTO `components_slices_feature_rows` (`id`, `title`, `description`) VALUES
(1, 'Let marketing teams build their pages', 'Thanks to a pre-built list of UI sections, marketers can design exactly the pages they want.'),
(2, 'Leave your developers alone', 'You can publish, edit and delete pages without help from developers. Your technical team can finally focus on their tasks.'),
(3, 'Les équipes marketing peuvent maintenant faire leurs propres pages', 'Grace à une liste pré-construite de blocs UI, les équipes marketing peuvent faire la mise en page exactement comme elles veulent'),
(4, 'Laissez vos développeurs tranquilles', 'Vous pouvez publier, modifier, et supprimer des pages sans l\'aide d\'un développeur.  Votre équipe technique peut enfin se concentrer sur d\'autre tâches.'),
(5, 'Let marketing teams build their pages', 'Thanks to a pre-built list of UI sections, marketers can design exactly the pages they want.'),
(6, 'Leave your developers alone', 'You can publish, edit and delete pages without help from developers. Your technical team can finally focus on their tasks.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_slices_feature_rows_components`
--

CREATE TABLE `components_slices_feature_rows_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `component_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_slices_feature_rows_components`
--

INSERT INTO `components_slices_feature_rows_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 7, 'links.link', 'link', 1),
(2, 2, 8, 'links.link', 'link', 1),
(3, 4, 10, 'links.link', 'link', 1),
(4, 3, 9, 'links.link', 'link', 1),
(5, 5, 37, 'links.link', 'link', 1),
(6, 6, 38, 'links.link', 'link', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_slices_feature_rows_groups`
--

CREATE TABLE `components_slices_feature_rows_groups` (
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_slices_feature_rows_groups`
--

INSERT INTO `components_slices_feature_rows_groups` (`id`) VALUES
(1),
(2),
(3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_slices_feature_rows_groups_components`
--

CREATE TABLE `components_slices_feature_rows_groups_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `component_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_slices_feature_rows_groups_components`
--

INSERT INTO `components_slices_feature_rows_groups_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 1, 'elements.feature-row', 'features', 1),
(2, 1, 2, 'elements.feature-row', 'features', 2),
(3, 2, 3, 'elements.feature-row', 'features', 1),
(4, 2, 4, 'elements.feature-row', 'features', 2),
(5, 3, 5, 'elements.feature-row', 'features', 1),
(6, 3, 6, 'elements.feature-row', 'features', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_slices_heroes`
--

CREATE TABLE `components_slices_heroes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `small_text_with_link` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_slices_heroes`
--

INSERT INTO `components_slices_heroes` (`id`, `title`, `label`, `description`, `small_text_with_link`) VALUES
(1, 'The best way to build your Corporate Site', 'New Strapi starter', 'Get started with your Strapi business website in seconds.', 'Want to build your own from scratch? Tutorial coming soon'),
(2, 'La meilleure façon de faire votre site Corporate', 'Nouveau starter Strapi', 'Commencer vite avec votre site corporate', 'Vous voulez construire votre propre starter? Guide à venir'),
(3, 'The best way to build your Corporate Site', 'New Strapi starter', 'Get started with your Strapi business website in seconds.', 'Want to build your own from scratch? Tutorial coming soon');

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_slices_heroes_components`
--

CREATE TABLE `components_slices_heroes_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `component_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_slices_heroes_components`
--

INSERT INTO `components_slices_heroes_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 2, 'links.button-link', 'buttons', 1),
(2, 1, 4, 'links.button-link', 'buttons', 2),
(3, 2, 5, 'links.button-link', 'buttons', 1),
(4, 2, 6, 'links.button-link', 'buttons', 2),
(5, 3, 16, 'links.button-link', 'buttons', 1),
(6, 3, 17, 'links.button-link', 'buttons', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_slices_large_videos`
--

CREATE TABLE `components_slices_large_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_slices_testimonials`
--

CREATE TABLE `components_slices_testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` longtext DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `author_title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_slices_testimonials`
--

INSERT INTO `components_slices_testimonials` (`id`, `text`, `author_name`, `author_title`, `link`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'Your Customer Name', 'A happy customer', '#'),
(2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'Nom d\'un(e) Client(e) ici', 'Un(e) Client(e) Satisfait(e)', '#'),
(3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'Your Customer Name', 'A happy customer', '#');

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_slices_testimonials_groups`
--

CREATE TABLE `components_slices_testimonials_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_slices_testimonials_groups`
--

INSERT INTO `components_slices_testimonials_groups` (`id`, `title`, `description`) VALUES
(1, 'Your customer testimonials here', 'This section is where you can showcase your customers. Insert quotes, and show the logos of companies who like your product'),
(2, 'Ici, les témoignages des vos clients.', 'Dans cette partie, vous pouvez mettre en avant vos clients.  Mettez des citations, et montrez les logos des entreprises qui aiment votre produit.'),
(3, 'Your customer testimonials here', 'This section is where you can showcase your customers. Insert quotes, and show the logos of companies who like your product');

-- --------------------------------------------------------

--
-- Estrutura para tabela `components_slices_testimonials_groups_components`
--

CREATE TABLE `components_slices_testimonials_groups_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `component_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `components_slices_testimonials_groups_components`
--

INSERT INTO `components_slices_testimonials_groups_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 1, 2, 'links.link', 'link', 1),
(2, 2, 6, 'links.link', 'link', 1),
(3, 1, 1, 'elements.logos', 'logos', 1),
(4, 1, 2, 'elements.logos', 'logos', 2),
(5, 1, 3, 'elements.logos', 'logos', 3),
(6, 2, 4, 'elements.logos', 'logos', 1),
(7, 2, 5, 'elements.logos', 'logos', 2),
(8, 2, 6, 'elements.logos', 'logos', 3),
(9, 2, 2, 'elements.testimonial', 'testimonials', 1),
(10, 1, 1, 'elements.testimonial', 'testimonials', 1),
(11, 3, 39, 'links.link', 'link', 1),
(12, 3, 8, 'elements.logos', 'logos', 1),
(13, 3, 7, 'elements.logos', 'logos', 2),
(14, 3, 9, 'elements.logos', 'logos', 3),
(15, 3, 3, 'elements.testimonial', 'testimonials', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `template_reference_id` int(11) DEFAULT NULL,
  `design` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`design`)),
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body_html` longtext DEFAULT NULL,
  `body_text` longtext DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tags`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`formats`)),
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_metadata`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `files`
--

INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'favicon', 'favicon', 'favicon', 512, 512, '{\"thumbnail\":{\"name\":\"thumbnail_favicon\",\"hash\":\"thumbnail_favicon_8f7a6f226f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":5.61,\"url\":\"/uploads/thumbnail_favicon_8f7a6f226f.png\"},\"small\":{\"name\":\"small_favicon\",\"hash\":\"small_favicon_8f7a6f226f\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":500,\"size\":26.5,\"url\":\"/uploads/small_favicon_8f7a6f226f.png\"}}', 'favicon_8f7a6f226f', '.png', 'image/png', '2.78', '/uploads/favicon_8f7a6f226f.png', NULL, 'local', NULL, '2022-03-29 10:39:55.203000', '2022-03-29 10:39:55.203000', NULL, NULL),
(2, 'favicon', 'favicon', 'favicon', 500, 500, '{\"thumbnail\":{\"name\":\"thumbnail_favicon\",\"hash\":\"thumbnail_favicon_c55894aa30\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":28.98,\"url\":\"/uploads/thumbnail_favicon_c55894aa30.png\"}}', 'favicon_c55894aa30', '.png', 'image/png', '22.47', '/uploads/favicon_c55894aa30.png', NULL, 'local', NULL, '2022-03-29 10:39:55.205000', '2022-03-29 11:08:20.204000', NULL, 1),
(3, 'undraw-content-team', 'undraw-content-team', 'undraw-content-team', 1119, 712, '{\"thumbnail\":{\"name\":\"thumbnail_undraw-content-team\",\"hash\":\"thumbnail_undraw_content_team_046cd66b88\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":156,\"size\":13.68,\"url\":\"/uploads/thumbnail_undraw_content_team_046cd66b88.png\"},\"large\":{\"name\":\"large_undraw-content-team\",\"hash\":\"large_undraw_content_team_046cd66b88\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":636,\"size\":71.49,\"url\":\"/uploads/large_undraw_content_team_046cd66b88.png\"},\"medium\":{\"name\":\"medium_undraw-content-team\",\"hash\":\"medium_undraw_content_team_046cd66b88\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":477,\"size\":49.93,\"url\":\"/uploads/medium_undraw_content_team_046cd66b88.png\"},\"small\":{\"name\":\"small_undraw-content-team\",\"hash\":\"small_undraw_content_team_046cd66b88\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":318,\"size\":31.36,\"url\":\"/uploads/small_undraw_content_team_046cd66b88.png\"}}', 'undraw_content_team_046cd66b88', '.png', 'image/png', '15.13', '/uploads/undraw_content_team_046cd66b88.png', NULL, 'local', NULL, '2022-03-29 10:39:55.280000', '2022-03-29 10:39:55.280000', NULL, NULL),
(4, 'undraw-content-team', 'undraw-content-team', 'undraw-content-team', 1119, 712, '{\"thumbnail\":{\"name\":\"thumbnail_undraw-content-team\",\"hash\":\"thumbnail_undraw_content_team_2f95a43815\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":156,\"size\":13.68,\"url\":\"/uploads/thumbnail_undraw_content_team_2f95a43815.png\"},\"large\":{\"name\":\"large_undraw-content-team\",\"hash\":\"large_undraw_content_team_2f95a43815\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":636,\"size\":71.49,\"url\":\"/uploads/large_undraw_content_team_2f95a43815.png\"},\"medium\":{\"name\":\"medium_undraw-content-team\",\"hash\":\"medium_undraw_content_team_2f95a43815\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":477,\"size\":49.93,\"url\":\"/uploads/medium_undraw_content_team_2f95a43815.png\"},\"small\":{\"name\":\"small_undraw-content-team\",\"hash\":\"small_undraw_content_team_2f95a43815\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":318,\"size\":31.36,\"url\":\"/uploads/small_undraw_content_team_2f95a43815.png\"}}', 'undraw_content_team_2f95a43815', '.png', 'image/png', '15.13', '/uploads/undraw_content_team_2f95a43815.png', NULL, 'local', NULL, '2022-03-29 10:39:55.281000', '2022-03-29 10:39:55.281000', NULL, NULL),
(5, 'undraw-content-team', 'undraw-content-team', 'undraw-content-team', NULL, NULL, NULL, 'undraw_content_team_991fac9dfd', '.svg', 'image/svg+xml', '11.25', '/uploads/undraw_content_team_991fac9dfd.svg', NULL, NULL, NULL, '2022-03-29 10:39:55.297000', '2022-03-29 10:39:55.297000', NULL, NULL),
(6, 'undraw-design-page', 'undraw-design-page', 'undraw-design-page', NULL, NULL, NULL, 'undraw_design_page_0f3f2b15ea', '.svg', 'image/svg+xml', '10.35', '/uploads/undraw_design_page_0f3f2b15ea.svg', NULL, NULL, NULL, '2022-03-29 10:39:55.311000', '2022-03-29 10:39:55.311000', NULL, NULL),
(7, 'undraw-content-team', 'undraw-content-team', 'undraw-content-team', NULL, NULL, NULL, 'undraw_content_team_2998c6416e', '.svg', 'image/svg+xml', '11.25', '/uploads/undraw_content_team_2998c6416e.svg', NULL, NULL, NULL, '2022-03-29 10:39:55.318000', '2022-03-29 10:39:55.318000', NULL, NULL),
(8, 'undraw-create-page', 'undraw-create-page', 'undraw-create-page', NULL, NULL, NULL, 'undraw_create_page_e216de4713', '.svg', 'image/svg+xml', '13.29', '/uploads/undraw_create_page_e216de4713.svg', NULL, NULL, NULL, '2022-03-29 10:39:55.324000', '2022-03-29 10:39:55.324000', NULL, NULL),
(9, 'undraw-design-page', 'undraw-design-page', 'undraw-design-page', NULL, NULL, NULL, 'undraw_design_page_85e9b3a35c', '.svg', 'image/svg+xml', '10.35', '/uploads/undraw_design_page_85e9b3a35c.svg', NULL, NULL, NULL, '2022-03-29 10:39:55.330000', '2022-03-29 10:39:55.330000', NULL, NULL),
(10, 'preview', 'preview', 'preview', NULL, NULL, NULL, 'preview_479c772459', '.svg', 'image/svg+xml', '0.92', '/uploads/preview_479c772459.svg', NULL, NULL, NULL, '2022-03-29 10:39:55.339000', '2022-03-29 10:39:55.339000', NULL, NULL),
(11, 'undraw-create-page', 'undraw-create-page', 'undraw-create-page', NULL, NULL, NULL, 'undraw_create_page_0c0cc1bb66', '.svg', 'image/svg+xml', '13.29', '/uploads/undraw_create_page_0c0cc1bb66.svg', NULL, NULL, NULL, '2022-03-29 10:39:55.345000', '2022-03-29 10:39:55.345000', NULL, NULL),
(12, 'preview', 'preview', 'preview', NULL, NULL, NULL, 'preview_e5cebd37b5', '.svg', 'image/svg+xml', '0.92', '/uploads/preview_e5cebd37b5.svg', NULL, NULL, NULL, '2022-03-29 10:39:55.362000', '2022-03-29 10:39:55.362000', NULL, NULL),
(13, 'devices', 'devices', 'devices', NULL, NULL, NULL, 'devices_b35e8b2075', '.svg', 'image/svg+xml', '0.32', '/uploads/devices_b35e8b2075.svg', NULL, NULL, NULL, '2022-03-29 10:39:55.363000', '2022-03-29 10:39:55.363000', NULL, NULL),
(14, 'devices', 'devices', 'devices', NULL, NULL, NULL, 'devices_9b67e5842d', '.svg', 'image/svg+xml', '0.32', '/uploads/devices_9b67e5842d.svg', NULL, NULL, NULL, '2022-03-29 10:39:55.375000', '2022-03-29 10:39:55.375000', NULL, NULL),
(15, 'palette', 'palette', 'palette', NULL, NULL, NULL, 'palette_7c94974219', '.svg', 'image/svg+xml', '1.09', '/uploads/palette_7c94974219.svg', NULL, NULL, NULL, '2022-03-29 10:39:55.377000', '2022-03-29 10:39:55.377000', NULL, NULL),
(16, 'palette', 'palette', 'palette', NULL, NULL, NULL, 'palette_b6f3d09fbd', '.svg', 'image/svg+xml', '1.09', '/uploads/palette_b6f3d09fbd.svg', NULL, NULL, NULL, '2022-03-29 10:39:55.389000', '2022-03-29 10:39:55.389000', NULL, NULL),
(17, 'undraw-content-team', 'undraw-content-team', 'undraw-content-team', 1119, 712, '{\"thumbnail\":{\"name\":\"thumbnail_undraw-content-team\",\"hash\":\"thumbnail_undraw_content_team_bc27eb3b3e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":156,\"size\":13.68,\"url\":\"/uploads/thumbnail_undraw_content_team_bc27eb3b3e.png\"},\"large\":{\"name\":\"large_undraw-content-team\",\"hash\":\"large_undraw_content_team_bc27eb3b3e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":1000,\"height\":636,\"size\":71.49,\"url\":\"/uploads/large_undraw_content_team_bc27eb3b3e.png\"},\"medium\":{\"name\":\"medium_undraw-content-team\",\"hash\":\"medium_undraw_content_team_bc27eb3b3e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":477,\"size\":49.93,\"url\":\"/uploads/medium_undraw_content_team_bc27eb3b3e.png\"},\"small\":{\"name\":\"small_undraw-content-team\",\"hash\":\"small_undraw_content_team_bc27eb3b3e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":318,\"size\":31.36,\"url\":\"/uploads/small_undraw_content_team_bc27eb3b3e.png\"}}', 'undraw_content_team_bc27eb3b3e', '.png', 'image/png', '15.13', '/uploads/undraw_content_team_bc27eb3b3e.png', NULL, 'local', NULL, '2022-03-29 10:39:55.427000', '2022-03-29 10:39:55.427000', NULL, NULL),
(18, 'inovatta-corretora-de-seguros', 'inovatta-corretora-de-seguros', 'inovatta-corretora-de-seguros', 500, 500, '{\"thumbnail\":{\"name\":\"thumbnail_inovatta-corretora-de-seguros\",\"hash\":\"thumbnail_undraw_content_team_e60944787d\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":28.98,\"url\":\"/uploads/thumbnail_undraw_content_team_e60944787d.png\"}}', 'undraw_content_team_e60944787d', '.png', 'image/png', '22.47', '/uploads/undraw_content_team_e60944787d.png', NULL, 'local', NULL, '2022-03-29 10:39:55.435000', '2022-03-29 11:07:22.157000', NULL, 1),
(19, 'logo', 'logo', 'logo', 1000, 265, '{\"thumbnail\":{\"name\":\"thumbnail_logo\",\"hash\":\"thumbnail_logo_1e8753b735\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":65,\"size\":9.88,\"url\":\"/uploads/thumbnail_logo_1e8753b735.png\"},\"medium\":{\"name\":\"medium_logo\",\"hash\":\"medium_logo_1e8753b735\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":750,\"height\":199,\"size\":36.37,\"url\":\"/uploads/medium_logo_1e8753b735.png\"},\"small\":{\"name\":\"small_logo\",\"hash\":\"small_logo_1e8753b735\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":133,\"size\":21.22,\"url\":\"/uploads/small_logo_1e8753b735.png\"}}', 'logo_1e8753b735', '.png', 'image/png', '6.65', '/uploads/logo_1e8753b735.png', NULL, 'local', NULL, '2022-03-29 10:39:55.543000', '2022-03-29 10:39:55.543000', NULL, NULL),
(21, 'logo', 'logo', 'logo', 500, 500, '{\"thumbnail\":{\"name\":\"thumbnail_logo\",\"hash\":\"thumbnail_logo_c5047557ea\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":28.98,\"url\":\"/uploads/thumbnail_logo_c5047557ea.png\"}}', 'logo_c5047557ea', '.png', 'image/png', '22.47', '/uploads/logo_c5047557ea.png', NULL, 'local', NULL, '2022-03-29 10:39:55.589000', '2022-03-29 11:10:30.030000', NULL, 1),
(25, 'logo', 'logo', 'logo', 500, 500, '{\"thumbnail\":{\"name\":\"thumbnail_logo\",\"hash\":\"thumbnail_logo_c412ff3594\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":28.98,\"url\":\"/uploads/thumbnail_logo_c412ff3594.png\"}}', 'logo_c412ff3594', '.png', 'image/png', '22.47', '/uploads/logo_c412ff3594.png', NULL, 'local', NULL, '2022-03-29 10:39:55.751000', '2022-03-29 11:11:07.791000', NULL, 1),
(32, 'user', 'user', 'user', 1448, 1450, '{\"thumbnail\":{\"name\":\"thumbnail_user\",\"hash\":\"thumbnail_user_402c5a0c61\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":156,\"height\":156,\"size\":61.2,\"url\":\"/uploads/thumbnail_user_402c5a0c61.png\"},\"large\":{\"name\":\"large_user\",\"hash\":\"large_user_402c5a0c61\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":999,\"height\":1000,\"size\":1933.26,\"url\":\"/uploads/large_user_402c5a0c61.png\"},\"medium\":{\"name\":\"medium_user\",\"hash\":\"medium_user_402c5a0c61\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":749,\"height\":750,\"size\":1120.61,\"url\":\"/uploads/medium_user_402c5a0c61.png\"},\"small\":{\"name\":\"small_user\",\"hash\":\"small_user_402c5a0c61\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":499,\"height\":500,\"size\":520.32,\"url\":\"/uploads/small_user_402c5a0c61.png\"}}', 'user_402c5a0c61', '.png', 'image/png', '953.54', '/uploads/user_402c5a0c61.png', NULL, 'local', NULL, '2022-03-29 10:39:56.591000', '2022-03-29 12:59:27.255000', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `files_related_morphs`
--

INSERT INTO `files_related_morphs` (`file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(17, 5, 'meta.metadata', 'shareImage', 1),
(1, 2, 'api::global.global', 'favicon', 1),
(4, 2, 'meta.metadata', 'shareImage', 1),
(3, 6, 'meta.metadata', 'shareImage', 1),
(12, 1, 'elements.feature-column', 'icon', 1),
(16, 3, 'elements.feature-column', 'icon', 1),
(14, 2, 'elements.feature-column', 'icon', 1),
(10, 4, 'elements.feature-column', 'icon', 1),
(13, 5, 'elements.feature-column', 'icon', 1),
(9, 1, 'elements.feature-row', 'media', 1),
(7, 1, 'sections.hero', 'picture', 1),
(15, 6, 'elements.feature-column', 'icon', 1),
(11, 2, 'elements.feature-row', 'media', 1),
(8, 4, 'elements.feature-row', 'media', 1),
(6, 3, 'elements.feature-row', 'media', 1),
(19, 4, 'elements.logos', 'logo', 1),
(5, 2, 'sections.hero', 'picture', 1),
(32, 2, 'elements.testimonial', 'picture', 1),
(18, 1, 'meta.metadata', 'shareImage', 1),
(21, 1, 'layout.navbar', 'logo', 1),
(25, 1, 'layout.footer', 'logo', 1),
(2, 1, 'api::global.global', 'favicon', 1),
(18, 11, 'meta.metadata', 'shareImage', 1),
(21, 3, 'layout.navbar', 'logo', 1),
(25, 3, 'layout.footer', 'logo', 1),
(2, 3, 'api::global.global', 'favicon', 1),
(4, 12, 'meta.metadata', 'shareImage', 1),
(9, 5, 'elements.feature-row', 'media', 1),
(11, 6, 'elements.feature-row', 'media', 1),
(7, 3, 'sections.hero', 'picture', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `globals`
--

CREATE TABLE `globals` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_title_suffix` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `globals`
--

INSERT INTO `globals` (`id`, `meta_title_suffix`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'Inovatta Corretora de seguros em Goiânia', '2022-03-29 10:39:55.810000', '2022-03-29 11:42:35.536000', NULL, 1, 'en'),
(2, 'Strapi Corporate', '2022-03-29 10:39:55.810000', '2022-03-29 11:42:35.536000', NULL, NULL, 'fr'),
(3, 'Inovatta Corretora de seguros em Goiânia', '2022-03-29 11:42:35.495000', '2022-03-29 11:42:35.495000', 1, 1, 'pt-BR');

-- --------------------------------------------------------

--
-- Estrutura para tabela `globals_components`
--

CREATE TABLE `globals_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `component_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `globals_components`
--

INSERT INTO `globals_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 2, 5, 'meta.metadata', 'metadata', 1),
(3, 2, 2, 'elements.notification-banner', 'notificationBanner', 1),
(5, 2, 2, 'layout.navbar', 'navbar', 1),
(7, 2, 2, 'layout.footer', 'footer', 1),
(9, 1, 1, 'meta.metadata', 'metadata', 1),
(10, 1, 1, 'elements.notification-banner', 'notificationBanner', 1),
(11, 1, 1, 'layout.navbar', 'navbar', 1),
(12, 1, 1, 'layout.footer', 'footer', 1),
(13, 3, 11, 'meta.metadata', 'metadata', 1),
(14, 3, 3, 'elements.notification-banner', 'notificationBanner', 1),
(15, 3, 3, 'layout.navbar', 'navbar', 1),
(16, 3, 3, 'layout.footer', 'footer', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `globals_localizations_links`
--

CREATE TABLE `globals_localizations_links` (
  `global_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_global_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `globals_localizations_links`
--

INSERT INTO `globals_localizations_links` (`global_id`, `inv_global_id`) VALUES
(3, 1),
(3, 2),
(1, 3),
(1, 2),
(2, 3),
(2, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2022-03-29 10:39:55.034000', '2022-03-29 10:39:55.034000', NULL, NULL),
(2, 'French (fr)', 'fr', '2022-03-29 10:39:55.051000', '2022-03-29 10:39:55.051000', NULL, NULL),
(3, 'Portuguese (Brazil) (pt-BR)', 'pt-BR', '2022-03-29 11:40:34.084000', '2022-03-29 11:40:40.740000', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `lead_form_submissions`
--

CREATE TABLE `lead_form_submissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `mensagem` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `lead_form_submissions`
--

INSERT INTO `lead_form_submissions` (`id`, `email`, `status`, `location`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `mensagem`) VALUES
(1, 'teste@gmail.com', 'seen', 'site', '2022-03-29 22:26:30.619000', '2022-03-29 22:26:30.619000', 1, 1, '# Teste de texto\n\n\n**Mensagem enviada**'),
(2, 'teste2@gmail.com', 'seen', 'site', '2022-03-29 22:27:50.166000', '2022-03-29 22:27:50.166000', 1, 1, '# Teste de texto\n\n\n**Mensagem enviada**');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `pages`
--

INSERT INTO `pages` (`id`, `short_name`, `slug`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'Home', '', '2022-03-29 10:39:56.673000', '2022-03-29 10:39:56.673000', '2021-10-22 05:11:55.490000', NULL, NULL, 'en'),
(2, 'Pricing', 'pricing', '2022-03-29 10:39:55.113000', '2022-03-29 10:39:55.113000', '2021-10-22 05:11:55.490000', NULL, NULL, 'en'),
(3, 'Secret', 'secret', '2022-03-29 10:39:55.088000', '2022-03-29 10:39:55.088000', NULL, NULL, NULL, 'en'),
(4, 'Contact', 'contact', '2022-03-29 10:39:55.104000', '2022-03-29 10:39:55.104000', '2021-10-22 05:11:55.490000', NULL, NULL, 'en'),
(5, 'Home', '', '2022-03-29 10:39:56.672000', '2022-03-29 10:39:56.672000', '2021-10-22 05:11:55.490000', NULL, NULL, 'fr'),
(6, 'Pricing', 'pricing', '2022-03-29 10:39:55.112000', '2022-03-29 10:39:55.112000', '2021-10-22 05:11:55.490000', NULL, NULL, 'fr'),
(7, 'Secret', 'secret', '2022-03-29 10:39:55.093000', '2022-03-29 10:39:55.093000', NULL, NULL, NULL, 'fr'),
(8, 'Contact', 'contact', '2022-03-29 10:39:55.100000', '2022-03-29 10:39:55.100000', '2021-10-22 05:11:55.490000', NULL, NULL, 'fr'),
(9, 'Home', '', '2022-03-30 00:02:14.508000', '2022-03-30 00:02:14.508000', NULL, 1, 1, 'en');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pages_components`
--

CREATE TABLE `pages_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `component_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `pages_components`
--

INSERT INTO `pages_components` (`id`, `entity_id`, `component_id`, `component_type`, `field`, `order`) VALUES
(1, 3, 7, 'meta.metadata', 'metadata', 1),
(2, 3, 2, 'sections.rich-text', 'contentSections', 1),
(3, 7, 9, 'meta.metadata', 'metadata', 1),
(4, 7, 3, 'sections.rich-text', 'contentSections', 1),
(5, 8, 10, 'meta.metadata', 'metadata', 1),
(6, 4, 4, 'meta.metadata', 'metadata', 1),
(7, 8, 4, 'sections.rich-text', 'contentSections', 1),
(8, 8, 4, 'sections.bottom-actions', 'contentSections', 2),
(9, 4, 1, 'sections.rich-text', 'contentSections', 1),
(10, 4, 1, 'sections.bottom-actions', 'contentSections', 2),
(11, 6, 8, 'meta.metadata', 'metadata', 1),
(12, 2, 3, 'meta.metadata', 'metadata', 1),
(13, 6, 2, 'sections.pricing', 'contentSections', 1),
(14, 2, 1, 'sections.pricing', 'contentSections', 1),
(15, 5, 6, 'meta.metadata', 'metadata', 1),
(16, 1, 2, 'meta.metadata', 'metadata', 1),
(17, 5, 2, 'sections.hero', 'contentSections', 1),
(18, 5, 2, 'sections.feature-rows-group', 'contentSections', 2),
(19, 5, 2, 'sections.feature-columns-group', 'contentSections', 3),
(20, 5, 2, 'sections.testimonials-group', 'contentSections', 4),
(21, 5, 2, 'sections.lead-form', 'contentSections', 5),
(22, 5, 3, 'sections.bottom-actions', 'contentSections', 6),
(23, 1, 1, 'sections.hero', 'contentSections', 1),
(24, 1, 1, 'sections.feature-rows-group', 'contentSections', 2),
(25, 1, 1, 'sections.feature-columns-group', 'contentSections', 3),
(26, 1, 1, 'sections.testimonials-group', 'contentSections', 4),
(27, 1, 1, 'sections.lead-form', 'contentSections', 5),
(28, 1, 2, 'sections.bottom-actions', 'contentSections', 6),
(29, 9, 12, 'meta.metadata', 'metadata', 1),
(30, 9, 3, 'sections.hero', 'contentSections', 1),
(31, 9, 3, 'sections.feature-rows-group', 'contentSections', 2),
(32, 9, 3, 'sections.feature-columns-group', 'contentSections', 3),
(33, 9, 3, 'sections.testimonials-group', 'contentSections', 4),
(34, 9, 3, 'sections.lead-form', 'contentSections', 5),
(35, 9, 5, 'sections.bottom-actions', 'contentSections', 6);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pages_localizations_links`
--

CREATE TABLE `pages_localizations_links` (
  `page_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_page_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `pages_localizations_links`
--

INSERT INTO `pages_localizations_links` (`page_id`, `inv_page_id`) VALUES
(3, 7),
(7, 3),
(8, 4),
(4, 8),
(6, 2),
(2, 6),
(5, 1),
(1, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\"],\"configurable\":false,\"required\":false,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\"],\"configurable\":false,\"required\":false,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"plugin::comments.comment\":{\"info\":{\"tableName\":\"plugin-comments-comments\",\"singularName\":\"comment\",\"pluralName\":\"comments\",\"displayName\":\"Comment\",\"description\":\"Comment content type\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"content\":{\"type\":\"text\",\"configurable\":false,\"required\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blockedThread\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blockReason\":{\"type\":\"string\",\"configurable\":false},\"authorUser\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\",\"configurable\":false},\"authorId\":{\"type\":\"string\",\"configurable\":false},\"authorName\":{\"type\":\"string\",\"configurable\":false},\"authorEmail\":{\"type\":\"email\",\"configurable\":false},\"authorAvatar\":{\"type\":\"string\",\"configurable\":false},\"removed\":{\"type\":\"boolean\",\"configurable\":false},\"approvalStatus\":{\"type\":\"string\",\"configurable\":false},\"related\":{\"type\":\"string\",\"configurable\":false},\"reports\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::comments.comment-report\",\"mappedBy\":\"related\",\"configurable\":false},\"threadOf\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::comments.comment\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"tableName\":\"plugin-comments-comments\",\"singularName\":\"comment\",\"pluralName\":\"comments\",\"displayName\":\"Comment\",\"description\":\"Comment content type\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"content\":{\"type\":\"text\",\"configurable\":false,\"required\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blockedThread\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blockReason\":{\"type\":\"string\",\"configurable\":false},\"authorUser\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\",\"configurable\":false},\"authorId\":{\"type\":\"string\",\"configurable\":false},\"authorName\":{\"type\":\"string\",\"configurable\":false},\"authorEmail\":{\"type\":\"email\",\"configurable\":false},\"authorAvatar\":{\"type\":\"string\",\"configurable\":false},\"removed\":{\"type\":\"boolean\",\"configurable\":false},\"approvalStatus\":{\"type\":\"string\",\"configurable\":false},\"related\":{\"type\":\"string\",\"configurable\":false},\"reports\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::comments.comment-report\",\"mappedBy\":\"related\",\"configurable\":false},\"threadOf\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::comments.comment\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"comment\",\"connection\":\"default\",\"uid\":\"plugin::comments.comment\",\"plugin\":\"comments\",\"collectionName\":\"comments_comment\",\"globalId\":\"CommentsComment\"},\"plugin::comments.comment-report\":{\"info\":{\"tableName\":\"plugin-comments-reports\",\"singularName\":\"comment-report\",\"pluralName\":\"comment-reports\",\"displayName\":\"Reports\",\"description\":\"Reports content type\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"content\":{\"type\":\"text\",\"configurable\":false},\"reason\":{\"type\":\"enumeration\",\"enum\":[\"BAD_LANGUAGE\",\"DISCRIMINATION\",\"OTHER\"],\"default\":\"OTHER\",\"configurable\":false,\"required\":true},\"resolved\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::comments.comment\",\"inversedBy\":\"reports\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"tableName\":\"plugin-comments-reports\",\"singularName\":\"comment-report\",\"pluralName\":\"comment-reports\",\"displayName\":\"Reports\",\"description\":\"Reports content type\",\"kind\":\"collectionType\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"content\":{\"type\":\"text\",\"configurable\":false},\"reason\":{\"type\":\"enumeration\",\"enum\":[\"BAD_LANGUAGE\",\"DISCRIMINATION\",\"OTHER\"],\"default\":\"OTHER\",\"configurable\":false,\"required\":true},\"resolved\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::comments.comment\",\"inversedBy\":\"reports\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"comment-report\",\"connection\":\"default\",\"uid\":\"plugin::comments.comment-report\",\"plugin\":\"comments\",\"collectionName\":\"comments_comment-report\",\"globalId\":\"CommentsCommentReport\"},\"plugin::email-designer.email-template\":{\"kind\":\"collectionType\",\"collectionName\":\"email_templates\",\"info\":{\"singularName\":\"email-template\",\"pluralName\":\"email-templates\",\"displayName\":\"Email-template\",\"name\":\"email-template\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"options\":{\"draftAndPublish\":false,\"timestamps\":true,\"increments\":true,\"comment\":\"\"},\"attributes\":{\"templateReferenceId\":{\"type\":\"integer\",\"required\":false,\"unique\":true},\"design\":{\"type\":\"json\"},\"name\":{\"type\":\"string\"},\"subject\":{\"type\":\"string\"},\"bodyHtml\":{\"type\":\"text\"},\"bodyText\":{\"type\":\"text\"},\"enabled\":{\"type\":\"boolean\",\"default\":true},\"tags\":{\"type\":\"json\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"email_templates\",\"info\":{\"singularName\":\"email-template\",\"pluralName\":\"email-templates\",\"displayName\":\"Email-template\",\"name\":\"email-template\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true,\"increments\":true,\"comment\":\"\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"templateReferenceId\":{\"type\":\"integer\",\"required\":false,\"unique\":true},\"design\":{\"type\":\"json\"},\"name\":{\"type\":\"string\"},\"subject\":{\"type\":\"string\"},\"bodyHtml\":{\"type\":\"text\"},\"bodyText\":{\"type\":\"text\"},\"enabled\":{\"type\":\"boolean\",\"default\":true},\"tags\":{\"type\":\"json\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"email-template\",\"connection\":\"default\",\"uid\":\"plugin::email-designer.email-template\",\"plugin\":\"email-designer\",\"globalId\":\"EmailDesignerEmailTemplate\"},\"api::global.global\":{\"kind\":\"singleType\",\"collectionName\":\"globals\",\"info\":{\"singularName\":\"global\",\"pluralName\":\"globals\",\"displayName\":\"Geral\",\"name\":\"global\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"metadata\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"meta.metadata\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"metaTitleSuffix\":{\"type\":\"string\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"favicon\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"notificationBanner\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"elements.notification-banner\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"navbar\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"layout.navbar\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"footer\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"layout.footer\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::global.global\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"globals\",\"info\":{\"singularName\":\"global\",\"pluralName\":\"globals\",\"displayName\":\"Geral\",\"name\":\"global\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"metadata\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"meta.metadata\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"metaTitleSuffix\":{\"type\":\"string\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"favicon\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"notificationBanner\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"elements.notification-banner\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"navbar\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"layout.navbar\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"footer\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"layout.footer\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"global\",\"connection\":\"default\",\"uid\":\"api::global.global\",\"apiName\":\"global\",\"globalId\":\"Global\",\"actions\":{},\"lifecycles\":{}},\"api::lead-form-submission.lead-form-submission\":{\"kind\":\"collectionType\",\"collectionName\":\"lead_form_submissions\",\"info\":{\"singularName\":\"lead-form-submission\",\"pluralName\":\"lead-form-submissions\",\"displayName\":\"Lead cadastrado\",\"name\":\"lead-form-submission\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"email\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"seen\",\"contacted\",\"ignored\"]},\"location\":{\"type\":\"string\"},\"mensagem\":{\"type\":\"richtext\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"lead_form_submissions\",\"info\":{\"singularName\":\"lead-form-submission\",\"pluralName\":\"lead-form-submissions\",\"displayName\":\"Lead cadastrado\",\"name\":\"lead-form-submission\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"email\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"seen\",\"contacted\",\"ignored\"]},\"location\":{\"type\":\"string\"},\"mensagem\":{\"type\":\"richtext\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"lead-form-submission\",\"connection\":\"default\",\"uid\":\"api::lead-form-submission.lead-form-submission\",\"apiName\":\"lead-form-submission\",\"globalId\":\"LeadFormSubmission\",\"actions\":{},\"lifecycles\":{}},\"api::page.page\":{\"kind\":\"collectionType\",\"collectionName\":\"pages\",\"info\":{\"singularName\":\"page\",\"pluralName\":\"pages\",\"displayName\":\"Página\",\"name\":\"page\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"shortName\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"metadata\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"meta.metadata\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"contentSections\":{\"type\":\"dynamiczone\",\"components\":[\"sections.hero\",\"sections.bottom-actions\",\"sections.feature-columns-group\",\"sections.feature-rows-group\",\"sections.testimonials-group\",\"sections.large-video\",\"sections.rich-text\",\"sections.pricing\",\"sections.lead-form\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"slug\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"string\",\"regex\":\"^$|^[a-zA-Z/-]+$\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::page.page\"},\"locale\":{\"writable\":true,\"private\":false,\"configurable\":false,\"visible\":false,\"type\":\"string\"}},\"__schema__\":{\"collectionName\":\"pages\",\"info\":{\"singularName\":\"page\",\"pluralName\":\"pages\",\"displayName\":\"Página\",\"name\":\"page\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":true,\"draftAndPublish\":true},\"pluginOptions\":{\"i18n\":{\"localized\":true}},\"attributes\":{\"shortName\":{\"type\":\"string\",\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"metadata\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"meta.metadata\",\"required\":true,\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"contentSections\":{\"type\":\"dynamiczone\",\"components\":[\"sections.hero\",\"sections.bottom-actions\",\"sections.feature-columns-group\",\"sections.feature-rows-group\",\"sections.testimonials-group\",\"sections.large-video\",\"sections.rich-text\",\"sections.pricing\",\"sections.lead-form\"],\"pluginOptions\":{\"i18n\":{\"localized\":true}}},\"slug\":{\"pluginOptions\":{\"i18n\":{\"localized\":false}},\"type\":\"string\",\"regex\":\"^$|^[a-zA-Z/-]+$\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"page\",\"connection\":\"default\",\"uid\":\"api::page.page\",\"apiName\":\"page\",\"globalId\":\"Page\",\"actions\":{},\"lifecycles\":{}}}', 'object', NULL, NULL),
(2, 'plugin_content_manager_configuration_components::elements.logos', '{\"uid\":\"elements.logos\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"logo\":{\"edit\":{\"label\":\"logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"logo\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"logo\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"logo\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_components::elements.feature-row', '{\"uid\":\"elements.feature-row\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"media\":{\"edit\":{\"label\":\"media\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"media\",\"searchable\":false,\"sortable\":false}},\"link\":{\"edit\":{\"label\":\"link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"link\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"description\",\"media\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"media\",\"size\":6}],[{\"name\":\"link\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_components::elements.feature', '{\"uid\":\"elements.feature\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\"],\"edit\":[[{\"name\":\"name\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_components::elements.plan', '{\"uid\":\"elements.plan\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"features\":{\"edit\":{\"label\":\"features\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"features\",\"searchable\":false,\"sortable\":false}},\"isRecommended\":{\"edit\":{\"label\":\"isRecommended\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isRecommended\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"price\",\"searchable\":true,\"sortable\":true}},\"pricePeriod\":{\"edit\":{\"label\":\"pricePeriod\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pricePeriod\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"features\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"features\",\"size\":12}],[{\"name\":\"isRecommended\",\"size\":4},{\"name\":\"price\",\"size\":4}],[{\"name\":\"pricePeriod\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_components::elements.testimonial', '{\"uid\":\"elements.testimonial\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"authorName\",\"defaultSortBy\":\"authorName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"logo\":{\"edit\":{\"label\":\"logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"logo\",\"searchable\":false,\"sortable\":false}},\"picture\":{\"edit\":{\"label\":\"picture\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"picture\",\"searchable\":false,\"sortable\":false}},\"text\":{\"edit\":{\"label\":\"text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"text\",\"searchable\":true,\"sortable\":true}},\"authorName\":{\"edit\":{\"label\":\"authorName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"authorName\",\"searchable\":true,\"sortable\":true}},\"authorTitle\":{\"edit\":{\"label\":\"authorTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"authorTitle\",\"searchable\":true,\"sortable\":true}},\"link\":{\"edit\":{\"label\":\"link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"link\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"logo\",\"picture\",\"text\"],\"edit\":[[{\"name\":\"logo\",\"size\":6},{\"name\":\"picture\",\"size\":6}],[{\"name\":\"text\",\"size\":6},{\"name\":\"authorName\",\"size\":6}],[{\"name\":\"authorTitle\",\"size\":6},{\"name\":\"link\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_components::layout.navbar', '{\"uid\":\"layout.navbar\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"links\":{\"edit\":{\"label\":\"links\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"links\",\"searchable\":false,\"sortable\":false}},\"button\":{\"edit\":{\"label\":\"button\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"button\",\"searchable\":false,\"sortable\":false}},\"logo\":{\"edit\":{\"label\":\"logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"logo\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"links\",\"button\",\"logo\"],\"edit\":[[{\"name\":\"links\",\"size\":12}],[{\"name\":\"button\",\"size\":12}],[{\"name\":\"logo\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_components::links.button-link', '{\"uid\":\"links.button-link\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"url\",\"defaultSortBy\":\"url\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"newTab\":{\"edit\":{\"label\":\"newTab\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"newTab\",\"searchable\":true,\"sortable\":true}},\"text\":{\"edit\":{\"label\":\"text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"text\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"url\",\"newTab\",\"text\"],\"edit\":[[{\"name\":\"url\",\"size\":6},{\"name\":\"newTab\",\"size\":4}],[{\"name\":\"text\",\"size\":6},{\"name\":\"type\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(9, 'plugin_content_manager_configuration_components::sections.bottom-actions', '{\"uid\":\"sections.bottom-actions\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"buttons\":{\"edit\":{\"label\":\"buttons\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"buttons\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"buttons\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"buttons\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_components::elements.notification-banner', '{\"uid\":\"elements.notification-banner\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"text\":{\"edit\":{\"label\":\"text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"text\",\"searchable\":false,\"sortable\":false}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\"],\"edit\":[[{\"name\":\"text\",\"size\":12}],[{\"name\":\"type\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_components::elements.feature-column', '{\"uid\":\"elements.feature-column\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"icon\":{\"edit\":{\"label\":\"icon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"icon\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"description\",\"icon\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"icon\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_components::elements.footer-section', '{\"uid\":\"elements.footer-section\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"links\":{\"edit\":{\"label\":\"links\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"links\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"links\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"links\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_components::layout.footer', '{\"uid\":\"layout.footer\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"smallText\",\"defaultSortBy\":\"smallText\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"logo\":{\"edit\":{\"label\":\"logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"logo\",\"searchable\":false,\"sortable\":false}},\"columns\":{\"edit\":{\"label\":\"columns\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"columns\",\"searchable\":false,\"sortable\":false}},\"smallText\":{\"edit\":{\"label\":\"smallText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"smallText\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"logo\",\"columns\",\"smallText\"],\"edit\":[[{\"name\":\"logo\",\"size\":6}],[{\"name\":\"columns\",\"size\":12}],[{\"name\":\"smallText\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_components::meta.metadata', '{\"uid\":\"meta.metadata\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"metaTitle\",\"defaultSortBy\":\"metaTitle\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"metaTitle\":{\"edit\":{\"label\":\"metaTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaTitle\",\"searchable\":true,\"sortable\":true}},\"metaDescription\":{\"edit\":{\"label\":\"metaDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaDescription\",\"searchable\":true,\"sortable\":true}},\"shareImage\":{\"edit\":{\"label\":\"shareImage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"shareImage\",\"searchable\":false,\"sortable\":false}},\"twitterCardType\":{\"edit\":{\"label\":\"twitterCardType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"twitterCardType\",\"searchable\":true,\"sortable\":true}},\"twitterUsername\":{\"edit\":{\"label\":\"twitterUsername\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"twitterUsername\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"metaTitle\",\"metaDescription\",\"shareImage\"],\"edit\":[[{\"name\":\"metaTitle\",\"size\":6},{\"name\":\"metaDescription\",\"size\":6}],[{\"name\":\"shareImage\",\"size\":6},{\"name\":\"twitterCardType\",\"size\":6}],[{\"name\":\"twitterUsername\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(15, 'plugin_content_manager_configuration_components::links.button', '{\"uid\":\"links.button\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"text\",\"defaultSortBy\":\"text\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"text\":{\"edit\":{\"label\":\"text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"text\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"text\",\"type\"],\"edit\":[[{\"name\":\"text\",\"size\":6},{\"name\":\"type\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(16, 'plugin_content_manager_configuration_components::sections.large-video', '{\"uid\":\"sections.large-video\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"video\":{\"edit\":{\"label\":\"video\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"video\",\"searchable\":false,\"sortable\":false}},\"poster\":{\"edit\":{\"label\":\"poster\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"poster\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"description\",\"video\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"video\",\"size\":6},{\"name\":\"poster\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(17, 'plugin_content_manager_configuration_components::sections.pricing', '{\"uid\":\"sections.pricing\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"plans\":{\"edit\":{\"label\":\"plans\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"plans\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"plans\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"plans\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(18, 'plugin_content_manager_configuration_components::links.link', '{\"uid\":\"links.link\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"url\",\"defaultSortBy\":\"url\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"newTab\":{\"edit\":{\"label\":\"newTab\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"newTab\",\"searchable\":true,\"sortable\":true}},\"text\":{\"edit\":{\"label\":\"text\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"text\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"url\",\"newTab\",\"text\"],\"edit\":[[{\"name\":\"url\",\"size\":6},{\"name\":\"newTab\",\"size\":4}],[{\"name\":\"text\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(19, 'plugin_content_manager_configuration_components::sections.feature-rows-group', '{\"uid\":\"sections.feature-rows-group\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"features\":{\"edit\":{\"label\":\"features\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"features\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"features\"],\"edit\":[[{\"name\":\"features\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(20, 'plugin_content_manager_configuration_components::sections.feature-columns-group', '{\"uid\":\"sections.feature-columns-group\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"features\":{\"edit\":{\"label\":\"features\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"features\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"features\"],\"edit\":[[{\"name\":\"features\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(21, 'plugin_content_manager_configuration_components::sections.hero', '{\"uid\":\"sections.hero\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"label\":{\"edit\":{\"label\":\"label\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"label\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"picture\":{\"edit\":{\"label\":\"picture\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"picture\",\"searchable\":false,\"sortable\":false}},\"smallTextWithLink\":{\"edit\":{\"label\":\"smallTextWithLink\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"smallTextWithLink\",\"searchable\":false,\"sortable\":false}},\"buttons\":{\"edit\":{\"label\":\"buttons\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"buttons\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"label\",\"description\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"label\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"picture\",\"size\":6}],[{\"name\":\"smallTextWithLink\",\"size\":12}],[{\"name\":\"buttons\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(22, 'plugin_content_manager_configuration_components::sections.testimonials-group', '{\"uid\":\"sections.testimonials-group\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"link\":{\"edit\":{\"label\":\"link\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"link\",\"searchable\":false,\"sortable\":false}},\"logos\":{\"edit\":{\"label\":\"logos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"logos\",\"searchable\":false,\"sortable\":false}},\"testimonials\":{\"edit\":{\"label\":\"testimonials\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"testimonials\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"title\",\"description\",\"link\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"link\",\"size\":12}],[{\"name\":\"logos\",\"size\":12}],[{\"name\":\"testimonials\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(23, 'plugin_content_manager_configuration_components::sections.rich-text', '{\"uid\":\"sections.rich-text\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\"],\"edit\":[[{\"name\":\"content\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(24, 'plugin_content_manager_configuration_components::sections.lead-form', '{\"uid\":\"sections.lead-form\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"emailPlaceholder\":{\"edit\":{\"label\":\"emailPlaceholder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"emailPlaceholder\",\"searchable\":true,\"sortable\":true}},\"submitButton\":{\"edit\":{\"label\":\"submitButton\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"submitButton\",\"searchable\":false,\"sortable\":false}},\"location\":{\"edit\":{\"label\":\"location\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"location\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"emailPlaceholder\",\"submitButton\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"emailPlaceholder\",\"size\":6}],[{\"name\":\"submitButton\",\"size\":12}],[{\"name\":\"location\",\"size\":6}]],\"editRelations\":[]},\"isComponent\":true}', 'object', NULL, NULL),
(25, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}', 'object', NULL, NULL),
(26, 'plugin_content_manager_configuration_content_types::api::lead-form-submission.lead-form-submission', '{\"uid\":\"api::lead-form-submission.lead-form-submission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"email\",\"defaultSortBy\":\"email\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"location\":{\"edit\":{\"label\":\"location\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"location\",\"searchable\":true,\"sortable\":true}},\"mensagem\":{\"edit\":{\"label\":\"mensagem\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mensagem\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"email\",\"status\",\"location\"],\"edit\":[[{\"name\":\"email\",\"size\":6},{\"name\":\"status\",\"size\":6}],[{\"name\":\"location\",\"size\":6}],[{\"name\":\"mensagem\",\"size\":12}]],\"editRelations\":[]}}', 'object', NULL, NULL),
(27, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}]]}}', 'object', NULL, NULL),
(28, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}', 'object', NULL, NULL),
(29, 'plugin_content_manager_configuration_content_types::admin::role', '{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}', 'object', NULL, NULL),
(30, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}]]}}', 'object', NULL, NULL),
(31, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}', 'object', NULL, NULL),
(32, 'plugin_content_manager_configuration_content_types::admin::user', '{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', NULL, NULL),
(33, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', NULL, NULL),
(34, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}', 'object', NULL, NULL),
(35, 'plugin_content_manager_configuration_content_types::api::page.page', '{\"uid\":\"api::page.page\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":50,\"mainField\":\"shortName\",\"defaultSortBy\":\"shortName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"shortName\":{\"edit\":{\"label\":\"shortName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"shortName\",\"searchable\":true,\"sortable\":true}},\"metadata\":{\"edit\":{\"label\":\"metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metadata\",\"searchable\":false,\"sortable\":false}},\"contentSections\":{\"edit\":{\"label\":\"contentSections\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"contentSections\",\"searchable\":false,\"sortable\":false}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"shortName\",\"size\":6}],[{\"name\":\"metadata\",\"size\":12}],[{\"name\":\"contentSections\",\"size\":12}],[{\"name\":\"slug\",\"size\":6}]],\"editRelations\":[],\"list\":[\"id\",\"shortName\",\"metadata\",\"slug\"]}}', 'object', NULL, NULL),
(36, 'plugin_content_manager_configuration_content_types::api::global.global', '{\"uid\":\"api::global.global\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"metaTitleSuffix\",\"defaultSortBy\":\"metaTitleSuffix\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"metadata\":{\"edit\":{\"label\":\"metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metadata\",\"searchable\":false,\"sortable\":false}},\"metaTitleSuffix\":{\"edit\":{\"label\":\"metaTitleSuffix\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaTitleSuffix\",\"searchable\":true,\"sortable\":true}},\"favicon\":{\"edit\":{\"label\":\"favicon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"favicon\",\"searchable\":false,\"sortable\":false}},\"notificationBanner\":{\"edit\":{\"label\":\"notificationBanner\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"notificationBanner\",\"searchable\":false,\"sortable\":false}},\"navbar\":{\"edit\":{\"label\":\"navbar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"navbar\",\"searchable\":false,\"sortable\":false}},\"footer\":{\"edit\":{\"label\":\"footer\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"footer\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"metadata\",\"metaTitleSuffix\",\"favicon\"],\"editRelations\":[],\"edit\":[[{\"name\":\"metadata\",\"size\":12}],[{\"name\":\"metaTitleSuffix\",\"size\":6},{\"name\":\"favicon\",\"size\":6}],[{\"name\":\"notificationBanner\",\"size\":12}],[{\"name\":\"navbar\",\"size\":12}],[{\"name\":\"footer\",\"size\":12}]]}}', 'object', NULL, NULL),
(37, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(38, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(39, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(40, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(41, 'plugin_i18n_default_locale', '\"pt-BR\"', 'string', NULL, NULL),
(42, 'type_setup_initHasRun', 'true', 'boolean', 'development', NULL),
(43, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}', 'object', NULL, NULL),
(44, 'plugin_content_manager_configuration_content_types::plugin::email-designer.email-template', '{\"uid\":\"plugin::email-designer.email-template\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"templateReferenceId\":{\"edit\":{\"label\":\"templateReferenceId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"templateReferenceId\",\"searchable\":true,\"sortable\":true}},\"design\":{\"edit\":{\"label\":\"design\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"design\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"bodyHtml\":{\"edit\":{\"label\":\"bodyHtml\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"bodyHtml\",\"searchable\":true,\"sortable\":true}},\"bodyText\":{\"edit\":{\"label\":\"bodyText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"bodyText\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"enabled\",\"searchable\":true,\"sortable\":true}},\"tags\":{\"edit\":{\"label\":\"tags\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tags\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"templateReferenceId\",\"name\",\"subject\"],\"editRelations\":[],\"edit\":[[{\"name\":\"templateReferenceId\",\"size\":4}],[{\"name\":\"design\",\"size\":12}],[{\"name\":\"name\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"bodyHtml\",\"size\":6},{\"name\":\"bodyText\",\"size\":6}],[{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"tags\",\"size\":12}]]}}', 'object', NULL, NULL),
(45, 'plugin_content_manager_configuration_content_types::plugin::comments.comment-report', '{\"uid\":\"plugin::comments.comment-report\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":true,\"sortable\":true}},\"reason\":{\"edit\":{\"label\":\"reason\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"reason\",\"searchable\":true,\"sortable\":true}},\"resolved\":{\"edit\":{\"label\":\"resolved\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resolved\",\"searchable\":true,\"sortable\":true}},\"related\":{\"edit\":{\"label\":\"related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"blockReason\"},\"list\":{\"label\":\"related\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"content\",\"reason\",\"resolved\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"content\",\"size\":6},{\"name\":\"reason\",\"size\":6}],[{\"name\":\"resolved\",\"size\":4}]]}}', 'object', NULL, NULL),
(46, 'plugin_content_manager_configuration_content_types::plugin::comments.comment', '{\"uid\":\"plugin::comments.comment\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"blockReason\",\"defaultSortBy\":\"blockReason\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"blockedThread\":{\"edit\":{\"label\":\"blockedThread\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blockedThread\",\"searchable\":true,\"sortable\":true}},\"blockReason\":{\"edit\":{\"label\":\"blockReason\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blockReason\",\"searchable\":true,\"sortable\":true}},\"authorUser\":{\"edit\":{\"label\":\"authorUser\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"authorUser\",\"searchable\":true,\"sortable\":true}},\"authorId\":{\"edit\":{\"label\":\"authorId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"authorId\",\"searchable\":true,\"sortable\":true}},\"authorName\":{\"edit\":{\"label\":\"authorName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"authorName\",\"searchable\":true,\"sortable\":true}},\"authorEmail\":{\"edit\":{\"label\":\"authorEmail\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"authorEmail\",\"searchable\":true,\"sortable\":true}},\"authorAvatar\":{\"edit\":{\"label\":\"authorAvatar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"authorAvatar\",\"searchable\":true,\"sortable\":true}},\"removed\":{\"edit\":{\"label\":\"removed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"removed\",\"searchable\":true,\"sortable\":true}},\"approvalStatus\":{\"edit\":{\"label\":\"approvalStatus\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"approvalStatus\",\"searchable\":true,\"sortable\":true}},\"related\":{\"edit\":{\"label\":\"related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"related\",\"searchable\":true,\"sortable\":true}},\"reports\":{\"edit\":{\"label\":\"reports\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"reports\",\"searchable\":false,\"sortable\":false}},\"threadOf\":{\"edit\":{\"label\":\"threadOf\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"blockReason\"},\"list\":{\"label\":\"threadOf\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"content\",\"blocked\",\"blockedThread\"],\"editRelations\":[\"authorUser\",\"reports\",\"threadOf\"],\"edit\":[[{\"name\":\"content\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"blockedThread\",\"size\":4},{\"name\":\"blockReason\",\"size\":6}],[{\"name\":\"authorId\",\"size\":6},{\"name\":\"authorName\",\"size\":6}],[{\"name\":\"authorEmail\",\"size\":6},{\"name\":\"authorAvatar\",\"size\":6}],[{\"name\":\"removed\",\"size\":4},{\"name\":\"approvalStatus\",\"size\":6}],[{\"name\":\"related\",\"size\":6}]]}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(4, '{\"tables\":[{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files\",\"indexes\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"comments_comment\",\"indexes\":[{\"name\":\"comments_comment_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"comments_comment_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"comments_comment_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"comments_comment_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"content\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked_thread\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"block_reason\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"author_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"author_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"author_email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"author_avatar\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"removed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"approval_status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"related\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"comments_comment-report\",\"indexes\":[{\"name\":\"comments_comment-report_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"comments_comment-report_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"comments_comment-report_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"comments_comment-report_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"content\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reason\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"resolved\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"email_templates\",\"indexes\":[{\"name\":\"email_templates_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"email_templates_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"email_templates_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"email_templates_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"template_reference_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"design\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"body_html\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"body_text\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tags\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"globals\",\"indexes\":[{\"name\":\"globals_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"globals_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"globals_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"globals_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"meta_title_suffix\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"lead_form_submissions\",\"indexes\":[{\"name\":\"lead_form_submissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"lead_form_submissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"lead_form_submissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"lead_form_submissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"location\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mensagem\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"pages\",\"indexes\":[{\"name\":\"pages_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"pages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"pages_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"pages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"short_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"slug\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_slices_feature_columns\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_slices_feature_rows\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_elements_features\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_links_footer_sections\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_elements_logos\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_elements_notification_banners\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"text\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_elements_plans\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_recommended\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"price\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"price_period\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_slices_testimonials\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"text\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"author_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"author_title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"link\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_layout_footers\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"small_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_layout_navbars\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false}]},{\"name\":\"components_links_buttons\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"new_tab\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_links_simple_buttons\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_links_links\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"new_tab\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_meta_metadata\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"meta_title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"meta_description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"twitter_card_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"twitter_username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_slices_bottom_actions\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_slices_feature_columns_groups\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false}]},{\"name\":\"components_slices_feature_rows_groups\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false}]},{\"name\":\"components_slices_heroes\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"label\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"small_text_with_link\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_slices_large_videos\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_sections_lead_forms\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email_placeholder\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"location\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_sections_pricings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_sections_rich_texts\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"content\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_slices_testimonials_groups\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions_role_links\",\"indexes\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_links\",\"indexes\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_related_morphs\",\"indexes\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"]}],\"foreignKeys\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_links\",\"indexes\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_links\",\"indexes\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"comments_comment_author_user_links\",\"indexes\":[{\"name\":\"comments_comment_author_user_links_fk\",\"columns\":[\"comment_id\"]},{\"name\":\"comments_comment_author_user_links_inv_fk\",\"columns\":[\"user_id\"]}],\"foreignKeys\":[{\"name\":\"comments_comment_author_user_links_fk\",\"columns\":[\"comment_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"comments_comment\",\"onDelete\":\"CASCADE\"},{\"name\":\"comments_comment_author_user_links_inv_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"comment_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"comments_comment_thread_of_links\",\"indexes\":[{\"name\":\"comments_comment_thread_of_links_fk\",\"columns\":[\"comment_id\"]},{\"name\":\"comments_comment_thread_of_links_inv_fk\",\"columns\":[\"inv_comment_id\"]}],\"foreignKeys\":[{\"name\":\"comments_comment_thread_of_links_fk\",\"columns\":[\"comment_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"comments_comment\",\"onDelete\":\"CASCADE\"},{\"name\":\"comments_comment_thread_of_links_inv_fk\",\"columns\":[\"inv_comment_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"comments_comment\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"comment_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_comment_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"comments_comment_report_related_links\",\"indexes\":[{\"name\":\"comments_comment_report_related_links_fk\",\"columns\":[\"comment_report_id\"]},{\"name\":\"comments_comment_report_related_links_inv_fk\",\"columns\":[\"comment_id\"]}],\"foreignKeys\":[{\"name\":\"comments_comment_report_related_links_fk\",\"columns\":[\"comment_report_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"comments_comment-report\",\"onDelete\":\"CASCADE\"},{\"name\":\"comments_comment_report_related_links_inv_fk\",\"columns\":[\"comment_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"comments_comment\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"comment_report_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"comment_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"globals_components\",\"indexes\":[{\"name\":\"globals_field_index\",\"columns\":[\"field\"],\"type\":null},{\"name\":\"globals_component_type_index\",\"columns\":[\"component_type\"],\"type\":null},{\"name\":\"globals_entity_fk\",\"columns\":[\"entity_id\"]}],\"foreignKeys\":[{\"name\":\"globals_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"globals\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":0,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"globals_localizations_links\",\"indexes\":[{\"name\":\"globals_localizations_links_fk\",\"columns\":[\"global_id\"]},{\"name\":\"globals_localizations_links_inv_fk\",\"columns\":[\"inv_global_id\"]}],\"foreignKeys\":[{\"name\":\"globals_localizations_links_fk\",\"columns\":[\"global_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"globals\",\"onDelete\":\"CASCADE\"},{\"name\":\"globals_localizations_links_inv_fk\",\"columns\":[\"inv_global_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"globals\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"global_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_global_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"pages_components\",\"indexes\":[{\"name\":\"pages_field_index\",\"columns\":[\"field\"],\"type\":null},{\"name\":\"pages_component_type_index\",\"columns\":[\"component_type\"],\"type\":null},{\"name\":\"pages_entity_fk\",\"columns\":[\"entity_id\"]}],\"foreignKeys\":[{\"name\":\"pages_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"pages\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":0,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"pages_localizations_links\",\"indexes\":[{\"name\":\"pages_localizations_links_fk\",\"columns\":[\"page_id\"]},{\"name\":\"pages_localizations_links_inv_fk\",\"columns\":[\"inv_page_id\"]}],\"foreignKeys\":[{\"name\":\"pages_localizations_links_fk\",\"columns\":[\"page_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"pages\",\"onDelete\":\"CASCADE\"},{\"name\":\"pages_localizations_links_inv_fk\",\"columns\":[\"inv_page_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"pages\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"page_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_page_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"components_slices_feature_rows_components\",\"indexes\":[{\"name\":\"components_slices_feature_rows_field_index\",\"columns\":[\"field\"],\"type\":null},{\"name\":\"components_slices_feature_rows_component_type_index\",\"columns\":[\"component_type\"],\"type\":null},{\"name\":\"components_slices_feature_rows_entity_fk\",\"columns\":[\"entity_id\"]}],\"foreignKeys\":[{\"name\":\"components_slices_feature_rows_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"components_slices_feature_rows\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":0,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"components_links_footer_sections_components\",\"indexes\":[{\"name\":\"components_links_footer_sections_field_index\",\"columns\":[\"field\"],\"type\":null},{\"name\":\"components_links_footer_sections_component_type_index\",\"columns\":[\"component_type\"],\"type\":null},{\"name\":\"components_links_footer_sections_entity_fk\",\"columns\":[\"entity_id\"]}],\"foreignKeys\":[{\"name\":\"components_links_footer_sections_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"components_links_footer_sections\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":0,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"components_elements_plans_components\",\"indexes\":[{\"name\":\"components_elements_plans_field_index\",\"columns\":[\"field\"],\"type\":null},{\"name\":\"components_elements_plans_component_type_index\",\"columns\":[\"component_type\"],\"type\":null},{\"name\":\"components_elements_plans_entity_fk\",\"columns\":[\"entity_id\"]}],\"foreignKeys\":[{\"name\":\"components_elements_plans_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"components_elements_plans\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":0,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"components_layout_footers_components\",\"indexes\":[{\"name\":\"components_layout_footers_field_index\",\"columns\":[\"field\"],\"type\":null},{\"name\":\"components_layout_footers_component_type_index\",\"columns\":[\"component_type\"],\"type\":null},{\"name\":\"components_layout_footers_entity_fk\",\"columns\":[\"entity_id\"]}],\"foreignKeys\":[{\"name\":\"components_layout_footers_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"components_layout_footers\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":0,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"components_layout_navbars_components\",\"indexes\":[{\"name\":\"components_layout_navbars_field_index\",\"columns\":[\"field\"],\"type\":null},{\"name\":\"components_layout_navbars_component_type_index\",\"columns\":[\"component_type\"],\"type\":null},{\"name\":\"components_layout_navbars_entity_fk\",\"columns\":[\"entity_id\"]}],\"foreignKeys\":[{\"name\":\"components_layout_navbars_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"components_layout_navbars\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":0,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"components_slices_bottom_actions_components\",\"indexes\":[{\"name\":\"components_slices_bottom_actions_field_index\",\"columns\":[\"field\"],\"type\":null},{\"name\":\"components_slices_bottom_actions_component_type_index\",\"columns\":[\"component_type\"],\"type\":null},{\"name\":\"components_slices_bottom_actions_entity_fk\",\"columns\":[\"entity_id\"]}],\"foreignKeys\":[{\"name\":\"components_slices_bottom_actions_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"components_slices_bottom_actions\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":0,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"components_slices_feature_columns_groups_components\",\"indexes\":[{\"name\":\"components_slices_feature_columns_groups_field_index\",\"columns\":[\"field\"],\"type\":null},{\"name\":\"components_slices_feature_columns_groups_component_type_index\",\"columns\":[\"component_type\"],\"type\":null},{\"name\":\"components_slices_feature_columns_groups_entity_fk\",\"columns\":[\"entity_id\"]}],\"foreignKeys\":[{\"name\":\"components_slices_feature_columns_groups_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"components_slices_feature_columns_groups\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":0,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"components_slices_feature_rows_groups_components\",\"indexes\":[{\"name\":\"components_slices_feature_rows_groups_field_index\",\"columns\":[\"field\"],\"type\":null},{\"name\":\"components_slices_feature_rows_groups_component_type_index\",\"columns\":[\"component_type\"],\"type\":null},{\"name\":\"components_slices_feature_rows_groups_entity_fk\",\"columns\":[\"entity_id\"]}],\"foreignKeys\":[{\"name\":\"components_slices_feature_rows_groups_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"components_slices_feature_rows_groups\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":0,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"components_slices_heroes_components\",\"indexes\":[{\"name\":\"components_slices_heroes_field_index\",\"columns\":[\"field\"],\"type\":null},{\"name\":\"components_slices_heroes_component_type_index\",\"columns\":[\"component_type\"],\"type\":null},{\"name\":\"components_slices_heroes_entity_fk\",\"columns\":[\"entity_id\"]}],\"foreignKeys\":[{\"name\":\"components_slices_heroes_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"components_slices_heroes\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":0,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"components_sections_lead_forms_components\",\"indexes\":[{\"name\":\"components_sections_lead_forms_field_index\",\"columns\":[\"field\"],\"type\":null},{\"name\":\"components_sections_lead_forms_component_type_index\",\"columns\":[\"component_type\"],\"type\":null},{\"name\":\"components_sections_lead_forms_entity_fk\",\"columns\":[\"entity_id\"]}],\"foreignKeys\":[{\"name\":\"components_sections_lead_forms_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"components_sections_lead_forms\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":0,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"components_sections_pricings_components\",\"indexes\":[{\"name\":\"components_sections_pricings_field_index\",\"columns\":[\"field\"],\"type\":null},{\"name\":\"components_sections_pricings_component_type_index\",\"columns\":[\"component_type\"],\"type\":null},{\"name\":\"components_sections_pricings_entity_fk\",\"columns\":[\"entity_id\"]}],\"foreignKeys\":[{\"name\":\"components_sections_pricings_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"components_sections_pricings\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":0,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"components_slices_testimonials_groups_components\",\"indexes\":[{\"name\":\"components_slices_testimonials_groups_field_index\",\"columns\":[\"field\"],\"type\":null},{\"name\":\"components_slices_testimonials_groups_component_type_index\",\"columns\":[\"component_type\"],\"type\":null},{\"name\":\"components_slices_testimonials_groups_entity_fk\",\"columns\":[\"entity_id\"]}],\"foreignKeys\":[{\"name\":\"components_slices_testimonials_groups_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"components_slices_testimonials_groups\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":0,\"notNullable\":false,\"unsigned\":true}]}]}', '2022-03-29 22:16:10', '75af79a0b2941248e3a29f76246271ef');

-- --------------------------------------------------------

--
-- Estrutura para tabela `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.auth.connect', '2022-03-29 10:39:55.024000', '2022-03-29 10:39:55.024000', NULL, NULL),
(2, 'plugin::users-permissions.user.me', '2022-03-29 10:39:55.024000', '2022-03-29 10:39:55.024000', NULL, NULL),
(5, 'plugin::users-permissions.auth.callback', '2022-03-29 10:39:55.028000', '2022-03-29 10:39:55.028000', NULL, NULL),
(6, 'plugin::users-permissions.auth.connect', '2022-03-29 10:39:55.028000', '2022-03-29 10:39:55.028000', NULL, NULL),
(7, 'plugin::users-permissions.auth.register', '2022-03-29 10:39:55.028000', '2022-03-29 10:39:55.028000', NULL, NULL),
(10, 'plugin::users-permissions.user.me', '2022-03-29 10:39:55.028000', '2022-03-29 10:39:55.028000', NULL, NULL),
(12, 'api::page.page.find', '2022-03-29 10:39:55.049000', '2022-03-29 10:39:55.049000', NULL, NULL),
(13, 'api::page.page.findOne', '2022-03-29 10:39:55.049000', '2022-03-29 10:39:55.049000', NULL, NULL),
(14, 'api::lead-form-submission.lead-form-submission.create', '2022-03-29 10:39:55.049000', '2022-03-29 10:39:55.049000', NULL, NULL),
(15, 'api::global.global.find', '2022-03-29 10:39:55.049000', '2022-03-29 10:39:55.049000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(6, 2),
(7, 2),
(5, 2),
(10, 2),
(12, 2),
(14, 2),
(13, 2),
(15, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2022-03-29 10:39:55.020000', '2022-03-29 10:39:55.020000', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2022-03-29 10:39:55.021000', '2022-03-29 10:39:55.021000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`);

--
-- Índices de tabela `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`);

--
-- Índices de tabela `comments_comment`
--
ALTER TABLE `comments_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_comment_created_by_id_fk` (`created_by_id`),
  ADD KEY `comments_comment_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `comments_comment-report`
--
ALTER TABLE `comments_comment-report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_comment-report_created_by_id_fk` (`created_by_id`),
  ADD KEY `comments_comment-report_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `comments_comment_author_user_links`
--
ALTER TABLE `comments_comment_author_user_links`
  ADD KEY `comments_comment_author_user_links_fk` (`comment_id`),
  ADD KEY `comments_comment_author_user_links_inv_fk` (`user_id`);

--
-- Índices de tabela `comments_comment_report_related_links`
--
ALTER TABLE `comments_comment_report_related_links`
  ADD KEY `comments_comment_report_related_links_fk` (`comment_report_id`),
  ADD KEY `comments_comment_report_related_links_inv_fk` (`comment_id`);

--
-- Índices de tabela `comments_comment_thread_of_links`
--
ALTER TABLE `comments_comment_thread_of_links`
  ADD KEY `comments_comment_thread_of_links_fk` (`comment_id`),
  ADD KEY `comments_comment_thread_of_links_inv_fk` (`inv_comment_id`);

--
-- Índices de tabela `components_elements_features`
--
ALTER TABLE `components_elements_features`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `components_elements_logos`
--
ALTER TABLE `components_elements_logos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `components_elements_notification_banners`
--
ALTER TABLE `components_elements_notification_banners`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `components_elements_plans`
--
ALTER TABLE `components_elements_plans`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `components_elements_plans_components`
--
ALTER TABLE `components_elements_plans_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_elements_plans_field_index` (`field`),
  ADD KEY `components_elements_plans_component_type_index` (`component_type`),
  ADD KEY `components_elements_plans_entity_fk` (`entity_id`);

--
-- Índices de tabela `components_layout_footers`
--
ALTER TABLE `components_layout_footers`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `components_layout_footers_components`
--
ALTER TABLE `components_layout_footers_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_layout_footers_field_index` (`field`),
  ADD KEY `components_layout_footers_component_type_index` (`component_type`),
  ADD KEY `components_layout_footers_entity_fk` (`entity_id`);

--
-- Índices de tabela `components_layout_navbars`
--
ALTER TABLE `components_layout_navbars`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `components_layout_navbars_components`
--
ALTER TABLE `components_layout_navbars_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_layout_navbars_field_index` (`field`),
  ADD KEY `components_layout_navbars_component_type_index` (`component_type`),
  ADD KEY `components_layout_navbars_entity_fk` (`entity_id`);

--
-- Índices de tabela `components_links_buttons`
--
ALTER TABLE `components_links_buttons`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `components_links_footer_sections`
--
ALTER TABLE `components_links_footer_sections`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `components_links_footer_sections_components`
--
ALTER TABLE `components_links_footer_sections_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_links_footer_sections_field_index` (`field`),
  ADD KEY `components_links_footer_sections_component_type_index` (`component_type`),
  ADD KEY `components_links_footer_sections_entity_fk` (`entity_id`);

--
-- Índices de tabela `components_links_links`
--
ALTER TABLE `components_links_links`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `components_links_simple_buttons`
--
ALTER TABLE `components_links_simple_buttons`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `components_meta_metadata`
--
ALTER TABLE `components_meta_metadata`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `components_sections_lead_forms`
--
ALTER TABLE `components_sections_lead_forms`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `components_sections_lead_forms_components`
--
ALTER TABLE `components_sections_lead_forms_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_sections_lead_forms_field_index` (`field`),
  ADD KEY `components_sections_lead_forms_component_type_index` (`component_type`),
  ADD KEY `components_sections_lead_forms_entity_fk` (`entity_id`);

--
-- Índices de tabela `components_sections_pricings`
--
ALTER TABLE `components_sections_pricings`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `components_sections_pricings_components`
--
ALTER TABLE `components_sections_pricings_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_sections_pricings_field_index` (`field`),
  ADD KEY `components_sections_pricings_component_type_index` (`component_type`),
  ADD KEY `components_sections_pricings_entity_fk` (`entity_id`);

--
-- Índices de tabela `components_sections_rich_texts`
--
ALTER TABLE `components_sections_rich_texts`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `components_slices_bottom_actions`
--
ALTER TABLE `components_slices_bottom_actions`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `components_slices_bottom_actions_components`
--
ALTER TABLE `components_slices_bottom_actions_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_slices_bottom_actions_field_index` (`field`),
  ADD KEY `components_slices_bottom_actions_component_type_index` (`component_type`),
  ADD KEY `components_slices_bottom_actions_entity_fk` (`entity_id`);

--
-- Índices de tabela `components_slices_feature_columns`
--
ALTER TABLE `components_slices_feature_columns`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `components_slices_feature_columns_groups`
--
ALTER TABLE `components_slices_feature_columns_groups`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `components_slices_feature_columns_groups_components`
--
ALTER TABLE `components_slices_feature_columns_groups_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_slices_feature_columns_groups_field_index` (`field`),
  ADD KEY `components_slices_feature_columns_groups_component_type_index` (`component_type`),
  ADD KEY `components_slices_feature_columns_groups_entity_fk` (`entity_id`);

--
-- Índices de tabela `components_slices_feature_rows`
--
ALTER TABLE `components_slices_feature_rows`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `components_slices_feature_rows_components`
--
ALTER TABLE `components_slices_feature_rows_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_slices_feature_rows_field_index` (`field`),
  ADD KEY `components_slices_feature_rows_component_type_index` (`component_type`),
  ADD KEY `components_slices_feature_rows_entity_fk` (`entity_id`);

--
-- Índices de tabela `components_slices_feature_rows_groups`
--
ALTER TABLE `components_slices_feature_rows_groups`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `components_slices_feature_rows_groups_components`
--
ALTER TABLE `components_slices_feature_rows_groups_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_slices_feature_rows_groups_field_index` (`field`),
  ADD KEY `components_slices_feature_rows_groups_component_type_index` (`component_type`),
  ADD KEY `components_slices_feature_rows_groups_entity_fk` (`entity_id`);

--
-- Índices de tabela `components_slices_heroes`
--
ALTER TABLE `components_slices_heroes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `components_slices_heroes_components`
--
ALTER TABLE `components_slices_heroes_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_slices_heroes_field_index` (`field`),
  ADD KEY `components_slices_heroes_component_type_index` (`component_type`),
  ADD KEY `components_slices_heroes_entity_fk` (`entity_id`);

--
-- Índices de tabela `components_slices_large_videos`
--
ALTER TABLE `components_slices_large_videos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `components_slices_testimonials`
--
ALTER TABLE `components_slices_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `components_slices_testimonials_groups`
--
ALTER TABLE `components_slices_testimonials_groups`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `components_slices_testimonials_groups_components`
--
ALTER TABLE `components_slices_testimonials_groups_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `components_slices_testimonials_groups_field_index` (`field`),
  ADD KEY `components_slices_testimonials_groups_component_type_index` (`component_type`),
  ADD KEY `components_slices_testimonials_groups_entity_fk` (`entity_id`);

--
-- Índices de tabela `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_templates_created_by_id_fk` (`created_by_id`),
  ADD KEY `email_templates_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD KEY `files_related_morphs_fk` (`file_id`);

--
-- Índices de tabela `globals`
--
ALTER TABLE `globals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `globals_created_by_id_fk` (`created_by_id`),
  ADD KEY `globals_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `globals_components`
--
ALTER TABLE `globals_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `globals_field_index` (`field`),
  ADD KEY `globals_component_type_index` (`component_type`),
  ADD KEY `globals_entity_fk` (`entity_id`);

--
-- Índices de tabela `globals_localizations_links`
--
ALTER TABLE `globals_localizations_links`
  ADD KEY `globals_localizations_links_fk` (`global_id`),
  ADD KEY `globals_localizations_links_inv_fk` (`inv_global_id`);

--
-- Índices de tabela `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `lead_form_submissions`
--
ALTER TABLE `lead_form_submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_form_submissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `lead_form_submissions_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_created_by_id_fk` (`created_by_id`),
  ADD KEY `pages_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `pages_components`
--
ALTER TABLE `pages_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_field_index` (`field`),
  ADD KEY `pages_component_type_index` (`component_type`),
  ADD KEY `pages_entity_fk` (`entity_id`);

--
-- Índices de tabela `pages_localizations_links`
--
ALTER TABLE `pages_localizations_links`
  ADD KEY `pages_localizations_links_fk` (`page_id`),
  ADD KEY `pages_localizations_links_inv_fk` (`inv_page_id`);

--
-- Índices de tabela `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`);

--
-- Índices de tabela `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT de tabela `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `comments_comment`
--
ALTER TABLE `comments_comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `comments_comment-report`
--
ALTER TABLE `comments_comment-report`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `components_elements_features`
--
ALTER TABLE `components_elements_features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `components_elements_logos`
--
ALTER TABLE `components_elements_logos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `components_elements_notification_banners`
--
ALTER TABLE `components_elements_notification_banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `components_elements_plans`
--
ALTER TABLE `components_elements_plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `components_elements_plans_components`
--
ALTER TABLE `components_elements_plans_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `components_layout_footers`
--
ALTER TABLE `components_layout_footers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `components_layout_footers_components`
--
ALTER TABLE `components_layout_footers_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `components_layout_navbars`
--
ALTER TABLE `components_layout_navbars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `components_layout_navbars_components`
--
ALTER TABLE `components_layout_navbars_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `components_links_buttons`
--
ALTER TABLE `components_links_buttons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `components_links_footer_sections`
--
ALTER TABLE `components_links_footer_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `components_links_footer_sections_components`
--
ALTER TABLE `components_links_footer_sections_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `components_links_links`
--
ALTER TABLE `components_links_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de tabela `components_links_simple_buttons`
--
ALTER TABLE `components_links_simple_buttons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `components_meta_metadata`
--
ALTER TABLE `components_meta_metadata`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `components_sections_lead_forms`
--
ALTER TABLE `components_sections_lead_forms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `components_sections_lead_forms_components`
--
ALTER TABLE `components_sections_lead_forms_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `components_sections_pricings`
--
ALTER TABLE `components_sections_pricings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `components_sections_pricings_components`
--
ALTER TABLE `components_sections_pricings_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `components_sections_rich_texts`
--
ALTER TABLE `components_sections_rich_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `components_slices_bottom_actions`
--
ALTER TABLE `components_slices_bottom_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `components_slices_bottom_actions_components`
--
ALTER TABLE `components_slices_bottom_actions_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `components_slices_feature_columns`
--
ALTER TABLE `components_slices_feature_columns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `components_slices_feature_columns_groups`
--
ALTER TABLE `components_slices_feature_columns_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `components_slices_feature_columns_groups_components`
--
ALTER TABLE `components_slices_feature_columns_groups_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `components_slices_feature_rows`
--
ALTER TABLE `components_slices_feature_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `components_slices_feature_rows_components`
--
ALTER TABLE `components_slices_feature_rows_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `components_slices_feature_rows_groups`
--
ALTER TABLE `components_slices_feature_rows_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `components_slices_feature_rows_groups_components`
--
ALTER TABLE `components_slices_feature_rows_groups_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `components_slices_heroes`
--
ALTER TABLE `components_slices_heroes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `components_slices_heroes_components`
--
ALTER TABLE `components_slices_heroes_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `components_slices_large_videos`
--
ALTER TABLE `components_slices_large_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `components_slices_testimonials`
--
ALTER TABLE `components_slices_testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `components_slices_testimonials_groups`
--
ALTER TABLE `components_slices_testimonials_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `components_slices_testimonials_groups_components`
--
ALTER TABLE `components_slices_testimonials_groups_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `globals`
--
ALTER TABLE `globals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `globals_components`
--
ALTER TABLE `globals_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `lead_form_submissions`
--
ALTER TABLE `lead_form_submissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `pages_components`
--
ALTER TABLE `pages_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de tabela `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `comments_comment`
--
ALTER TABLE `comments_comment`
  ADD CONSTRAINT `comments_comment_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `comments_comment_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `comments_comment-report`
--
ALTER TABLE `comments_comment-report`
  ADD CONSTRAINT `comments_comment-report_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `comments_comment-report_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `comments_comment_author_user_links`
--
ALTER TABLE `comments_comment_author_user_links`
  ADD CONSTRAINT `comments_comment_author_user_links_fk` FOREIGN KEY (`comment_id`) REFERENCES `comments_comment` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_comment_author_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `comments_comment_report_related_links`
--
ALTER TABLE `comments_comment_report_related_links`
  ADD CONSTRAINT `comments_comment_report_related_links_fk` FOREIGN KEY (`comment_report_id`) REFERENCES `comments_comment-report` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_comment_report_related_links_inv_fk` FOREIGN KEY (`comment_id`) REFERENCES `comments_comment` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `comments_comment_thread_of_links`
--
ALTER TABLE `comments_comment_thread_of_links`
  ADD CONSTRAINT `comments_comment_thread_of_links_fk` FOREIGN KEY (`comment_id`) REFERENCES `comments_comment` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_comment_thread_of_links_inv_fk` FOREIGN KEY (`inv_comment_id`) REFERENCES `comments_comment` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `components_elements_plans_components`
--
ALTER TABLE `components_elements_plans_components`
  ADD CONSTRAINT `components_elements_plans_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_elements_plans` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `components_layout_footers_components`
--
ALTER TABLE `components_layout_footers_components`
  ADD CONSTRAINT `components_layout_footers_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_layout_footers` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `components_layout_navbars_components`
--
ALTER TABLE `components_layout_navbars_components`
  ADD CONSTRAINT `components_layout_navbars_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_layout_navbars` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `components_links_footer_sections_components`
--
ALTER TABLE `components_links_footer_sections_components`
  ADD CONSTRAINT `components_links_footer_sections_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_links_footer_sections` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `components_sections_lead_forms_components`
--
ALTER TABLE `components_sections_lead_forms_components`
  ADD CONSTRAINT `components_sections_lead_forms_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_sections_lead_forms` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `components_sections_pricings_components`
--
ALTER TABLE `components_sections_pricings_components`
  ADD CONSTRAINT `components_sections_pricings_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_sections_pricings` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `components_slices_bottom_actions_components`
--
ALTER TABLE `components_slices_bottom_actions_components`
  ADD CONSTRAINT `components_slices_bottom_actions_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_slices_bottom_actions` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `components_slices_feature_columns_groups_components`
--
ALTER TABLE `components_slices_feature_columns_groups_components`
  ADD CONSTRAINT `components_slices_feature_columns_groups_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_slices_feature_columns_groups` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `components_slices_feature_rows_components`
--
ALTER TABLE `components_slices_feature_rows_components`
  ADD CONSTRAINT `components_slices_feature_rows_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_slices_feature_rows` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `components_slices_feature_rows_groups_components`
--
ALTER TABLE `components_slices_feature_rows_groups_components`
  ADD CONSTRAINT `components_slices_feature_rows_groups_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_slices_feature_rows_groups` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `components_slices_heroes_components`
--
ALTER TABLE `components_slices_heroes_components`
  ADD CONSTRAINT `components_slices_heroes_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_slices_heroes` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `components_slices_testimonials_groups_components`
--
ALTER TABLE `components_slices_testimonials_groups_components`
  ADD CONSTRAINT `components_slices_testimonials_groups_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `components_slices_testimonials_groups` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `email_templates`
--
ALTER TABLE `email_templates`
  ADD CONSTRAINT `email_templates_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `email_templates_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `globals`
--
ALTER TABLE `globals`
  ADD CONSTRAINT `globals_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `globals_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `globals_components`
--
ALTER TABLE `globals_components`
  ADD CONSTRAINT `globals_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `globals` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `globals_localizations_links`
--
ALTER TABLE `globals_localizations_links`
  ADD CONSTRAINT `globals_localizations_links_fk` FOREIGN KEY (`global_id`) REFERENCES `globals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `globals_localizations_links_inv_fk` FOREIGN KEY (`inv_global_id`) REFERENCES `globals` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `lead_form_submissions`
--
ALTER TABLE `lead_form_submissions`
  ADD CONSTRAINT `lead_form_submissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `lead_form_submissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `pages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `pages_components`
--
ALTER TABLE `pages_components`
  ADD CONSTRAINT `pages_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `pages_localizations_links`
--
ALTER TABLE `pages_localizations_links`
  ADD CONSTRAINT `pages_localizations_links_fk` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pages_localizations_links_inv_fk` FOREIGN KEY (`inv_page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
