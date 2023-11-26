-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 23 nov. 2023 à 15:39
-- Version du serveur : 8.0.30
-- Version de PHP : 8.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dofus_universe`
--
CREATE DATABASE IF NOT EXISTS `dofus_universe` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `dofus_universe`;

-- --------------------------------------------------------

--
-- Structure de la table `commentaries`
--

CREATE TABLE `commentaries` (
  `id_comments` int NOT NULL,
  `text` varchar(255) NOT NULL,
  `posted_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `id_guides` int DEFAULT NULL,
  `id_dungeons` int DEFAULT NULL,
  `id_users` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `commentaries`
--

INSERT INTO `commentaries` (`id_comments`, `text`, `posted_at`, `modified_at`, `deleted_at`, `confirmed_at`, `id_guides`, `id_dungeons`, `id_users`) VALUES
(14, 'test 2', '2023-11-22 14:16:39', '2023-11-23 11:54:28', '2023-11-23 11:54:28', '2023-11-22 14:17:00', NULL, 1, 1),
(15, 'test 3', '2023-11-22 14:16:44', '2023-11-22 14:23:53', NULL, '2023-11-22 14:16:56', NULL, 1, 1),
(18, 'test 5', '2023-11-22 15:58:49', '2023-11-22 15:59:13', NULL, '2023-11-22 15:59:13', NULL, 1, 1),
(19, 'cECI EST UN SUPER COMMENTAIRE', '2023-11-23 11:49:15', '2023-11-23 11:55:02', NULL, '2023-11-23 11:55:02', 2, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `dungeons`
--

CREATE TABLE `dungeons` (
  `id_dungeons` int NOT NULL,
  `main_title` varchar(100) NOT NULL,
  `main_text` varchar(255) NOT NULL,
  `picture_dungeons` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` varchar(255) NOT NULL,
  `posted_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_users` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `dungeons`
--

INSERT INTO `dungeons` (`id_dungeons`, `main_title`, `main_text`, `picture_dungeons`, `description`, `posted_at`, `modified_at`, `id_users`) VALUES
(1, 'Crypte de kardorim', 'ce donjon est pas difficile. C&#39;est le cimetière d&#39;Incarnam. La zone est simplement habitée par les Chafers.', 'img_655f0454592b0.jpg', 'Ce donjon est destiné à des aventuriers de niveau 10. Le donjon est situé en [5,-1] sur Incarnam, à l&#39;est de l&#39;île. Le moyen le plus rapide pour y accéder est de prendre le zaap du Cimetière en [3,0]. ', '2023-11-22 14:02:31', '2023-11-23 08:50:44', 1),
(2, 'TEST', 'TEST', 'img_655f2f3cb685c.jpg', 'TEST', '2023-11-23 11:53:48', '2023-11-23 11:53:48', 1);

-- --------------------------------------------------------

--
-- Structure de la table `guides`
--

CREATE TABLE `guides` (
  `id_guides` int NOT NULL,
  `main_title` varchar(100) NOT NULL,
  `main_text` varchar(255) NOT NULL,
  `picture_guides` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` varchar(255) NOT NULL,
  `posted_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_users` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `guides`
--

INSERT INTO `guides` (`id_guides`, `main_title`, `main_text`, `picture_guides`, `description`, `posted_at`, `modified_at`, `id_users`) VALUES
(2, 'Guide des classes', 'Le guide qui vous aidera à choisir votre classe sur Dofus. Que vous soyez en solo, en multi, pour farm en PvM ou en PvP, votre choix sera le bon !', 'img_655f055ce79fc.jpg', 'Quel que soit votre niveau de jeu, il n’est jamais simple de choisir sa classe sur Dofus, il est important de vous orienter correctement dans vos choix de classe en fonction de votre profil et de vos objectifs.', '2023-11-23 08:55:08', '2023-11-23 08:55:08', 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_users` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `picture` varchar(50) DEFAULT NULL,
  `role` tinyint(1) DEFAULT '1',
  `added_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `confirmed_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_users`, `username`, `mail`, `password`, `picture`, `role`, `added_at`, `confirmed_at`, `deleted_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$NY8ynu8TragW/vYW/70kJ..oleN4sJk8VHB2DDBtmGdXXC9NXcEyW', 'img_655b1d0fbc7dc.jpg', 2, '2023-11-20 09:47:11', '2023-11-23 14:12:25', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commentaries`
--
ALTER TABLE `commentaries`
  ADD PRIMARY KEY (`id_comments`),
  ADD KEY `id_guides` (`id_guides`),
  ADD KEY `id_dungeons` (`id_dungeons`),
  ADD KEY `id_users` (`id_users`);

--
-- Index pour la table `dungeons`
--
ALTER TABLE `dungeons`
  ADD PRIMARY KEY (`id_dungeons`),
  ADD KEY `id_users` (`id_users`);

--
-- Index pour la table `guides`
--
ALTER TABLE `guides`
  ADD PRIMARY KEY (`id_guides`),
  ADD KEY `id_users` (`id_users`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commentaries`
--
ALTER TABLE `commentaries`
  MODIFY `id_comments` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `dungeons`
--
ALTER TABLE `dungeons`
  MODIFY `id_dungeons` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `guides`
--
ALTER TABLE `guides`
  MODIFY `id_guides` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaries`
--
ALTER TABLE `commentaries`
  ADD CONSTRAINT `commentaries_ibfk_1` FOREIGN KEY (`id_guides`) REFERENCES `guides` (`id_guides`) ON DELETE CASCADE,
  ADD CONSTRAINT `commentaries_ibfk_2` FOREIGN KEY (`id_dungeons`) REFERENCES `dungeons` (`id_dungeons`) ON DELETE CASCADE,
  ADD CONSTRAINT `commentaries_ibfk_3` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`);

--
-- Contraintes pour la table `dungeons`
--
ALTER TABLE `dungeons`
  ADD CONSTRAINT `dungeons_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`);

--
-- Contraintes pour la table `guides`
--
ALTER TABLE `guides`
  ADD CONSTRAINT `guides_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
