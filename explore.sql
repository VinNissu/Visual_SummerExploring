-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Out-2022 às 14:30
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `explore`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nome` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `senha` varchar(128) NOT NULL,
  `idade` int(3) NOT NULL,
  `estado` varchar(3) NOT NULL,
  `cidade` varchar(32) NOT NULL,
  `destinos` varchar(64) NOT NULL,
  `hospedagem` varchar(32) NOT NULL,
  `mensagem` longtext NOT NULL,
  `dt_cadastro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `nome`, `email`, `sexo`, `telefone`, `senha`, `idade`, `estado`, `cidade`, `destinos`, `hospedagem`, `mensagem`, `dt_cadastro`) VALUES
(1, 'Marco Carneiro', 'marco.carneiro7@gmail.com', 'Masculino', '12981201628', '698dc19d489c4e4db73e28a713eab07b', 59, 'SP', 'São', 'Array', 'Acampar', 'ASDFASDF ASDF SADF  asdf asdf asdf asd flkjsadfkljasdf asdf~kljasdfçlkjsadf asdflkjasdf sdafçlkjasdfçlkjasd asdfçlkasjdf asdf çkljasdfçkljsadf sadflkjsadçflkjasdf sadfçlkjasdflçk sadfçlkjasdfçlkjsadf.', '0000-00-00'),
(2, 'Marco Carneiro', 'marco.carneiro7@gmail.com', 'Masculino', '12981201628', '698dc19d489c4e4db73e28a713eab07b', 59, 'SP', 'São', 'Array', 'Acampar', 'ASDFASDF ASDF SADF  asdf asdf asdf asd flkjsadfkljasdf asdf~kljasdfçlkjsadf asdflkjasdf sdafçlkjasdfçlkjasd asdfçlkasjdf asdf çkljasdfçkljsadf sadflkjsadçflkjasdf sadfçlkjasdflçk sadfçlkjasdfçlkjsadf.', '0000-00-00'),
(3, 'Marco Carneiro', 'marco.carneiro7@gmail.com', 'Masculino', '12981201628', '698dc19d489c4e4db73e28a713eab07b', 59, 'SP', 'São', 'Array', 'Acampar', 'ASDFASDF ASDF SADF  asdf asdf asdf asd flkjsadfkljasdf asdf~kljasdfçlkjsadf asdflkjasdf sdafçlkjasdfçlkjasd asdfçlkasjdf asdf çkljasdfçkljsadf sadflkjsadçflkjasdf sadfçlkjasdflçk sadfçlkjasdfçlkjsadf.', '0000-00-00'),
(4, 'Marco Carneiro', 'marco.carneiro7@gmail.com', 'Masculino', '12981201628', 'd41d8cd98f00b204e9800998ecf8427e', 59, 'AM', 'Caapiranga', 'Array', 'Acampar', 'ASDFASDF ASDF SADF  asdf asdf asdf asd flkjsadfkljasdf asdf~kljasdfçlkjsadf asdflkjasdf sdafçlkjasdfçlkjasd asdfçlkasjdf asdf çkljasdfçkljsadf sadflkjsadçflkjasdf sadfçlkjasdflçk sadfçlkjasdfçlkjsadf.', '2022-10-19'),
(5, 'Marco Carneiro', 'marco.carneiro7@gmail.com', 'Masculino', '12981201628', 'd41d8cd98f00b204e9800998ecf8427e', 59, 'AM', 'Caapiranga', 'Array', 'Acampar', 'ASDFASDF ASDF SADF  asdf asdf asdf asd flkjsadfkljasdf asdf~kljasdfçlkjsadf asdflkjasdf sdafçlkjasdfçlkjasd asdfçlkasjdf asdf çkljasdfçkljsadf sadflkjsadçflkjasdf sadfçlkjasdflçk sadfçlkjasdfçlkjsadf.', '2022-10-19'),
(6, 'Marco Carneiro', 'marco.carneiro7@gmail.com', 'Masculino', '12981201628', '4c29f94d61f96dde64a65202a6de6700', 59, 'BA', 'Salvador', 'Array', 'Acampar', 'dfgsgfd sdfgsdgsdfg', '2022-10-19'),
(7, 'Marco Carneiro', 'marco.carneiro7@gmail.com', 'Masculino', '12981201628', '4c29f94d61f96dde64a65202a6de6700', 59, 'SP', 'São', 'Array', 'Acampar', 'sfg sgsdgsdfgsdfg sdf gsdfgsdfg sdfgsdfgsdfgsdfg', '0000-00-00'),
(8, 'Marco Carneiro', 'marco.carneiro7@gmail.com', 'Masculino', '12981201628', '4c29f94d61f96dde64a65202a6de6700', 59, 'SP', 'São', 'Array', 'Acampar', 'sfg sgsdgsdfgsdfg sdf gsdfgsdfg sdfgsdfgsdfgsdfg', NULL),
(9, 'Marco Carneiro', 'marco.carneiro7@gmail.com', 'Masculino', '12981201628', 'd41d8cd98f00b204e9800998ecf8427e', 59, 'SE', 'Divina', 'Array', 'Acampar', 'sfg sgsdgsdfgsdfg sdf gsdfgsdfg sdfgsdfgsdfgsdfg', '0000-00-00'),
(10, 'Marco Carneiro', 'marco.carneiro7@gmail.com', 'Masculino', '12981201628', 'd41d8cd98f00b204e9800998ecf8427e', 59, 'SE', 'Divina', 'Array', 'Acampar', 'sfg sgsdgsdfgsdfg sdf gsdfgsdfg sdfgsdfgsdfgsdfg', '0000-00-00'),
(11, 'Marco Carneiro', 'marco.carneiro7@gmail.com', 'Masculino', '12981201628', 'd41d8cd98f00b204e9800998ecf8427e', 59, 'SE', 'Divina', 'Array', 'Acampar', 'sfg sgsdgsdfgsdfg sdf gsdfgsdfg sdfgsdfgsdfgsdfg', '0000-00-00'),
(12, 'Marco Carneiro', 'marco.carneiro7@gmail.com', 'Masculino', '12981201628', 'd41d8cd98f00b204e9800998ecf8427e', 59, 'SE', 'Divina', 'Array', 'Acampar', 'sfg sgsdgsdfgsdfg sdf gsdfgsdfg sdfgsdfgsdfgsdfg', '0000-00-00'),
(13, 'Marco Carneiro', 'marco.carneiro7@gmail.com', 'Masculino', '12981201628', '11ea1fe6000b9a7335d59434081b1675', 51, 'MG', 'Almenara', 'Array', 'Acampar', '', '0000-00-00'),
(14, 'José da silva', 'ze@lala.com', 'Masculino', '12981201628', '76528ce8b7fd7a33a5b44bc4492f55f2', 48, 'RJ', 'Campos', 'Array', 'Acampar', 'dfgsdgsdfgsdg', '0000-00-00'),
(15, 'Marco Carneiro', 'marco.carneiro7@gmail.com', 'Masculino', '12981201628', 'bddf04eb458a63cd5a4749361914d4e2', 48, 'ES', 'Alto', 'Array', 'Hotel/Pousada', 'ASDFASFASFD', '0000-00-00'),
(16, 'Marco Carneiro', 'marco.carneiro7@gmail.com', 'Masculino', '12981201628', '69156b896a67c9fd80e5eea9371c58b3', 50, 'ES', 'Cariacica', 'Array', 'Hotel/Pousada', 'dfgsdfgsdf', '0000-00-00'),
(17, 'Marco Carneiro', 'marco.carneiro7@gmail.com', 'Masculino', '12981201628', '9245c7e313af7755e00ce05ea97a38bf', 48, 'PA', 'Bagre', 'Array', 'Hotel/Pousada', 'sfdgsdfgsdg', '0000-00-00'),
(18, 'João Pereira', 'joao-pereira@lala.com', 'Masculino', '964647008', '3cb37e941572b0a58be4bfb4b727c234', 40, 'ES', 'Cariacica', 'Array', 'Hotel/Pousada', 'wrteyerytwernty wrtey ert eryt ertyu erty rety ertyre', '2022-04-10'),
(19, 'Dejair Valdeci Onório', 'dvo@lal.com', 'Masculino', '12981201628', 'bf9c28786374949e3dcbce22bbd496e5', 36, 'AM', 'Canutama', 'Array', 'Hotel/Pousada', 'dfghsdfh s hwhehdfgh sfg hdfhdfh', '0000-00-00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
