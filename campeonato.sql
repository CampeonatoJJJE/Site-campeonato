-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23-Nov-2017 às 10:22
-- Versão do servidor: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `campeonato`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `campeonatos`
--

CREATE TABLE `campeonatos` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(500) NOT NULL,
  `num_times` int(11) NOT NULL,
  `num_rodadas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `campeonatos`
--

INSERT INTO `campeonatos` (`codigo`, `nome`, `num_times`, `num_rodadas`) VALUES
(1, 'q', 12, 12),
(2, 'q', 12, 12),
(3, '1q', 11, 11),
(4, 'entao skate', 8, 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `times`
--

CREATE TABLE `times` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(500) NOT NULL,
  `codigo_campeonato` int(11) NOT NULL,
  `num_jogadores` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `times`
--

INSERT INTO `times` (`codigo`, `nome`, `codigo_campeonato`, `num_jogadores`) VALUES
(2, 'j', 1, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campeonatos`
--
ALTER TABLE `campeonatos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indexes for table `times`
--
ALTER TABLE `times`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `codigo_campeonato` (`codigo_campeonato`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campeonatos`
--
ALTER TABLE `campeonatos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `times`
--
ALTER TABLE `times`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `times`
--
ALTER TABLE `times`
  ADD CONSTRAINT `times_ibfk_1` FOREIGN KEY (`codigo_campeonato`) REFERENCES `campeonatos` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
