-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 09 jan. 2023 à 09:35
-- Version du serveur : 10.6.11-MariaDB-0ubuntu0.22.04.1
-- Version de PHP : 8.1.2-1ubuntu2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `jarditou_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `account`
--

CREATE TABLE account (
  `id_client` int(3) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `cp` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE products (
  `id_produit` int(3) NOT NULL,
  `categorie` varchar(20) NOT NULL,
  `libelle` varchar(100) NOT NULL,
  `couleur` varchar(20) NOT NULL,
  `prix` int(3) NOT NULL,
  `stock` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `account`
--
ALTER TABLE account
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `products`
--
ALTER TABLE products
  ADD PRIMARY KEY (`id_produit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


INSERT INTO products (id_produit, categorie, libelle, couleur, prix, stock)
VALUES
(7,'Barbecues', 'Aramis', 'Brun', 110, 10),
(8,'Barbecues', 'Athos', 'Noir', 249.99, 10),
(11, 'Barbecues', 'Clatronic', 'Chrome' ,135.90, 10),
(12, 'Barbecues', 'Camping', 'Noir', 88, 10),
(13, 'Brouette', 'Green', 'Verte', 49, 10);

INSERT INTO account (id_client, nom, prenom, email, ville, cp)
VALUES
(1, 'Malacié Esnault', 'Luca', 'registrecontact@gmail.com', 'pontpoint', 60700),
(2, 'Discord', 'Registre', 'registrecontact@gmail.com', 'pontpoint', 60700);
