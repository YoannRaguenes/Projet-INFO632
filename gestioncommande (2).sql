-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 06 mai 2020 à 09:33
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

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
-- Structure de la table `avis`
--

DROP TABLE IF EXISTS `avis`;
CREATE TABLE IF NOT EXISTS `avis` (
  `id_avis` int(11) NOT NULL AUTO_INCREMENT,
  `satisfaction_web` text NOT NULL,
  `satisfaction_commande` text NOT NULL,
  `explication` text NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_avis`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `avis`
--

INSERT INTO `avis` (`id_avis`, `satisfaction_web`, `satisfaction_commande`, `explication`, `date`) VALUES
(1, 'Peu satisfaisante', 'Peu satisfaisant', 'test', '2020-05-06');

-- --------------------------------------------------------

--
-- Structure de la table `demande_enseignant`
--

DROP TABLE IF EXISTS `demande_enseignant`;
CREATE TABLE IF NOT EXISTS `demande_enseignant` (
  `id` int(11) NOT NULL,
  `UE` text DEFAULT NULL,
  `nom` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `commentaire` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `demande_enseignant`
--

INSERT INTO `demande_enseignant` (`id`, `UE`, `nom`, `description`, `commentaire`) VALUES
(12, 'INFO642', 'CIMPAN', 'pour le fun', ''),
(11, 'INFO642', 'CIMPAN', 'ceci est pour notre projet info', 'non'),
(10, 'INFO642', 'CIMPAN', 'Dans le cadre du projet informatique', ''),
(13, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL),
(17, NULL, NULL, NULL, NULL),
(18, 'JE TESTTTTT', 'NEPAUL', 'un enieme test', 'aucun');

-- --------------------------------------------------------

--
-- Structure de la table `demande_materiel`
--

DROP TABLE IF EXISTS `demande_materiel`;
CREATE TABLE IF NOT EXISTS `demande_materiel` (
  `id_demande` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `ligne_budgetaire` int(11) DEFAULT NULL,
  `produit_concerne` text DEFAULT NULL,
  `quantite` text DEFAULT NULL,
  `fournisseur` text DEFAULT NULL,
  `prix_unitaire` text DEFAULT NULL,
  `lien_vers_site` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `jour` date DEFAULT NULL,
  `mail` text DEFAULT NULL,
  `enseignant` text DEFAULT NULL,
  PRIMARY KEY (`id_demande`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `demande_materiel`
--

INSERT INTO `demande_materiel` (`id_demande`, `numero`, `description`, `ligne_budgetaire`, `produit_concerne`, `quantite`, `fournisseur`, `prix_unitaire`, `lien_vers_site`, `image`, `jour`, `mail`, `enseignant`) VALUES
(10, 11704669, 'pot intelligent', 1000, 'arduino', '50', 'arduino uno', '20', 'http://www.arduino.com', NULL, '2020-04-30', 'test@test.fr', 'CIMPAN'),
(11, 11704669, 'ceci est encore un test', 1000, 'arduino', '50', 'arduino uno', '20', 'http://www.arduino.com', NULL, '2020-05-04', 'test@test.fr', 'CIMPAN'),
(12, 11704669, 'au hasard', 1000, 'vitres', '2', 'brico depot', '500', 'http://www.bricodepot.fr', NULL, '2020-05-06', 'test@test.fr', 'CIMPAN'),
(13, 11704669, 'ibefzefez', 1000, 'vitres', '2', 'brico depot', '500', 'http://www.bricodepot.fr', NULL, '2020-05-27', 'test@test.fr', 'CIMPAN'),
(14, 11704669, 'vdszfvdszv', 244, 'vitres', '2', 'brico depot', '2000', 'http://www.bricodepot.fr', NULL, '2020-05-13', 'test@test.fr', 'CIMPAN'),
(15, 11704669, 'vdszfvdszv', 244, 'vitres', '2', 'brico depot', '2000', 'http://www.bricodepot.fr', NULL, '2020-05-13', 'test@test.fr', 'CIMPAN'),
(16, 11703305, 'je test', 1000, 'pc', '2', 'fnac', '500', 'http://fnac.com', NULL, '2020-05-05', 'kevin.fanton@hotmail.com', 'NEPAUL'),
(17, 11703305, 'dernier test de la matinÃ©e', 1111, '11', '11', '1', '1', 'http://fnac.com', NULL, '2020-05-05', 'kevin.fanton@hotmail.com', 'NEPAUL'),
(18, 11703287, 'aekponfziugiugh dfbrdhkrjtg bn', 1222, 'JOZEHF', '123', 'JKABEFOJ', 'BAJEBGF', 'http://fnac.com', NULL, '2020-06-03', 'akreazr@sfr.fr', 'NEPAUL');

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

DROP TABLE IF EXISTS `enseignant`;
CREATE TABLE IF NOT EXISTS `enseignant` (
  `id_enseignant` int(11) NOT NULL AUTO_INCREMENT,
  `departement` varchar(255) NOT NULL,
  `id_pers` int(11) NOT NULL,
  PRIMARY KEY (`id_enseignant`),
  KEY `id_pers` (`id_pers`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `enseignant`
--

INSERT INTO `enseignant` (`id_enseignant`, `departement`, `id_pers`) VALUES
(10, 'informatique', 25);

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `id_etudiant` int(11) NOT NULL AUTO_INCREMENT,
  `classe` varchar(255) NOT NULL,
  `id_demande_equipement` int(11) DEFAULT NULL,
  `id_perso` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  PRIMARY KEY (`id_etudiant`),
  KEY `id_perso` (`id_perso`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id_etudiant`, `classe`, `id_demande_equipement`, `id_perso`, `numero`) VALUES
(13, 'IDU', NULL, 24, 11703305);

-- --------------------------------------------------------

--
-- Structure de la table `ligne_demande_equipement`
--

DROP TABLE IF EXISTS `ligne_demande_equipement`;
CREATE TABLE IF NOT EXISTS `ligne_demande_equipement` (
  `id_demande_equipement` int(11) NOT NULL,
  `id_materiel` int(11) NOT NULL,
  `date` date NOT NULL,
  `quatité` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ligne_demande_travaux`
--

DROP TABLE IF EXISTS `ligne_demande_travaux`;
CREATE TABLE IF NOT EXISTS `ligne_demande_travaux` (
  `id_enseigant` int(11) NOT NULL,
  `id_service_technique` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id_enseigant`,`id_service_technique`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `materiel`
--

DROP TABLE IF EXISTS `materiel`;
CREATE TABLE IF NOT EXISTS `materiel` (
  `id_materiel` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `image` blob NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id_materiel`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

DROP TABLE IF EXISTS `personne`;
CREATE TABLE IF NOT EXISTS `personne` (
  `id_personne` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id_personne`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id_personne`, `nom`, `prenom`, `email`, `password`) VALUES
(26, 'SIMARD', 'Adrien', 'adriensimard05@gmail.com', '$2y$10$W1PxKdy/o6hQdQ6ObaCkuuxrM00Hh2ECYfADYdih1t5VXoqFPECsq'),
(25, 'NEPAUL', 'Roshan', 'roshannep27@gmail.com', '$2y$10$FGbnXT2BlwuemktJWPgsOuKKUp4moFbKTkp2WAx7knYmSFHHCXhdq'),
(24, 'FANTON', 'Kevin', 'kevin.fanton@hotmail.com', '$2y$10$hlk0m7J6Ozx7QD//PmfwMO6olvAwTgtqjywUxYxK3C2i0bVRcfC8.');

-- --------------------------------------------------------

--
-- Structure de la table `recuperation`
--

DROP TABLE IF EXISTS `recuperation`;
CREATE TABLE IF NOT EXISTS `recuperation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `code` int(11) NOT NULL,
  `confirme` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `service_technique`
--

DROP TABLE IF EXISTS `service_technique`;
CREATE TABLE IF NOT EXISTS `service_technique` (
  `id_service_technique` int(11) NOT NULL AUTO_INCREMENT,
  `departement` varchar(255) NOT NULL,
  `id_person` int(11) NOT NULL,
  PRIMARY KEY (`id_service_technique`),
  KEY `id_person` (`id_person`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `service_technique`
--

INSERT INTO `service_technique` (`id_service_technique`, `departement`, `id_person`) VALUES
(4, 'mecanique', 26);

-- --------------------------------------------------------

--
-- Structure de la table `suivi_demande_materiel`
--

DROP TABLE IF EXISTS `suivi_demande_materiel`;
CREATE TABLE IF NOT EXISTS `suivi_demande_materiel` (
  `id_suivi` int(11) NOT NULL AUTO_INCREMENT,
  `etat` text DEFAULT NULL,
  PRIMARY KEY (`id_suivi`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `suivi_demande_materiel`
--

INSERT INTO `suivi_demande_materiel` (`id_suivi`, `etat`) VALUES
(13, 'etat1'),
(12, 'etat3'),
(11, 'etat3'),
(10, 'etat2'),
(14, 'etat1'),
(15, 'etat1'),
(16, 'etat1'),
(17, 'etat1'),
(18, 'etat2');

-- --------------------------------------------------------

--
-- Structure de la table `toute_demandes`
--

DROP TABLE IF EXISTS `toute_demandes`;
CREATE TABLE IF NOT EXISTS `toute_demandes` (
  `id` int(11) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `ligne_budgetaire` int(11) DEFAULT NULL,
  `produit_concerne` text DEFAULT NULL,
  `quantite` text DEFAULT NULL,
  `fournisseur` text DEFAULT NULL,
  `prix_unitaire` text DEFAULT NULL,
  `lien_vers_site` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `jour` date DEFAULT NULL,
  `mail` text DEFAULT NULL,
  `UE` text DEFAULT NULL,
  `nom` text DEFAULT NULL,
  `description_e` text DEFAULT NULL,
  `commentaire` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `toute_demandes`
--

INSERT INTO `toute_demandes` (`id`, `numero`, `description`, `ligne_budgetaire`, `produit_concerne`, `quantite`, `fournisseur`, `prix_unitaire`, `lien_vers_site`, `image`, `jour`, `mail`, `UE`, `nom`, `description_e`, `commentaire`) VALUES
(10, 11704669, 'pot intelligent', 1000, 'arduino', '50', 'arduino uno', '20', 'http://www.arduino.com', NULL, '2020-04-30', 'test@test.fr', 'INFO642', 'CIMPAN', 'Dans le cadre du projet informatique', ''),
(11, 11704669, 'ceci est encore un test', 1000, 'arduino', '50', 'arduino uno', '20', 'http://www.arduino.com', NULL, '2020-05-04', 'test@test.fr', 'INFO642', 'CIMPAN', 'ceci est pour notre projet info', 'non'),
(12, 11704669, 'au hasard', 1000, 'vitres', '2', 'brico depot', '500', 'http://www.bricodepot.fr', NULL, '2020-05-06', 'test@test.fr', 'INFO642', 'CIMPAN', 'pour le fun', ''),
(13, 11704669, 'ibefzefez', 1000, 'vitres', '2', 'brico depot', '500', 'http://www.bricodepot.fr', NULL, '2020-05-27', 'test@test.fr', NULL, 'CIMPAN', NULL, NULL),
(14, 11704669, 'vdszfvdszv', 244, 'vitres', '2', 'brico depot', '2000', 'http://www.bricodepot.fr', NULL, '2020-05-13', 'test@test.fr', NULL, 'CIMPAN', NULL, NULL),
(15, 11704669, 'vdszfvdszv', 244, 'vitres', '2', 'brico depot', '2000', 'http://www.bricodepot.fr', NULL, '2020-05-13', 'test@test.fr', NULL, 'CIMPAN', NULL, NULL),
(16, 11703305, 'je test', 1000, 'pc', '2', 'fnac', '500', 'http://fnac.com', NULL, '2020-05-05', 'kevin.fanton@hotmail.com', NULL, 'NEPAUL', NULL, NULL),
(17, 11703305, 'dernier test de la matinÃ©e', 1111, '11', '11', '1', '1', 'http://fnac.com', NULL, '2020-05-05', 'kevin.fanton@hotmail.com', NULL, 'NEPAUL', NULL, NULL),
(18, 11703287, 'aekponfziugiugh dfbrdhkrjtg bn', 1222, 'JOZEHF', '123', 'JKABEFOJ', 'BAJEBGF', 'http://fnac.com', NULL, '2020-06-03', 'akreazr@sfr.fr', 'JE TESTTTTT', 'NEPAUL', 'un enieme test', 'aucun');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
