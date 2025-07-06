-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 17 mars 2024 à 23:22
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `fugue`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
CREATE TABLE IF NOT EXISTS `adresse` (
  `ID_BATIMENT` int(11) NOT NULL,
  `ID_TYPE_RESIDENCE` int(11) NOT NULL,
  `ID_PATIENT` int(11) NOT NULL,
  PRIMARY KEY (`ID_BATIMENT`,`ID_TYPE_RESIDENCE`,`ID_PATIENT`),
  KEY `FK_ADRESSE2` (`ID_TYPE_RESIDENCE`),
  KEY `FK_ADRESSE3` (`ID_PATIENT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `batiment`
--

DROP TABLE IF EXISTS `batiment`;
CREATE TABLE IF NOT EXISTS `batiment` (
  `ID_BATIMENT` int(11) NOT NULL,
  `NUMERO_CHAMBRE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_BATIMENT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `capteur`
--

DROP TABLE IF EXISTS `capteur`;
CREATE TABLE IF NOT EXISTS `capteur` (
  `ID_CAPTEUR` int(11) NOT NULL,
  `ID_TYPE_CAPTEUR` int(11) NOT NULL,
  `DATE_CAPTURE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_CAPTEUR`),
  KEY `FK_ASSOCIATION_4` (`ID_TYPE_CAPTEUR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `ID_PATIENT` int(11) NOT NULL,
  `ID_CAPTEUR` int(11) NOT NULL,
  `NOM_PATIENT` varchar(10) DEFAULT NULL,
  `PRENOM_PATIENT` varchar(10) DEFAULT NULL,
  `DATE_NAISSANCE` date DEFAULT NULL,
  PRIMARY KEY (`ID_PATIENT`),
  KEY `FK_ASSOCIATION_3` (`ID_CAPTEUR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `type_capteur`
--

DROP TABLE IF EXISTS `type_capteur`;
CREATE TABLE IF NOT EXISTS `type_capteur` (
  `ID_TYPE_CAPTEUR` int(11) NOT NULL,
  `LIBELLE_CAPTEUR` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`ID_TYPE_CAPTEUR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `type_residence`
--

DROP TABLE IF EXISTS `type_residence`;
CREATE TABLE IF NOT EXISTS `type_residence` (
  `ID_TYPE_RESIDENCE` int(11) NOT NULL,
  `LIBELLE_RESIDENCE` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`ID_TYPE_RESIDENCE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `type_utilisateur`
--

DROP TABLE IF EXISTS `type_utilisateur`;
CREATE TABLE IF NOT EXISTS `type_utilisateur` (
  `ID_TYPE_UTILISATEUR` int(11) NOT NULL AUTO_INCREMENT,
  `LIBELLE_USER` char(0) DEFAULT NULL,
  PRIMARY KEY (`ID_TYPE_UTILISATEUR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `ID_UTILISATEUR` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_USER` varchar(16) DEFAULT NULL,
  `MDP` varchar(255) DEFAULT NULL,
  `PRENOM_USER` varchar(20) NOT NULL,
  `MAIL_USER` text NOT NULL,
  `TOKEN_USER` text NOT NULL,
  PRIMARY KEY (`ID_UTILISATEUR`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`ID_UTILISATEUR`, `NOM_USER`, `MDP`, `PRENOM_USER`, `MAIL_USER`, `TOKEN_USER`) VALUES
(3, 'rabla', '$2y$12$bJ2GEdPfOs5xofGdv5UpA.plbY9e7E7BNFOfhzDJu.h0QWiJxw/vK', 'jamel', 'jamelrabla@gmail.com', '1fb080506283b56d353c2942ca8199dab42579fba18001fca7ae6161c9d70a7309521de7f0f6bfa90de48823daea97d4a353b9e462a710750cc91856f194cf17');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
