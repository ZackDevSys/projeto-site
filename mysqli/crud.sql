-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/06/2025 às 02:34
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `crud`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome_completo` varchar(110) NOT NULL,
  `email` varchar(110) NOT NULL,
  `telefone` int(11) NOT NULL,
  `genero` varchar(45) NOT NULL,
  `data_nasc` date NOT NULL,
  `cidade` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `endereco` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome_completo`, `email`, `telefone`, `genero`, `data_nasc`, `cidade`, `estado`, `endereco`) VALUES
(1, 'gsdagfedgg', 'hd', 5, 'masculino', '2025-06-07', 'belo', 'mibnas', 'rua ivi'),
(2, 'gdsgdsggsg', 'hrshsrgnvu@gmail.com', 2757524, 'feminino', '2025-06-17', 'bulia', 'ratui', 'rua cio'),
(3, 'gdsgdsggsg', 'hrshsrgnvu@gmail.com', 2757524, 'feminino', '2025-06-17', 'bulia', 'ratui', 'rua cio'),
(4, 'gdsgdsggsg', 'hrshsrgnvu@gmail.com', 2757524, 'feminino', '2025-06-17', 'bulia', 'ratui', 'rua cio'),
(5, 'gdsgdsggsg', 'hrshsrgnvu@gmail.com', 2757524, 'feminino', '2025-06-17', 'bulia', 'ratui', 'rua cio'),
(6, 'jgfjhgjj', 'jgjgnvu@gmail.com', 3545242, 'masculino', '2025-06-03', 'bulia', 'ratui', 'rua cio'),
(7, 'gregory vitor', 'abrakadabraalakazan', 2147483647, 'masculino', '2007-08-14', 'Minas', 'Bh', 'Namora comigo'),
(8, 'Gregory', 'AbraKadabra2000@gmail.com', 2147483647, 'feminino', '2000-08-14', 'Minas Gerais', 'Belo Horizonte', 'Namora Comigo'),
(9, 'jdfhfhh', 'gedageaggfh', 789, 'feminino', '2025-06-01', 'horizonte', 'minas', 'rua ivi');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
