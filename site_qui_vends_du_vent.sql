-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 09 jan. 2025 à 10:16
-- Version du serveur : 8.0.40-0ubuntu0.24.04.1
-- Version de PHP : 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `site_qui_vends_du_vent`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int UNSIGNED NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `prenom`, `nom`, `mail`, `created_at`) VALUES
(1, 'Atlas', 'Ito', 'atlasito@gmail.com', '2025-01-09 10:00:50'),
(2, 'Jean', 'Dupont', 'jeandupont@gmail.com', '2025-01-09 10:00:50'),
(3, 'Amelie', 'Leroux', 'amelieleroux@gmail.com', '2025-01-09 10:00:50');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int UNSIGNED NOT NULL,
  `date_commande` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_client` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `date_commande`, `id_client`) VALUES
(1, '05/01/2025', 2),
(2, '02/12/2024', 1);

-- --------------------------------------------------------

--
-- Structure de la table `info_commande`
--

CREATE TABLE `info_commande` (
  `id` smallint UNSIGNED NOT NULL,
  `id_commande` varchar(50) NOT NULL,
  `id_produit` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `info_commande`
--

INSERT INTO `info_commande` (`id`, `id_commande`, `id_produit`, `quantity`) VALUES
(1, '1', '2;5', '2 Mistral and 1 Harmattan'),
(2, '2', '1;4', '3 Zéphyr et 3 Sirocco');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `description` text,
  `prix` int UNSIGNED NOT NULL,
  `stock` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `description`, `prix`, `stock`) VALUES
(1, 'Zéphyr', 'vent d\'ouest doux et chaud.', 1500, 5),
(2, 'Mistral', 'vent du nord ou nord-ouest, soufflant violemment, en toutes saisons, dans la vallée du Rhône', 750, 13),
(3, 'Alizé', 'vent régulier dans la zone inter-tropicale. Il est de nord-est dans l’hémisphère nord et de sud-est dans l’hémisphère sud', 2300, 7),
(4, 'Sirocco', 'vent brûlant du sud, sec et chaud charriant du sable du sahara pouvant atteindre l\'Espagne, la France et l\'Italie', 3200, 3),
(5, 'Harmattan', 'alizé continental : vent de nord-est, très sec, soufflant en hiver et au printemps en Afrique occidentale', 2900, 4);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `info_commande`
--
ALTER TABLE `info_commande`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom` (`nom`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `info_commande`
--
ALTER TABLE `info_commande`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
