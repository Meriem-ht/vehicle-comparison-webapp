-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 20 juil. 2026 à 22:15
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tdw2`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `motpasse` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;



-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

DROP TABLE IF EXISTS `avis`;
CREATE TABLE IF NOT EXISTS `avis` (
  `idavis` int NOT NULL AUTO_INCREMENT,
  `commentaire` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `statut` tinyint(1) DEFAULT '0',
  `estmarque` tinyint(1) NOT NULL,
  `id_user` int NOT NULL,
  `id_marque` int DEFAULT NULL,
  `id_vehicule` int DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`idavis`),
  KEY `id_user` (`id_user`),
  KEY `id_marque` (`id_marque`),
  KEY `id_vehicule` (`id_vehicule`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `avis`
--

INSERT INTO `avis` (`idavis`, `commentaire`, `statut`, `estmarque`, `id_user`, `id_marque`, `id_vehicule`, `date`) VALUES
(1, 'Très bonne marque!', 0, 1, 1, 8, 0, '2023-01-01'),
(3, 'Les produits de cette marque sont exceptionnels.', 0, 1, 2, 8, 0, '2023-03-10'),
(4, 'Une marque fiable et de qualité.', 0, 1, 3, 8, 0, '2023-04-05'),
(5, 'Je recommande vivement cette marque.', 0, 1, 4, 8, 0, '2023-05-20'),
(8, 'Véhicule très agréable à conduire, surtout en ville et sur autoroute. La boîte automatique est fluide et réactive. Le moteur 1.5L est suffisant pour une utilisation quotidienne et reste silencieux. Finition M Sport de très bonne qualité, intérieur premium et bien équipé. Consommation raisonnable pour un SUV essence. Très satisfait de mon achat.', 0, 0, 1, 0, 1, '2023-12-30'),
(9, 'La BMW X1 offre un excellent compromis entre confort, sportivité et praticité. Le design extérieur est réussi et l’intérieur est bien fini. La tenue de route est rassurante. Seul petit bémol : le moteur manque un peu de punch lors des fortes accélérations, surtout à pleine charge.', 0, 0, 2, 0, 1, '2023-12-27');

-- --------------------------------------------------------

--
-- Structure de la table `caract`
--

DROP TABLE IF EXISTS `caract`;
CREATE TABLE IF NOT EXISTS `caract` (
  `idcaract` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idcaract`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `caract`
--

INSERT INTO `caract` (`idcaract`, `nom`) VALUES
(1, 'Moteur '),
(2, 'Puissance '),
(3, 'transmission'),
(4, 'Consommation '),
(5, 'Accélération'),
(6, 'Places'),
(7, 'Carburant '),
(8, 'Prix'),
(9, 'Longeur'),
(10, 'Largeur'),
(11, 'Hauteur'),
(12, 'Capacité carburant'),
(13, 'Nombre de pneus'),
(14, 'Charge utile');

-- --------------------------------------------------------

--
-- Structure de la table `caract_vehicule`
--

DROP TABLE IF EXISTS `caract_vehicule`;
CREATE TABLE IF NOT EXISTS `caract_vehicule` (
  `idcaract_vehicule` int NOT NULL AUTO_INCREMENT,
  `id_vehicule` int NOT NULL,
  `id_caract` int NOT NULL,
  `valeur` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idcaract_vehicule`),
  KEY `id_vehicule` (`id_vehicule`),
  KEY `id_caract` (`id_caract`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `caract_vehicule`
--

INSERT INTO `caract_vehicule` (`idcaract_vehicule`, `id_vehicule`, `id_caract`, `valeur`) VALUES
(1, 1, 1, '1 499 cm3'),
(2, 1, 2, '134 ch à 4 400-6 500 tr/min'),
(3, 1, 3, 'Automatique (DCT)'),
(4, 1, 4, '6.30 A 7.00 L/100 KM'),
(5, 1, 5, '9,2 secondes'),
(6, 1, 6, '5'),
(7, 1, 7, 'Essence'),
(8, 1, 8, '39950 €'),
(9, 1, 9, '4500 millimètres'),
(10, 1, 10, '1845 millimètres'),
(11, 1, 11, '1630 millimètres'),
(12, 2, 1, '2998 cm3'),
(13, 2, 2, '375 ch à 5 200-6 250 tr/min'),
(14, 2, 3, 'Automatique (TC)'),
(15, 2, 4, '7,7 à 13,0 l/100 km'),
(16, 2, 5, '5,4 secondes'),
(17, 2, 6, '5'),
(18, 2, 7, 'Hybride doux (électrique + essence)'),
(19, 2, 8, '100 465€'),
(20, 2, 9, '5181 millimètres'),
(21, 2, 10, '2000 millimètres'),
(22, 2, 11, '1835 millimètres'),
(23, 3, 1, '2 925 cm3'),
(24, 3, 2, '282 ch à 3 400-4 600 tr/min'),
(25, 3, 3, 'Automatique (DCT)'),
(26, 3, 4, '6.30 A 7.00 L/100 KM'),
(27, 3, 5, '6,1 secondes'),
(28, 3, 6, '5'),
(29, 3, 7, 'Diesel'),
(30, 3, 8, '67900 €'),
(31, 3, 9, '5075 millimètres'),
(32, 3, 10, '1860 millimètres'),
(33, 3, 11, '1495 millimètres'),
(34, 4, 1, '999 cm3'),
(35, 4, 2, '206,6 ch à 13 500 tr/min'),
(36, 4, 3, 'Manuel'),
(37, 4, 8, '22520,89€'),
(38, 4, 9, '2073 millimètres'),
(39, 4, 10, '848 millimètres'),
(40, 4, 11, '1151 millimètres'),
(41, 4, 12, '16,5 L'),
(42, 5, 1, '999 cm3'),
(43, 5, 2, '18,4 ch à 10 000 tr/min'),
(44, 5, 3, 'Manuel'),
(45, 5, 8, '22520,89€'),
(46, 5, 9, '2015 millimètres'),
(47, 5, 10, '800 millimètres'),
(48, 5, 11, '1070 millimètres'),
(49, 5, 12, '10 L'),
(50, 6, 1, '1254 cm3'),
(51, 6, 2, '136 ch à 7 750 tr/min'),
(52, 6, 3, 'Manuel'),
(53, 6, 8, '22520,89€'),
(54, 6, 9, '2207 millimètres'),
(55, 6, 10, '1430 millimètres'),
(56, 6, 11, '952,5 millimètres'),
(57, 6, 12, '20 L'),
(58, 7, 1, '3300 cm3'),
(59, 7, 2, '167 ch'),
(60, 7, 3, 'Manuel'),
(61, 7, 7, 'Diesel'),
(62, 7, 8, '39950 €'),
(63, 7, 9, '8705 millimètres'),
(64, 7, 10, '2425 millimètres'),
(65, 7, 11, '3200 millimètres'),
(66, 7, 13, '6'),
(67, 7, 14, '10550 kg'),
(68, 8, 1, '3300 cm3'),
(69, 8, 2, '420 ch'),
(70, 8, 3, 'Manuel'),
(71, 8, 7, 'Diesel'),
(72, 8, 8, '39950 €'),
(73, 8, 9, '5690 millimètres'),
(74, 8, 10, '2534 millimètres'),
(75, 8, 11, '3030 millimètres'),
(76, 8, 13, '6'),
(77, 8, 14, '8600 kg');

-- --------------------------------------------------------

--
-- Structure de la table `comparaison`
--

DROP TABLE IF EXISTS `comparaison`;
CREATE TABLE IF NOT EXISTS `comparaison` (
  `vehicule1_id` int NOT NULL,
  `vehicule2_id` int NOT NULL,
  `nbcompare` int NOT NULL,
  PRIMARY KEY (`vehicule1_id`,`vehicule2_id`),
  KEY `vehicule2_id` (`vehicule2_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `comparaison`
--

INSERT INTO `comparaison` (`vehicule1_id`, `vehicule2_id`, `nbcompare`) VALUES
(1, 2, 3),
(6, 5, 1),
(8, 7, 1);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `idcontact` int NOT NULL AUTO_INCREMENT,
  `icon` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `valeur` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`idcontact`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`idcontact`, `icon`, `valeur`) VALUES
(1, 'fa-solid fa-phone', '+213 123 456 789'),
(2, 'fa-solid fa-envelope', 'contact@vehicom.com'),
(3, 'fa-solid fa-location-dot', 'Alger, Algérie'),
(4, 'fa-brands fa-facebook', 'facebook.com/vehicom'),
(5, 'fa-solid fa-clock', 'Dim - Jeu : 9h00 - 18h00');

-- --------------------------------------------------------

--
-- Structure de la table `diaporama`
--

DROP TABLE IF EXISTS `diaporama`;
CREATE TABLE IF NOT EXISTS `diaporama` (
  `iddiaporama` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `href` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `type` enum('publicite','news') COLLATE utf8mb3_unicode_ci NOT NULL,
  `id_news` int DEFAULT NULL,
  PRIMARY KEY (`iddiaporama`),
  KEY `id_news` (`id_news`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `diaporama`
--

INSERT INTO `diaporama` (`iddiaporama`, `title`, `href`, `type`, `id_news`) VALUES
(1, 'La première voiture signée Red Bull sera dévoilée en 2024. Baptisée RB17', NULL, 'news', 1),
(2, 'Hommage au glorieux passé de la marque, cette Porsche 935 (2019) est uniquement réservée à la piste. Limitée à 77 unités, elle développe une puissance de 700 ch.', NULL, 'news', 2),
(3, 'Essai - Kawasaki ZX-6R (2023) : la sportive hors concours !', NULL, 'news', 3),
(4, 'Les transports Rivieri, basés à Nantes-en-Ratier dans le département de l\'Isère, ont acquis un MAN TGX  6x4*4 équipé d\'une grue à forte capacité', NULL, 'news', 5),
(5, 'YAMAHA SCOOTERS Changez votre façon de vous déplacer', 'https://www.yamaha-motor.eu/fr/fr/scooters/', 'publicite', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `favoris`
--

DROP TABLE IF EXISTS `favoris`;
CREATE TABLE IF NOT EXISTS `favoris` (
  `idfavoris` int NOT NULL AUTO_INCREMENT,
  `id_vehicule` int NOT NULL,
  `id_user` int NOT NULL,
  `statutfavoris` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`idfavoris`),
  KEY `id_vehicule` (`id_vehicule`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `favoris`
--

INSERT INTO `favoris` (`idfavoris`, `id_vehicule`, `id_user`, `statutfavoris`) VALUES
(2, 2, 5, 1),
(3, 5, 5, 1),
(5, 4, 8, 1);

-- --------------------------------------------------------

--
-- Structure de la table `guide_marque`
--

DROP TABLE IF EXISTS `guide_marque`;
CREATE TABLE IF NOT EXISTS `guide_marque` (
  `idguide_marque` int NOT NULL AUTO_INCREMENT,
  `texte` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `idmarque` int NOT NULL,
  PRIMARY KEY (`idguide_marque`),
  KEY `idmarque` (`idmarque`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `guide_marque`
--

INSERT INTO `guide_marque` (`idguide_marque`, `texte`, `idmarque`) VALUES
(1, 'Choisir la bonne marque de véhicule est une étape essentielle avant tout achat. Il faut prendre en compte plusieurs critères : la fiabilité du constructeur, la disponibilité des pièces de rechange, le réseau après-vente, ainsi que la réputation de la marque en matière de qualité et de durabilité. Certaines marques sont reconnues pour leur robustesse, d\'autres pour leur innovation technologique ou leur rapport qualité-prix. Prenez le temps de comparer les avis des propriétaires actuels et les classements de fiabilité avant de vous décider.', 1),
(2, 'Choisir la bonne marque de véhicule est une étape essentielle avant tout achat.\r\n\r\nLa fiabilité du constructeur est un critère majeur. Certaines marques sont reconnues pour leur robustesse et leur longévité mécanique.\r\n\r\nLe réseau après-vente compte aussi beaucoup. Vérifiez la disponibilité des pièces de rechange et la proximité des garages agréés.\r\n\r\nEnfin, comparez le rapport qualité-prix : le prix d\'achat, les coûts d\'entretien à long terme, et la valeur de revente.', 1);

-- --------------------------------------------------------

--
-- Structure de la table `guide_vehicule`
--

DROP TABLE IF EXISTS `guide_vehicule`;
CREATE TABLE IF NOT EXISTS `guide_vehicule` (
  `idguide_vehicule` int NOT NULL AUTO_INCREMENT,
  `texte` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `idvehicule` int NOT NULL,
  PRIMARY KEY (`idguide_vehicule`),
  KEY `idvehicule` (`idvehicule`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `idimage` int NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`idimage`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`idimage`, `url`) VALUES
(1, './images/Marques/Logos/lexus'),
(2, './images/Marques/Logos/hyundai'),
(3, './images/Marques/Logos/skoda'),
(4, './images/Marques/Logos/tata'),
(5, './images/Marques/Logos/honda'),
(6, './images/Marques/Logos/toyota'),
(7, './images/Marques/Logos/kia'),
(8, './images/Marques/Logos/bmw'),
(9, './images/Marques/Logos/audi'),
(10, './images/Marques/Logos/nissan'),
(11, './images/Marques/Logos/renault'),
(12, './images/Marques/Logos/fiat'),
(13, './images/Marques/Logos/suzuki'),
(14, './images/Marques/Logos/yamaha'),
(15, './images/Marques/Logos/ford'),
(16, './images/Marques/Logos/volkswagen'),
(17, './images/Marques/Logos/mercedes-benz'),
(18, './images/Marques/Logos/chevrolet'),
(19, './images/Marques/Logos/porsche'),
(20, './images/Marques/Logos/ferrari'),
(21, './images/Marques/Logos/lamborghini'),
(22, './images/Marques/Logos/jeep'),
(23, './images/Marques/Logos/bugatti'),
(24, './images/Marques/Logos/volvo'),
(25, './images/Véhicules/Voiture/bmw-SDrive18i-1'),
(26, './images/Véhicules/Voiture/bmw-SDrive18i-2'),
(27, './images/Véhicules/Voiture/bmw-SDrive18i-3'),
(28, './images/Véhicules/Voiture/bmw-SDrive18i-4'),
(29, './images/Véhicules/Voiture/bmw-SDrive18i-5'),
(30, './images/Véhicules/Voiture/bmw-X7-SDrive40d-1'),
(31, './images/Véhicules/Voiture/bmw-X7-SDrive40d-2'),
(32, './images/Véhicules/Voiture/bmw-X7-SDrive40d-3'),
(33, './images/Véhicules/Voiture/mercedes-e-classe-1'),
(34, './images/Véhicules/Voiture/mercedes-e-classe-2'),
(35, './images/Véhicules/Voiture/mercedes-e-classe-3'),
(36, './images/Véhicules/Voiture/mercedes-e-classe-4'),
(37, './images/Véhicules/Moto/bmw-R-1250-1'),
(38, './images/Véhicules/Moto/bmw-R-1250-2'),
(39, './images/Véhicules/Moto/bmw-R-1250-3'),
(40, './images/Véhicules/Moto/bmw-R-1250-4'),
(41, './images/Véhicules/Moto/bmw-S1000-1'),
(42, './images/Véhicules/Moto/bmw-S1000-2'),
(43, './images/Véhicules/Moto/bmw-S1000-3'),
(44, './images/Véhicules/Moto/bmw-S1000-4'),
(45, './images/Véhicules/Moto/yamaha-mt-15-1'),
(46, './images/Véhicules/Moto/yamaha-mt-15-2'),
(47, './images/Véhicules/Moto/yamaha-mt-15-3'),
(48, './images/Véhicules/Moto/yamaha-mt-15-4'),
(49, './images/Véhicules/Camion/tata-1512-1'),
(50, './images/Véhicules/Camion/tata-1512-2'),
(51, './images/Véhicules/Camion/volvo-1'),
(52, './images/Véhicules/Camion/volvo-2'),
(53, './images/Véhicules/Camion/volvo-3'),
(54, './images/News/news1-1'),
(55, './images/News/news1-2'),
(56, './images/News/news2-1'),
(57, './images/News/news2-2'),
(58, './images/News/news3-1'),
(59, './images/News/news3-2'),
(60, './images/News/news3-3'),
(61, './images/News/news4-1'),
(62, './images/News/news5-1'),
(63, './images/News/news5-2'),
(64, './images/News/pub');

-- --------------------------------------------------------

--
-- Structure de la table `image_diapo`
--

DROP TABLE IF EXISTS `image_diapo`;
CREATE TABLE IF NOT EXISTS `image_diapo` (
  `id_image` int NOT NULL,
  `id_diapo` int NOT NULL,
  KEY `id_image` (`id_image`),
  KEY `id_diapo` (`id_diapo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `image_diapo`
--

INSERT INTO `image_diapo` (`id_image`, `id_diapo`) VALUES
(55, 1),
(57, 2),
(59, 3),
(63, 4),
(64, 5);

-- --------------------------------------------------------

--
-- Structure de la table `image_guide`
--

DROP TABLE IF EXISTS `image_guide`;
CREATE TABLE IF NOT EXISTS `image_guide` (
  `id_image` int NOT NULL,
  `id_guide` int NOT NULL,
  KEY `id_image` (`id_image`),
  KEY `id_guide` (`id_guide`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `image_marque`
--

DROP TABLE IF EXISTS `image_marque`;
CREATE TABLE IF NOT EXISTS `image_marque` (
  `id_image` int NOT NULL,
  `id_marque` int NOT NULL,
  KEY `id_image` (`id_image`),
  KEY `id_marque` (`id_marque`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `image_marque`
--

INSERT INTO `image_marque` (`id_image`, `id_marque`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24);

-- --------------------------------------------------------

--
-- Structure de la table `image_news`
--

DROP TABLE IF EXISTS `image_news`;
CREATE TABLE IF NOT EXISTS `image_news` (
  `id_image` int NOT NULL,
  `id_news` int NOT NULL,
  KEY `id_image` (`id_image`),
  KEY `id_news` (`id_news`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `image_news`
--

INSERT INTO `image_news` (`id_image`, `id_news`) VALUES
(54, 1),
(55, 1),
(56, 2),
(57, 2),
(58, 3),
(59, 3),
(60, 3),
(61, 4),
(62, 5),
(63, 5);

-- --------------------------------------------------------

--
-- Structure de la table `image_vehicule`
--

DROP TABLE IF EXISTS `image_vehicule`;
CREATE TABLE IF NOT EXISTS `image_vehicule` (
  `id_image` int NOT NULL,
  `id_vehicule` int NOT NULL,
  KEY `id_image` (`id_image`),
  KEY `id_vehicule` (`id_vehicule`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `image_vehicule`
--

INSERT INTO `image_vehicule` (`id_image`, `id_vehicule`) VALUES
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 2),
(31, 2),
(32, 2),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 4),
(38, 4),
(39, 4),
(40, 4),
(41, 5),
(42, 5),
(43, 5),
(44, 5),
(45, 6),
(46, 6),
(47, 6),
(48, 6),
(49, 7),
(50, 7),
(51, 8),
(52, 8),
(53, 8);

-- --------------------------------------------------------

--
-- Structure de la table `likeavis`
--

DROP TABLE IF EXISTS `likeavis`;
CREATE TABLE IF NOT EXISTS `likeavis` (
  `id_avis` int NOT NULL,
  `id_user` int NOT NULL,
  PRIMARY KEY (`id_avis`,`id_user`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `likeavis`
--

INSERT INTO `likeavis` (`id_avis`, `id_user`) VALUES
(1, 2),
(1, 3),
(1, 4),
(3, 1),
(3, 3),
(3, 4),
(3, 5),
(4, 1),
(4, 2),
(4, 4);

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

DROP TABLE IF EXISTS `marque`;
CREATE TABLE IF NOT EXISTS `marque` (
  `idmarque` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `statutmarque` tinyint(1) DEFAULT NULL,
  `estpopulaire` tinyint(1) DEFAULT NULL,
  `pays` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `siege_social` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `annee_creation` date DEFAULT NULL,
  PRIMARY KEY (`idmarque`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`idmarque`, `nom`, `statutmarque`, `estpopulaire`, `pays`, `siege_social`, `annee_creation`) VALUES
(1, 'Lexus', 1, 1, 'Japon', 'Toyota, Aichi, Japon', '1989-09-01'),
(2, 'Hyundai', 1, 0, 'Corée du Sud', 'Séoul, Corée du Sud', '1967-01-01'),
(3, 'Skoda', 1, 0, 'République tchèque', 'Mladá Boleslav, Tchéquie', '1895-01-01'),
(4, 'Tata', 1, 0, 'Inde', 'Mumbai, Inde', '1868-01-01'),
(5, 'Honda', 1, 0, 'Japon', 'Minato-ku Tokyo, Japon', '1948-01-01'),
(6, 'Toyota', 1, 0, 'Japon', 'Toyota, Préfecture d\'Aichi, Japon', '1937-08-28'),
(7, 'Kia', 1, 1, 'Corée du Sud', 'Séoul, Corée du Sud', '1944-01-01'),
(8, 'BMW', 1, 1, 'Allemagne', 'Munich, Allemagne', '1916-03-07'),
(9, 'Audi', 1, 1, 'Allemagne', 'Ingolstadt, Allemagne', '1909-05-24'),
(10, 'Nissan', 1, 1, 'Japon', 'Yokohama, Préfecture de Kanagawa, Japon', '1933-12-26'),
(11, 'Renault', 1, 1, 'France', 'Boulogne-Billancourt, France', '1898-01-01'),
(12, 'Fiat', 1, 0, 'Italie', 'Turin, Italie', '1899-07-11'),
(13, 'Suzuki', 1, 1, 'Japon', 'Hamamatsu, Préfecture de Shizuoka, Japon', '1909-10-03'),
(14, 'Yamaha', 1, 0, 'Japon', 'Hamamatsu, Préfecture de Shizuoka, Japon', '1953-07-01'),
(15, 'Ford', 1, 0, 'États-Unis', 'Dearborn, Michigan, États-Unis', '1903-06-16'),
(16, 'Volkswagen', 1, 0, 'Allemagne', 'Wolfsburg, Allemagne', '1937-05-28'),
(17, 'Mercedes-Benz', 1, 1, 'Allemagne', 'Stuttgart, Allemagne', '1926-06-28'),
(18, 'Chevrolet', 1, 0, 'États-Unis', 'Détroit, Michigan, États-Unis', '1911-11-03'),
(19, 'Porsche', 1, 0, 'Allemagne', 'Stuttgart, Allemagne', '1931-04-25'),
(20, 'Ferrari', 1, 0, 'Italie', 'Maranello, Italie', '1939-11-16'),
(21, 'Lamborghini', 1, 0, 'Italie', 'SantAgata Bolognese, Italie', '1963-05-07'),
(22, 'Jeep', 1, 1, 'États-Unis', 'Toledo, Ohio, États-Unis', '1941-07-15'),
(23, 'Bugatti', 1, 0, 'France', 'Molsheim, Alsace, France', '1909-01-01'),
(24, 'Volvo', 1, 1, 'Suède', 'Göteborg, Suède', '1927-04-14');

-- --------------------------------------------------------

--
-- Structure de la table `marque_type`
--

DROP TABLE IF EXISTS `marque_type`;
CREATE TABLE IF NOT EXISTS `marque_type` (
  `id_marque` int NOT NULL,
  `id_type` int NOT NULL,
  KEY `id_marque` (`id_marque`),
  KEY `id_type` (`id_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `marque_type`
--

INSERT INTO `marque_type` (`id_marque`, `id_type`) VALUES
(1, 1),
(2, 1),
(2, 3),
(3, 1),
(3, 2),
(4, 1),
(4, 3),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 3),
(11, 1),
(11, 3),
(12, 1),
(12, 2),
(12, 3),
(13, 1),
(13, 2),
(13, 3),
(14, 1),
(14, 2),
(14, 3),
(15, 1),
(15, 2),
(15, 3),
(16, 1),
(16, 2),
(16, 3),
(17, 1),
(17, 2),
(17, 3),
(18, 1),
(18, 2),
(18, 3),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(21, 3),
(22, 1),
(23, 1),
(24, 1),
(24, 3);

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `idmenu` int NOT NULL AUTO_INCREMENT,
  `valeur` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idmenu`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `menu`
--

INSERT INTO `menu` (`idmenu`, `valeur`) VALUES
(1, 'Page d\'acceuil'),
(2, 'News'),
(3, 'Comparateur'),
(4, 'Marques'),
(5, 'Avis'),
(6, 'Guide d\'achat'),
(7, 'Contact');

-- --------------------------------------------------------

--
-- Structure de la table `modele`
--

DROP TABLE IF EXISTS `modele`;
CREATE TABLE IF NOT EXISTS `modele` (
  `idmodele` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `id_marque` int NOT NULL,
  `statutmodele` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`idmodele`),
  KEY `id_marque` (`id_marque`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `modele`
--

INSERT INTO `modele` (`idmodele`, `nom`, `id_marque`, `statutmodele`) VALUES
(1, 'X1', 8, 1),
(2, 'X7', 8, 1),
(3, 'E-Classe', 17, 1),
(4, 'S 1000 RR', 8, 1),
(5, 'R 1250 GS', 8, 1),
(6, 'MT-15', 14, 1),
(7, '1512 LPT', 4, 1),
(8, 'FM 420 4x2', 24, 1);

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `idnews` int NOT NULL AUTO_INCREMENT,
  `titre` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `texte` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `afficher` tinyint(1) DEFAULT '1',
  `statutnews` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`idnews`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`idnews`, `titre`, `texte`, `date`, `afficher`, `statutnews`) VALUES
(1, 'La première voiture signée Red Bull sera dévoilée en 2024', 'La RB17 est toujours dans les cartons de la firme autrichienne et la surprise est de taille : elle arrivera bien plus tôt que prévu. Présenté officiellement en juin 2022, le projet d’hypercar Red Bull avait quelque peu disparu des radars, tant son développement semblait lointain. Pourtant, Christian Horner, directeur de Red Bull Advanced Technologies, a récemment confirmé que la RB17 sera dévoilée courant 2024.\n\nIl s’agit de la toute première voiture de sport développée par Red Bull, exclusivement dédiée à la piste. Le modèle sera entièrement conçu sous la direction d’Adrian Newey, ingénieur et designer emblématique de la Formule 1, déjà à l’origine de l’Aston Martin Valkyrie.\n\nSous le capot, la RB17 embarquera un moteur V8 bi-turbo développant environ 1 250 chevaux, dont 150 chevaux issus d’une assistance électrique. Grâce à l’utilisation massive de matériaux composites et de fibre de carbone, le poids total de l’hypercar devrait rester sous la barre des 900 kg, garantissant des performances exceptionnelles.\n\nLa production sera extrêmement limitée puisque seulement 50 exemplaires verront le jour. Le prix annoncé avoisine les six millions de dollars, réservant cette hypercar à une clientèle ultra-exclusive.', '2024-08-01', 1, 1),
(2, 'Hommage au glorieux passé de la marque, la Porsche 935 est réservée à la piste', 'La Porsche 935 Type 991 est un modèle radical, pensé exclusivement pour une utilisation sur circuit. Présentée comme un hommage à la mythique Porsche 935 des années 1970, cette version moderne se distingue par son design extrême et ses performances hors normes.\n\nSa carrosserie intégralement réalisée en fibre de carbone est dominée par un immense aileron arrière, optimisé pour offrir un appui aérodynamique maximal. Basée sur la Porsche 911 GT2 RS, la 935 développe une puissance de 700 chevaux grâce à son moteur six cylindres à plat biturbo.\n\nLimitée à seulement 77 exemplaires dans le monde, la Porsche 935 n’est pas homologuée pour la route. Elle s’adresse exclusivement aux passionnés de pilotage souhaitant exploiter une machine conçue sans compromis.', '2024-01-06', 1, 1),
(3, 'Essai – Kawasaki ZX-6R (2023)', 'La Kawasaki ZX-6R fait son grand retour sur le marché européen avec une mise à jour importante pour répondre à la norme Euro 5. Ce modèle emblématique de la catégorie Supersport conserve son moteur quatre cylindres de 636 cm3, offrant un excellent compromis entre performances et polyvalence.\n\nLa ZX-6R bénéficie également d’une électronique modernisée avec plusieurs modes de conduite, un contrôle de traction réglable et un ABS performant. Le châssis a été retravaillé afin d’améliorer la stabilité à haute vitesse et la précision en courbe.\n\nCôté design, Kawasaki adopte une ligne plus agressive inspirée des modèles de la gamme Ninja, tout en intégrant un écran TFT couleur moderne. Cette ZX-6R 2023 s’adresse aussi bien aux amateurs de piste qu’aux motards recherchant une sportive efficace pour un usage quotidien.', '2024-01-01', 1, 1),
(4, 'MBP présente le trail A2 T502X', 'La marque MBP fait son entrée sur le segment des trails accessibles aux détenteurs du permis A2 avec le T502X. Ce modèle est équipé d’un moteur bicylindre de 486 cm3 développant une puissance adaptée à la réglementation A2, tout en offrant un couple suffisant pour une conduite polyvalente.\n\nLe T502X se distingue par son équipement complet, comprenant une suspension à grand débattement, des roues à rayons et une position de conduite confortable, idéale pour les longs trajets et les chemins non goudronnés.\n\nPensé pour l’aventure, ce trail se positionne comme une alternative intéressante face aux modèles plus coûteux du marché, en proposant un excellent rapport qualité-prix et une conception robuste.', '2023-12-26', 1, 1),
(5, 'MAN TGX 6x4 pour les transports Rivieri', 'Les transports Rivieri renforcent leur flotte avec l’acquisition d’un MAN TGX 6x4 spécialement configuré pour les interventions en zones montagneuses. Ce camion est équipé d’une grue de forte capacité permettant de répondre à des besoins logistiques complexes.\n\nLe MAN TGX se distingue par sa robustesse, son confort de conduite et ses technologies d’aide à la conduite, garantissant une sécurité accrue pour les chauffeurs lors des opérations délicates.\n\nGrâce à cette acquisition, l’entreprise Rivieri améliore sa capacité d’intervention sur des chantiers difficiles d’accès, tout en optimisant la fiabilité et la performance de ses services de transport.', '2024-08-01', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

DROP TABLE IF EXISTS `note`;
CREATE TABLE IF NOT EXISTS `note` (
  `notevalue` double DEFAULT NULL,
  `statutnote` tinyint(1) DEFAULT '1',
  `estmarque` tinyint(1) NOT NULL,
  `id_user` int NOT NULL,
  `id_vehicule` int NOT NULL,
  `id_marque` int NOT NULL,
  PRIMARY KEY (`id_user`,`id_vehicule`,`id_marque`),
  KEY `id_vehicule` (`id_vehicule`),
  KEY `id_marque` (`id_marque`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `note`
--

INSERT INTO `note` (`notevalue`, `statutnote`, `estmarque`, `id_user`, `id_vehicule`, `id_marque`) VALUES
(2, 1, 1, 2, 0, 8),
(5, 1, 1, 4, 0, 8),
(4, 1, 0, 1, 1, 0),
(5, 1, 0, 2, 2, 0),
(4, 1, 0, 3, 1, 0),
(4, 1, 0, 3, 2, 0),
(4, 1, 0, 3, 4, 0),
(4, 1, 0, 4, 1, 0),
(4, 1, 0, 4, 2, 0),
(4, 1, 0, 3, 5, 0),
(5, 1, 0, 4, 5, 0),
(5, 1, 0, 1, 2, 0),
(4, 1, 0, 2, 4, 0),
(4, 1, 0, 5, 1, 0),
(1, 1, 1, 5, 0, 8),
(5, 1, 1, 6, 0, 8),
(3, 1, 1, 8, 0, 8);

-- --------------------------------------------------------

--
-- Structure de la table `socialmedia`
--

DROP TABLE IF EXISTS `socialmedia`;
CREATE TABLE IF NOT EXISTS `socialmedia` (
  `idsocial` int NOT NULL AUTO_INCREMENT,
  `nomsocial` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `lien` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idsocial`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `socialmedia`
--

INSERT INTO `socialmedia` (`idsocial`, `nomsocial`, `lien`) VALUES
(1, 'Facebook', 'https://www.facebook.com'),
(2, 'WhatsApp', 'https://www.whatsapp.com'),
(3, 'YouTube', 'https://www.youtube.com');

-- --------------------------------------------------------

--
-- Structure de la table `typevehicule`
--

DROP TABLE IF EXISTS `typevehicule`;
CREATE TABLE IF NOT EXISTS `typevehicule` (
  `idtype` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idtype`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `typevehicule`
--

INSERT INTO `typevehicule` (`idtype`, `nom`) VALUES
(1, 'Voiture'),
(2, 'Moto'),
(3, 'Camion');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `sexe` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `date_nais` date NOT NULL,
  `motpasse` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `statutuser` enum('Non Inscrit','Inscrit','Bloque','Supprime') COLLATE utf8mb3_unicode_ci DEFAULT 'Non Inscrit',
  PRIMARY KEY (`iduser`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;


INSERT INTO `user` (`iduser`, `nom`, `prenom`, `username`, `sexe`, `date_nais`, `motpasse`, `statutuser`) VALUES
(1, 'Belkacem', 'Oussama', 'belkacem.oussama', 'homme', '1994-08-18', '$2y$10$BMvszd2TCY3cgzzXtWSl8OOhg09s7hrychRu/wYqbHDA/gC/h43pm', 'Inscrit'),
(2, 'Benali', 'Mohamed', 'benali.mohamed', 'homme', '1996-06-30', '$2y$10$RWznIAc1oyEqeeVRJqtI8.izN5YEQ2X4p6HU3GlSVu3Z0VvOQRehm', 'Inscrit'),
(3, 'Cherif', 'Sara', 'cherif.sara', 'femme', '1992-05-05', '$2y$10$jCCpMOpWxr2b9wvlTEYfWOh0MkS/L6T0p9tybihXhx6AZ4XR2n24S', 'Inscrit'),
(4, 'Khelifi', 'Youcef', 'khelifi.youcef', 'homme', '1992-05-21', '$2y$10$qeS.vmKfG5R9wZVXHxyxw.n3FnO9ggb/WJJC0B.kjbXVmBunI81hO', 'Inscrit'),

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

DROP TABLE IF EXISTS `vehicule`;
CREATE TABLE IF NOT EXISTS `vehicule` (
  `idvehicule` int NOT NULL AUTO_INCREMENT,
  `statutvehicule` tinyint(1) DEFAULT '1',
  `estprincipale` tinyint(1) NOT NULL,
  `id_marque` int NOT NULL,
  `id_modele` int NOT NULL,
  `id_version` int NOT NULL,
  `id_type` int NOT NULL,
  PRIMARY KEY (`idvehicule`),
  KEY `id_marque` (`id_marque`),
  KEY `id_modele` (`id_modele`),
  KEY `id_version` (`id_version`),
  KEY `id_type` (`id_type`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `vehicule`
--

INSERT INTO `vehicule` (`idvehicule`, `statutvehicule`, `estprincipale`, `id_marque`, `id_modele`, `id_version`, `id_type`) VALUES
(1, 1, 1, 8, 1, 1, 1),
(2, 1, 1, 8, 2, 2, 1),
(3, 1, 1, 17, 3, 3, 1),
(4, 1, 1, 8, 4, 4, 2),
(5, 1, 1, 8, 5, 5, 2),
(6, 1, 1, 14, 6, 6, 2),
(7, 1, 1, 4, 7, 7, 3),
(8, 1, 1, 24, 8, 8, 3);

-- --------------------------------------------------------

--
-- Structure de la table `vers`
--

DROP TABLE IF EXISTS `vers`;
CREATE TABLE IF NOT EXISTS `vers` (
  `idversion` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `datedebut` date DEFAULT NULL,
  `datefin` date DEFAULT NULL,
  `id_modele` int NOT NULL,
  `statutversion` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`idversion`),
  KEY `id_modele` (`id_modele`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `vers`
--

INSERT INTO `vers` (`idversion`, `nom`, `datedebut`, `datefin`, `id_modele`, `statutversion`) VALUES
(1, 'sDrive18i M Sport', '2020-01-01', '2023-01-01', 1, 1),
(2, 'xDrive40i M Sport', '2019-01-01', '2024-01-01', 2, 1),
(3, 'E350d Elite', '2016-01-01', '2023-01-01', 3, 1),
(4, 'STD BS6', '2020-01-01', '0000-00-00', 4, 1),
(5, 'Pro BS6', '2016-01-01', '2023-01-01', 5, 1),
(6, 'MotoGP', '2016-01-01', '2023-01-01', 6, 1),
(7, '4830/HSD', '2016-01-01', '2023-01-01', 7, 1),
(8, 'FM 420 4x2', '2016-01-01', '2023-01-01', 8, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
