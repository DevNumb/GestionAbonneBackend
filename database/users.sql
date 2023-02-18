-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 18 fév. 2023 à 10:59
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `users`
--

-- --------------------------------------------------------

--
-- Structure de la table `conventions`
--

CREATE TABLE `conventions` (
  `id_con` int(100) NOT NULL,
  `Nom_con` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `conventions`
--

INSERT INTO `conventions` (`id_con`, `Nom_con`, `description`) VALUES
(1, 'telecom', 'Tunisie Télécom est le nom commercial de l\'opérateur historique de télécommunications en Tunisie.');

-- --------------------------------------------------------

--
-- Structure de la table `evenements`
--

CREATE TABLE `evenements` (
  `id_event` int(11) NOT NULL,
  `nom_event` varchar(100) NOT NULL,
  `Img` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `evenements`
--

INSERT INTO `evenements` (`id_event`, `nom_event`, `Img`) VALUES
(2, 'ra7la', 'Event/JqU1BhbxMO7B4irjZQjjfkYj0PMYhF7sXm6TccsF.jpg'),
(3, 'Ra7la2', 'Event/QBXEqRHT4jMX5G2rAvODUPFn6NCPEjUDuL5QSkjq.png'),
(4, 'Ra7la 3', 'Event/JyIYorUqVgreie7b751anoS9Bwx2J8Kxvl47T8vA.jpg'),
(5, 'fff', 'Event/gAM68cD6nyAC8PkLnmANd2AUm99gsbZ36RjWsHdg.txt'),
(6, 'sss', 'pdf/8YZVxKx8E4txLhJ8HOQJSHuHekeYgQX81FXgLI9C.txt'),
(7, 'xxcc', 'Event/LkL5BzeNmUQrLPJ9JJh6x8xfLXm2YAyBVMEpVKkV.png'),
(8, 'qxqxw', 'Event/MoE2nWQ0T5RAUzM6OJIZ7d3HROOi9qcauItEinUU.txt'),
(9, 'wxwxxxxxxwee', 'pdf/Event'),
(10, 'xxxc', 'pdf/Event'),
(11, 'scswc', 'pdf/0iCFqSUsKhN3znf5DTBelSMc2JdB0PfUwyWmdfcA.txt'),
(12, 'xxxxxxxxxccccc', 'pdf/pk6EPymdReVdPeJr6WJ72aVR7ruFwyUg7XTQ5PGi.txt'),
(13, 'sxsxsxsxsx', 'pdf/sYa2JldAsfMImYS9SvfoMLJIMNQgBRlPwYy8eV8f.txt'),
(14, 'cxccxxxxxxccxeeee', 'pdf/cxccxxxxxxccxeeee'),
(15, 'xsxcccd', 'pdf/xsxcccd'),
(16, 'sdsds', 'pdf/PWQlLlHDxqrVgDqdSVJjuauoaQHflDHcUAEaH9lu.txt'),
(17, 'cccccc', 'pdf/MxCD9v2xKmvld72A4CxO1estmH65IrUASVmmcUPU.txt'),
(18, 'xsxsxxss', 'pdf/sECpWGtShH5ZQQeaC0iKrM2tj6pVCOY0LMYedOTM.txt'),
(19, 'dsdsdscc', 'pdf/mDlMA7U20D3rSQnPxuHNJt0yT2YfFPjIxBwXbbGn.txt'),
(20, 'wwww', 'pdf/KYIIVzXtGIfmZcL4z1sWtQKdNmg9UzHgdqnkMbAo.txt'),
(21, 'xwwxwxxwx', 'pdf/xwwxwxxwx'),
(22, 'xbxbxcxcxc', 'pdf/Myfile.pdf'),
(23, 'vvvv', 'pdf/Myfile.pdf'),
(24, 'xxxcccc', 'pdf/Myfile.pdf'),
(25, 'ccccccccc', 'pdf/Myfile.pdf'),
(26, 'bbb', 'pdf/Myfile.pdf'),
(27, 'vvvveeeeerrr', 'pdf/file.pdf'),
(28, 'vvvvvbbbnnn', 'pdf/file.pdf'),
(29, 'bbnnttt', 'pdf/bbnnttt.pdf'),
(30, 'nnkkk', 'pdf/nnkkk.pdf'),
(31, 'what?', '0'),
(32, 'ccc', 'pdf/ccc.pdf'),
(33, 'www', 'pdf/www.pdf'),
(34, 'xncncnx', 'pdf/xncncnx.pdf'),
(35, 'hellothere', 'pdf/hellothere.pdf');

-- --------------------------------------------------------

--
-- Structure de la table `historiques`
--

CREATE TABLE `historiques` (
  `id` int(100) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `options` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `historiques`
--

INSERT INTO `historiques` (`id`, `firstname`, `lastname`, `username`, `gender`, `email`, `options`) VALUES
(20, 'sdjkns', 'cswncjl', 'sc<wn;', 'female', 'dscqjldspl', 'admin'),
(103, 'efesn', 'eneen', 'asma', 'Female', 'abenc@gmail.com', NULL),
(110, 'vjvjd²', 'jsjs', 'brrrr', 'Female', 'abenc@gmail.com', 'Admin'),
(116, 'ejejje', 'dddd', 'Abedo', 'Male', 'abc@gmail.com', NULL),
(117, 'zz', 'zz', 'eeer', 'Female', 'abcc@gmail.com', NULL),
(118, 'ejejje', 'dddd', 'cxxcx', 'Male', 'abccvv@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `options` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `gender`, `username`, `email`, `password`, `options`) VALUES
(111, 'ahmed', 'ayari', 'male', 'hamido', 'abenc@gmail.com', '$2y$10$WwyalUiXoPWUyKmOGVAR.u2yoj21XtUckKNnbptyBAr1aPKyWZpJ2', 'Admin'),
(113, 'dsklqn', 'klsds', 'Female', 'dzq,zn', 'abeeenc@gmail.com', '$2y$10$Dem5j9Gkx/IbTc6OPHfuheyLrTtQlbzyLvytoypuskKqcagwfBjpq', 'User'),
(114, 'vjvjd²', 'jsjs', 'Male', 'vvvvv', 'abebeenc@gmail.com', '$2y$10$vTSYTAeZ1Pq5a9kSk3FpdOMgItjDBVSByuhZA76S93fSXBvCWDvqW', 'User'),
(119, 'dzqq', 'ssnw', 'Male', 'www', 'abencbb@gmail.com', '$2y$10$/JDz8Xq6Zmn5gBzZPBe2Tu8.rrExNcGi31Bv6u6z7mDZUXh.Q..WK', NULL),
(121, 'dsqs', 'dsdsqq', 'Female', 'vodo', 'abencb@gmail.com', '$2y$10$fKVdCEh8w.cfgfMHfh6EDu07BJsSXqcw5hHYVu9P5qI8uHuRO1gdS', 'User');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `conventions`
--
ALTER TABLE `conventions`
  ADD PRIMARY KEY (`id_con`);

--
-- Index pour la table `evenements`
--
ALTER TABLE `evenements`
  ADD PRIMARY KEY (`id_event`);

--
-- Index pour la table `historiques`
--
ALTER TABLE `historiques`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `conventions`
--
ALTER TABLE `conventions`
  MODIFY `id_con` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `evenements`
--
ALTER TABLE `evenements`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
