-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 01 fév. 2021 à 22:16
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `restn_vols`
--

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_vol` int(11) NOT NULL,
  `nombre_places` int(11) NOT NULL,
  `date_de_reservation` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id`, `id_user`, `id_vol`, `nombre_places`, `date_de_reservation`) VALUES
(1, 1, 2, 1, ''),
(2, 2, 1, 1, ''),
(3, 3, 1, 1, ''),
(4, 4, 1, 1, ''),
(5, 5, 1, 1, '2021-01-27'),
(99, 100, 1, 1, '2021-01-31 15:20:44.341'),
(100, 101, 1, 1, '2021-01-31 15:43:55.338'),
(101, 102, 1, 1, '2021-01-31 16:02:34.238'),
(102, 103, 1, 1, '2021-01-31 16:03:24.687'),
(103, 104, 1, 1, '2021-01-31 16:03:28.912'),
(104, 105, 1, 1, '2021-01-31 16:04:36.026'),
(105, 106, 1, 1, '2021-01-31 16:05:42.336'),
(106, 107, 1, 1, '2021-01-31 16:28:44.891'),
(107, 108, 1, 1, '2021-01-31 16:30:15.920'),
(108, 109, 1, 1, '2021-01-31 16:36:49.069'),
(109, 110, 1, 1, '2021-01-31 19:07:50.734'),
(110, 111, 1, 1, '2021-01-31 19:15:29.746'),
(111, 112, 1, 1, '2021-01-31 19:17:49.345'),
(112, 113, 1, 1, '2021-01-31 19:19:11.202'),
(113, 114, 1, 1, '2021-01-31 19:20:26.691'),
(114, 115, 1, 1, '2021-01-31 20:34:58.027'),
(115, 116, 1, 1, '2021-01-31 20:42:18.147'),
(116, 117, 1, 1, '2021-01-31 20:45:41.704'),
(117, 118, 1, 1, '2021-01-31 20:46:06.278'),
(118, 119, 1, 1, '2021-01-31 20:46:35.252'),
(119, 120, 1, 1, '2021-01-31 20:48:12.672'),
(120, 121, 1, 1, '2021-01-31 20:51:00.780'),
(121, 122, 1, 1, '2021-01-31 20:51:26.711'),
(122, 123, 1, 1, '2021-01-31 21:02:44.205'),
(123, 124, 1, 1, '2021-01-31 21:04:51.722'),
(124, 125, 1, 1, '2021-01-31 21:05:45.039'),
(125, 126, 1, 1, '2021-01-31 21:07:07.576');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `prenom` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `telephone` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `prenom`, `email`, `telephone`) VALUES
(1, 'toto', 'toto', 'toto@gmail.com', '3322'),
(2, 'test', 'test', 'test@gmail.com', '22'),
(3, 'azer', 'azer', 'azer@gmail.com', '22'),
(4, 'fsd', 'sfd', 'moubariki@gmail.com', '00000000000000000'),
(5, 'sdsd', 'sdsdsdsd', 'moubariki@gmail.com', '3456789'),
(6, 'HHN', 'HHP', 'moubariki@gmail.com', '1122'),
(7, 'rr', 'rr', 'moubariki@gmail.com', '123'),
(8, 'D', 'D', 'moubariki@gmail.com', '1256789'),
(9, 'tarik', 'mb', 'moubariki@gmail.com', '12'),
(10, 'tarek', 'moubariki', 'moubariki@gmail.com', '0688888'),
(11, 'zainab', 'khaladi', 'zainab@gmail.com', '067787878'),

-- --------------------------------------------------------

--
-- Structure de la table `vols`
--

CREATE TABLE `vols` (
  `id` int(11) NOT NULL,
  `ville_depart` varchar(60) NOT NULL,
  `ville_darrive` varchar(60) NOT NULL,
  `date_depart` date NOT NULL,
  `date_arrive` date NOT NULL,
  `lheure_depart` varchar(60) NOT NULL,
  `lheure__arrive` varchar(60) NOT NULL,
  `nombre_place_initiall` int(11) NOT NULL,
  `nombre_places` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vols`
--

INSERT INTO `vols` (`id`, `ville_depart`, `ville_darrive`, `date_depart`, `date_arrive`, `lheure_depart`, `lheure__arrive`, `nombre_place_initiall`, `nombre_places`) VALUES
(1, 'maroc', 'canada', '2021-01-29', '2021-02-06', '06:00', '11:00', 20, 20),
(2, 'france', 'america', '2021-02-08', '2021-02-14', '1', '8', 20, 20),
(3, 'maroc', 'italy', '2021-02-02', '2021-02-06', '4', '12', 20, 16);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_vol` (`id_vol`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vols`
--
ALTER TABLE `vols`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT pour la table `vols`
--
ALTER TABLE `vols`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`id_vol`) REFERENCES `vols` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
