-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 10 mai 2023 à 21:28
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
  `description` varchar(200) NOT NULL,
  `date` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `conventions`
--

INSERT INTO `conventions` (`id_con`, `Nom_con`, `description`, `date`) VALUES
(10, 'Tunisie Telecom (Tunisie Télécom)', 'Tunisie Telecom is the incumbent telecom operator in Tunisia. Tunisie Telecom has more than 6 million subscribers in the fixed and mobile telephony, in Tunisia and abroad	e', NULL),
(18, 'Hassen nahdi', 'bbb', NULL),
(19, 'zz zz', 'vvv', '1999-12-12');

-- --------------------------------------------------------

--
-- Structure de la table `evenements`
--

CREATE TABLE `evenements` (
  `id_event` int(11) NOT NULL,
  `nom_event` varchar(100) NOT NULL,
  `Img` varchar(100) DEFAULT NULL,
  `date_db` varchar(300) DEFAULT NULL,
  `date_df` varchar(300) DEFAULT NULL,
  `Type` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `evenements`
--

INSERT INTO `evenements` (`id_event`, `nom_event`, `Img`, `date_db`, `date_df`, `Type`) VALUES
(2, 'ra7la', 'Event/JqU1BhbxMO7B4irjZQjjfkYj0PMYhF7sXm6TccsF.jpg', NULL, '0', NULL),
(5, 'fff', 'Event/gAM68cD6nyAC8PkLnmANd2AUm99gsbZ36RjWsHdg.txt', NULL, '0', NULL),
(6, 'sss', 'pdf/8YZVxKx8E4txLhJ8HOQJSHuHekeYgQX81FXgLI9C.txt', NULL, '0', NULL),
(7, 'xxcc', 'Event/LkL5BzeNmUQrLPJ9JJh6x8xfLXm2YAyBVMEpVKkV.png', NULL, '0', NULL),
(8, 'qxqxw', 'Event/MoE2nWQ0T5RAUzM6OJIZ7d3HROOi9qcauItEinUU.txt', NULL, '0', NULL),
(9, 'wxwxxxxxxwee', 'pdf/Event', NULL, '0', NULL),
(10, 'xxxc', 'pdf/Event', NULL, '0', NULL),
(11, 'scswc', 'pdf/0iCFqSUsKhN3znf5DTBelSMc2JdB0PfUwyWmdfcA.txt', NULL, '0', NULL),
(12, 'xxxxxxxxxccccc', 'pdf/pk6EPymdReVdPeJr6WJ72aVR7ruFwyUg7XTQ5PGi.txt', NULL, '0', NULL),
(13, 'sxsxsxsxsx', 'pdf/sYa2JldAsfMImYS9SvfoMLJIMNQgBRlPwYy8eV8f.txt', NULL, '0', NULL),
(14, 'cxccxxxxxxccxeeee', 'pdf/cxccxxxxxxccxeeee', NULL, '0', NULL),
(15, 'xsxcccd', 'pdf/xsxcccd', NULL, '0', NULL),
(18, 'xsxsxxss', 'pdf/sECpWGtShH5ZQQeaC0iKrM2tj6pVCOY0LMYedOTM.txt', NULL, '0', NULL),
(19, 'dsdsdscc', 'pdf/mDlMA7U20D3rSQnPxuHNJt0yT2YfFPjIxBwXbbGn.txt', NULL, '0', NULL),
(22, 'xbxbxcxcxc', 'pdf/Myfile.pdf', NULL, '0', NULL),
(23, 'vvvv', 'pdf/Myfile.pdf', NULL, '0', NULL),
(24, 'xxxcccc', 'pdf/Myfile.pdf', NULL, '0', NULL),
(26, 'bbb', 'pdf/Myfile.pdf', NULL, '0', NULL),
(27, 'vvvveeeeerrr', 'pdf/file.pdf', NULL, '0', NULL),
(28, 'vvvvvbbbnnn', 'pdf/file.pdf', NULL, '0', NULL),
(29, 'bbnnttt', 'pdf/bbnnttt.pdf', NULL, '0', NULL),
(38, 'aa', 'pdf/aa.pdf', NULL, '0', NULL),
(70, 'aaa', 'pdf/aaa.pdf', NULL, '0', 'zzz'),
(71, 'ssss', 'pdf/ssss.pdf', NULL, NULL, 'aaaaa'),
(73, 'abcd', 'pdf/abcd.pdf', '2020-03-12', '2021-04-12', 'vvv');

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
(113, 'dsklqn', 'klsds', 'dzq,zn', 'Female', 'abeeenc@gmail.com', 'User'),
(114, 'vjvjd²', 'jsjs', 'vvvvv', 'Male', 'abebeenc@gmail.com', 'User'),
(116, 'ejejje', 'dddd', 'Abedo', 'Male', 'abc@gmail.com', NULL),
(117, 'zz', 'zz', 'eeer', 'Female', 'abcc@gmail.com', NULL),
(118, 'ejejje', 'dddd', 'cxxcx', 'Male', 'abccvv@gmail.com', NULL),
(119, 'dzqq', 'ssnw', 'www', 'Male', 'abencbb@gmail.com', NULL),
(121, 'dsqs', 'dsdsqq', 'vodo', 'Female', 'abencb@gmail.com', 'User'),
(122, 'aaaa', 'dddd', 'aaa', 'Female', 'abeeeccncccc@gmail.com', 'Admin'),
(123, 'dd', 'zzz', 'zzq', 'Male', 'abencv@gmail.com', 'User'),
(124, 'ejejje', 'dddd', 'aaaa', 'Male', 'abenceev@gmail.com', 'User'),
(125, 'Asmaaa', 'ayari', 'boubou', 'Female', 'abencvv@gmail.com', NULL),
(126, 'ejejje', 'dddd', 'bonbon', 'Male', 'abcde@gmail.com', 'Admin'),
(127, 'hdo', 'gg', 'hedo', 'Male', 'abencv@gmail.com', 'User'),
(131, 'azs', 'dsds', '<wxxx', 'Male', 'abeezeenc@gmail.com', 'Admin'),
(132, 'aaaa', 'dddd', 'aaaaa', 'Female', 'abenhhc@gmail.com', NULL),
(135, 'haa', 'zzz', 'www', 'Male', 'aberrrnc@gmail.com', NULL),
(137, 'aaaa', 'dddd', 'nnnzz', 'Male', 'abaerrrnc@gmail.com', NULL),
(138, 'aaaa', 'dddd', 'nnnzzz', 'Male', 'abaerrreenc@gmail.com', NULL),
(139, 'aaaa', 'dddd', 'nnnzzzzz', 'Male', 'abaerrreeeenc@gmail.com', NULL),
(140, 'aaaa', 'dddd', 'nnnzzzzzee', 'Male', 'abaerrrreeeenc@gmail.com', NULL),
(141, 'aaaae', 'ddddrr', 'nnnzzzzzeeee', 'Male', 'abaerrrreaaeeenc@gmail.com', NULL),
(142, 'haa', 'zzz', 'zzzeee', 'Male', 'abedfddnc@gmail.com', 'User'),
(144, 'hhh', 'lll', 'gogo', 'Male', 'rbc@gmail.com', 'User');

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `promotions`
--

CREATE TABLE `promotions` (
  `id_promo` int(11) NOT NULL,
  `nom_promo` varchar(300) NOT NULL,
  `promo_img` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `promotions`
--

INSERT INTO `promotions` (`id_promo`, `nom_promo`, `promo_img`) VALUES
(1, 'aaz', 'Event/aaz.pdf'),
(2, 'aa', 'Event/aa.pdf'),
(3, 'dddd', 'Event/dddd.pdf');

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
(130, 'adz', 'dzaz', 'Male', 'cxw', 'abeeeenc@gmail.com', '$2y$10$arsyON/MCTkdErHLGoIVNusQX5X1zxYRw3xjltnPnZQxEj0.Z/6o6', 'Admin'),
(133, 'Hassen', 'nahdi', 'Male', 'ccccc', 'abc@gmail.com', '$2y$10$k0sGmjNZ0Ii7ZLfTxvB5Ge4CY3a6qCacW77LYBAoqk.6l19APeBYm', 'User'),
(134, 'Hassen', 'nahdi', 'Male', 'HASSEN', 'nahdi.hassene34@gmail.com', '$2y$10$1JBMfCAY4f9T7iFsCHCsQeORbKR.VtE8YuEuQiEU9C9F424dGCDEe', 'Admin'),
(143, 'ggg', 'hhh', 'Male', 'aaa', 'abenerc@gmail.com', '$2y$10$ltpl2qOdmgMu0J.4uQ04dOnGYZvUpXpUh7taRqJmKCAkDu0zyDx46', 'Admin');

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
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id_promo`);

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
  MODIFY `id_con` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `evenements`
--
ALTER TABLE `evenements`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT pour la table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id_promo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
