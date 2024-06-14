-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : ven. 14 juin 2024 à 17:35
-- Version du serveur : 5.7.39
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cinema`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`id`, `nom`, `prenom`, `photo`) VALUES
(1, 'Brando', 'Marlon', 'https://example.com/photos/brando.jpg'),
(2, 'Depp', 'Johnny', 'https://example.com/photos/depp.jpg'),
(3, 'Winslet', 'Kate', 'https://example.com/photos/winslet.jpg'),
(4, 'Hanks', 'Tom', 'https://example.com/photos/hanks.jpg'),
(5, 'Theron', 'Charlize', 'https://example.com/photos/theron.jpg'),
(6, 'Washington', 'Denzel', 'https://example.com/photos/washington.jpg'),
(7, 'Roberts', 'Julia', 'https://example.com/photos/roberts.jpg'),
(8, 'DiCaprio', 'Leonardo', 'https://example.com/photos/dicaprio.jpg'),
(9, 'Portman', 'Natalie', 'https://example.com/photos/portman.jpg'),
(10, 'Pitt', 'Brad', 'https://example.com/photos/pitt.jpg'),
(11, 'Damon', 'Matt', 'https://example.com/photos/damon.jpg'),
(12, 'Gyllenhaal', 'Jake', 'https://example.com/photos/gyllenhaal.jpg'),
(13, 'Watson', 'Emma', 'https://example.com/photos/watson.jpg'),
(14, 'Lawrence', 'Jennifer', 'https://example.com/photos/lawrence.jpg'),
(15, 'Smith', 'Will', 'https://example.com/photos/smith.jpg'),
(16, 'Johansson', 'Scarlett', 'https://example.com/photos/johansson.jpg'),
(17, 'Bale', 'Christian', 'https://example.com/photos/bale.jpg'),
(18, 'Blanchett', 'Cate', 'https://example.com/photos/blanchett.jpg'),
(19, 'Clooney', 'George', 'https://example.com/photos/clooney.jpg'),
(20, 'Gadot', 'Gal', 'https://example.com/photos/gadot.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `affiche` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id`, `titre`, `description`, `affiche`) VALUES
(1, 'Inception', 'Un voleur qui dérobe des secrets en utilisant la technologie du partage des rêves.', 'https://example.com/posters/inception.jpg'),
(2, 'La La Land', 'Une histoire d\'amour entre une actrice en devenir et un musicien de jazz.', 'https://example.com/posters/lalaland.jpg'),
(3, 'Le Seigneur des Anneaux', 'L\'épopée d\'un jeune hobbit qui doit détruire un anneau magique.', 'https://example.com/posters/lordoftherings.jpg'),
(4, 'Forrest Gump', 'La vie et les aventures extraordinaires d\'un homme simple d\'esprit.', 'https://example.com/posters/forrestgump.jpg'),
(5, 'Interstellar', 'Un groupe d\'astronautes part à la recherche d\'un nouveau foyer pour l\'humanité.', 'https://example.com/posters/interstellar.jpg'),
(6, 'The Dark Knight', 'Batman affronte le Joker, un criminel insaisissable.', 'https://example.com/posters/thedarkknight.jpg'),
(7, 'Titanic', 'L\'histoire d\'amour tragique entre Jack et Rose à bord du Titanic.', 'https://example.com/posters/titanic.jpg'),
(8, 'Avengers: Endgame', 'Les Avengers se réunissent pour affronter Thanos.', 'https://example.com/posters/avengersendgame.jpg'),
(9, 'Le Fabuleux Destin d\'Amélie Poulain', 'Les aventures d\'une jeune femme à Paris qui décide de rendre les gens heureux.', 'https://example.com/posters/ameliepoulain.jpg'),
(10, 'Gladiator', 'Un général romain déchu devient un gladiateur pour se venger.', 'https://example.com/posters/gladiator.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `genre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id`, `genre`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Animation'),
(4, 'Comedy'),
(5, 'Drama'),
(6, 'Fantasy'),
(7, 'Horror'),
(8, 'Musical'),
(9, 'Mystery'),
(10, 'Romance'),
(11, 'Science Fiction'),
(12, 'Thriller'),
(13, 'Western'),
(14, 'Documentary'),
(15, 'Biography'),
(16, 'Historical'),
(17, 'Family'),
(18, 'War'),
(19, 'Sport'),
(20, 'Crime');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acteur`
--
ALTER TABLE `acteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
