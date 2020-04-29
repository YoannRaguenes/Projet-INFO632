-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 19 avr. 2020 à 17:35
-- Version du serveur :  10.1.38-MariaDB
-- Version de PHP :  7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestioncommande`
--

-- --------------------------------------------------------

--
-- Structure de la table `demande_equipement`
--

CREATE TABLE `demande_equipement` (
  `id_demande_equipement` int(11) NOT NULL,
  `description` text NOT NULL,
  `devis` blob NOT NULL,
  `état` varchar(255) NOT NULL,
  `id_etudiant` int(11) NOT NULL,
  `id_sevice_technique` int(11) NOT NULL,
  `id_service_technique` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `demande_travaux`
--
CREATE TABLE `demande_travaux` (
  `id_demande_travaux` int(11) NOT NULL,
  `état` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table 'personne'
--

CREATE TABLE `personne`(
  `id_personne` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
)
  ENGINE=MyISAM DEFAULT CHARSET=latin1;




--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `id_enseignant` int(11) NOT NULL,
  `departement` varchar(255) NOT NULL,
  `id_pers` int(11) NOT NULL,
  FOREIGN KEY (id_pers) REFERENCES personne(id_personne)

) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------


--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id_etudiant` int(11) NOT NULL,
  `classe` varchar(255) NOT NULL,
  `id_demande_equipement` int(11) DEFAULT NULL,
  `id_perso` int(11) NOT NULL,

  FOREIGN KEY (id_perso) REFERENCES personne(id_personne)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiant`
--

-- --------------------------------------------------------

--
-- Structure de la table `ligne_demande_equipement`
--

CREATE TABLE `ligne_demande_equipement` (
  `id_demande_equipement` int(11) NOT NULL,
  `id_materiel` int(11) NOT NULL,
  `date` date NOT NULL,
  `quatité` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ligne_demande_travaux`
--

CREATE TABLE `ligne_demande_travaux` (
  `id_enseigant` int(11) NOT NULL,
  `id_service_technique` int(11) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `materiel`
--

CREATE TABLE `materiel` (
  `id_materiel` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `image` blob NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `recuperation`
--
CREATE TABLE `recuperation` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `code` int(11) NOT NULL,
  `confirme` int(11) NOT NULL


) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `service_technique`
--
CREATE TABLE `service_technique` (
  `id_service_technique` int(11) NOT NULL,
  `departement` varchar(255) NOT NULL,
  `id_person` int(11) NOT NULL,
  
  FOREIGN KEY (id_person) REFERENCES personne(id_personne)

) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `demande_equipement`
--
ALTER TABLE `demande_equipement`
  ADD PRIMARY KEY (`id_demande_equipement`);

--
-- Index pour la table `demande_travaux`
--
ALTER TABLE `demande_travaux`
  ADD PRIMARY KEY (`id_demande_travaux`);

--
-- Index pour la table `enseignant`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id_personne`);

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`id_enseignant`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id_etudiant`);

--
-- Index pour la table `ligne_demande_travaux`
--
ALTER TABLE `ligne_demande_travaux`
  ADD PRIMARY KEY (`id_enseigant`,`id_service_technique`);

--
-- Index pour la table `materiel`
--
ALTER TABLE `materiel`
  ADD PRIMARY KEY (`id_materiel`);

--
-- Index pour la table `recuperation`
--
ALTER TABLE `recuperation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `service_technique`
--
ALTER TABLE `service_technique`
  ADD PRIMARY KEY (`id_service_technique`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `demande_equipement`
--
ALTER TABLE `demande_equipement`
  MODIFY `id_demande_equipement` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `demande_travaux`
--
ALTER TABLE `demande_travaux`
  MODIFY `id_demande_travaux` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `enseignant`
--
ALTER TABLE `enseignant`
  MODIFY `id_enseignant` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `id_personne` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id_etudiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `materiel`
--
ALTER TABLE `materiel`
  MODIFY `id_materiel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `recuperation`
--
ALTER TABLE `recuperation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `service_technique`
--
ALTER TABLE `service_technique`
  MODIFY `id_service_technique` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
