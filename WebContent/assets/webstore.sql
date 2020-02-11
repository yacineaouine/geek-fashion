-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 11 fév. 2020 à 22:15
-- Version du serveur :  5.7.17
-- Version de PHP :  7.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `webstore`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_admins`
--

CREATE TABLE `t_admins` (
  `IdUser` int(4) NOT NULL,
  `Rights` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `t_admins`
--

INSERT INTO `t_admins` (`IdUser`, `Rights`) VALUES
(1, '-RWX------'),
(5, '-RWK------');

-- --------------------------------------------------------

--
-- Structure de la table `t_articles`
--

CREATE TABLE `t_articles` (
  `IdArticle` int(4) NOT NULL,
  `Description` text CHARACTER SET utf8 NOT NULL,
  `Brand` text CHARACTER SET utf8 NOT NULL,
  `UnitaryPrice` varchar(250) CHARACTER SET utf8 NOT NULL,
  `urlImage` varchar(250) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `t_articles`
--

INSERT INTO `t_articles` (`IdArticle`, `Description`, `Brand`, `UnitaryPrice`, `urlImage`) VALUES
(1, 'Souris', 'Logitoch', '65', 'assets/empty.jpg'),
(2, 'Clavier', 'Microhard', '49.5', 'assets/empty.jpg'),
(3, 'Systeme d\'exploitation', 'Fenetres Vistouille', '150', 'assets/empty.jpg'),
(4, 'Tapis souris', 'Evolution MM', '5', 'assets/empty.jpg'),
(5, 'Cle USB 8 To', 'Syno', '8', 'assets/empty.jpg'),
(6, 'Laptop', 'PH', '1199', 'assets/empty.jpg'),
(7, 'CD x 500', 'CETME', '250', 'assets/empty.jpg'),
(8, 'DVD-R x 100', 'CETME', '99', 'assets/empty.jpg'),
(9, 'DVD+R x 100', 'CETME', '105', 'assets/empty.jpg'),
(10, 'Batterie Laptop', 'PH', '80', 'assets/empty.jpg'),
(11, 'Casque Audio', 'Syno', '105', 'assets/empty.jpg'),
(12, 'WebCam', 'Logitoch', '755', 'assets/empty.jpg'),
(13, 'Sadek il l\'a tapÃ©', '#Bassem', '50', 'https://mcetv.fr/wp-content/uploads/2020/02/Sadek-les-mains-en-sang-il-a-violemment-agress%C3%A9-Bassem-Braiki-1000.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `t_commandlines`
--

CREATE TABLE `t_commandlines` (
  `IdCommandLine` int(4) NOT NULL,
  `IdCommand` int(4) NOT NULL,
  `IdArticle` int(4) NOT NULL,
  `Quantity` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `t_commandlines`
--

INSERT INTO `t_commandlines` (`IdCommandLine`, `IdCommand`, `IdArticle`, `Quantity`) VALUES
(1, 1, 1, 5),
(2, 1, 3, 3),
(3, 2, 2, 4),
(4, 2, 3, 1),
(5, 2, 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `t_commands`
--

CREATE TABLE `t_commands` (
  `IdCommand` int(4) NOT NULL,
  `IdUser` int(4) NOT NULL,
  `CommandDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `t_commands`
--

INSERT INTO `t_commands` (`IdCommand`, `IdUser`, `CommandDate`) VALUES
(1, 2, '2020-02-05 19:57:14'),
(2, 1, '2020-02-05 19:57:15');

-- --------------------------------------------------------

--
-- Structure de la table `t_users`
--

CREATE TABLE `t_users` (
  `IdUser` int(4) NOT NULL,
  `Login` varchar(250) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `Prenom` varchar(20) NOT NULL,
  `DateNaissance` varchar(20) NOT NULL,
  `Age` varchar(20) NOT NULL,
  `Adresse` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `t_users`
--

INSERT INTO `t_users` (`IdUser`, `Login`, `Password`, `Nom`, `Prenom`, `DateNaissance`, `Age`, `Adresse`) VALUES
(1, 'Anderson', 'Neo', '', '', '0000-00-00', '', ''),
(2, 'Skywalker', 'Luke', '', '', '0000-00-00', '', ''),
(3, 'Plissken', 'Snake', '', '', '0000-00-00', '', ''),
(4, 'Ripley', 'Ellen', '', '', '0000-00-00', '', ''),
(5, 'Bond', 'James', '', '', '0000-00-00', '', ''),
(6, 'Aouine', 'Yacine', '', '', '0000-00-00', '', ''),
(7, 'Hamid', 'Aouine', '', '', '0000-00-00', '', ''),
(10, 'yacine.aouine@outlook.fr', 'testtest', 'Aouine', 'Yacine', '33', '1987-01-30', '1 t chemin Vallon de la RougiÃ¨re bat A'),
(13, 'nabilabouziane@live.fr', 'testtest', 'Bouziane', 'Nabila', '37', '1982-11-12', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_articles`
--
ALTER TABLE `t_articles`
  ADD PRIMARY KEY (`IdArticle`);

--
-- Index pour la table `t_commandlines`
--
ALTER TABLE `t_commandlines`
  ADD PRIMARY KEY (`IdCommandLine`);

--
-- Index pour la table `t_commands`
--
ALTER TABLE `t_commands`
  ADD PRIMARY KEY (`IdCommand`);

--
-- Index pour la table `t_users`
--
ALTER TABLE `t_users`
  ADD PRIMARY KEY (`IdUser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_articles`
--
ALTER TABLE `t_articles`
  MODIFY `IdArticle` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `t_commandlines`
--
ALTER TABLE `t_commandlines`
  MODIFY `IdCommandLine` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `t_commands`
--
ALTER TABLE `t_commands`
  MODIFY `IdCommand` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `t_users`
--
ALTER TABLE `t_users`
  MODIFY `IdUser` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
