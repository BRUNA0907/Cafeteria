-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Nov-2020 às 14:57
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projetosoftware`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--


create database projetosoftware;
use projetosoftware;


CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nome_categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nome_categoria`) VALUES
(1, 'coffee'),
(2, 'tea'),
(3, 'chocolate'),
(4, 'sweets'),
(5, 'savory');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `imagem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `preco`, `id_categoria`, `imagem`) VALUES
(7, 'Cappuccino', '3.75', 1, ''),
(8, 'Decaf coffee', '4.00', 1, ''),
(9, 'Macchiato', '3.50', 1, ''),
(12, 'Frappé', '4.55', 1, ''),
(13, 'Mocha', '3.90', 1, ''),
(14, 'Soluble coffee', '2.80', 1, ''),
(15, 'Mint tea', '2.90', 2, ''),
(16, 'Milk tea', '3.50', 2, ''),
(17, 'Chamomile tea', '2.30', 2, ''),
(18, 'Iced tea', '3.15', 2, ''),
(19, 'Hot chocolate', '4.50', 3, ''),
(20, 'Creamy chocolate', '5.00', 3, ''),
(21, 'Carrot cake', '3.50', 4, ''),
(22, 'Banana cake', '5.00', 4, ''),
(23, 'Cheese bread', '2.70', 5, ''),
(24, 'Chicken pie', '4.60', 5, ''),
(25, 'Limon pie', '3.00', 4, ''),
(38, 'Orange cake', '3.45', 4, ''),
(48, 'Black coffee', '2.15', 1, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `senha` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nome`, `telefone`, `email`, `senha`) VALUES
(11, 'Kelly Faria', '11996578435', 'kelly@kelly', '202cb962ac59075b964b07152d234b70'),
(15, 'junior faria', '11960659498', 'junior@faria', '7b7a53e239400a13bd6be6c91c4f6c4e'),
(16, 'Mesa01', '123', 'mesa1@mesa1', '202cb962ac59075b964b07152d234b70'),
(17, 'Mesa 02', '111', 'mesa2@mesa2', 'bcbe3365e6ac95ea2c0343a2395834dd'),
(18, 'Yasmin Prado', '111', 'yasmin@yasmin', '168d3c263aa44687fc3f8e78ad56d869'),
(19, 'mesa4', '4444-4444', 'mesa4@mesa4', 'cbe86202fe8bfc9891cafa4afe94196a');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_prod_cat` (`id_categoria`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `fk_prod_cat` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
