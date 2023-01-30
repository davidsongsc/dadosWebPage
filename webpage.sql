-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.32 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para webpage
CREATE DATABASE IF NOT EXISTS `webpage` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `webpage`;

-- Copiando estrutura para tabela webpage.produtos
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int NOT NULL,
  `nomeproduto` varchar(20) NOT NULL,
  `nomefantasia` varchar(23) NOT NULL,
  `descricao` text NOT NULL,
  `promo` varchar(12) DEFAULT NULL,
  `custo` float DEFAULT '0',
  `valor` float DEFAULT '0',
  `imposto` decimal(2,0) DEFAULT '0',
  `taxa` float DEFAULT '0',
  `g_id` varchar(12) NOT NULL,
  `p_bl` int DEFAULT '0',
  `img` varchar(23) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nomeProduto_UNIQUE` (`nomeproduto`),
  UNIQUE KEY `nomeFantasia_UNIQUE` (`nomefantasia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela webpage.produtos: ~21 rows (aproximadamente)
INSERT INTO `produtos` (`id`, `nomeproduto`, `nomefantasia`, `descricao`, `promo`, `custo`, `valor`, `imposto`, `taxa`, `g_id`, `p_bl`, `img`) VALUES
	(10, 'agua s ml', 'agua sem gas', 'agua mineral sem gas 500ml', NULL, 0, 4, 2, 0, 'bebidas', 1, 'bebida1'),
	(11, 'agua s lt', 'garrafa d\'agua mineral', 'agua mineral sem gas 1L', NULL, 0, 6, 2, 0, 'bebidas', 0, 'bebida2'),
	(12, 'agua c ml', 'agua com gas', 'agua mineral com gas 500ml', NULL, 0, 4, 2, 0, 'bebidas', 1, 'bebida1'),
	(13, 'agua c lt', 'garrafa d\'agua com gas', 'agua mineral com gas 1L', NULL, 0, 6, 2, 0, 'bebidas', 0, 'bebida2'),
	(20, 'sc laranja', 'suco d\'laranja', 'suco de laranja expremida natural, feito na hora', NULL, 0, 6, 3, 0, 'bebidas', 0, NULL),
	(21, 'sc limao', 'suco d\'limão', 'suco de limão expremida natural, feito na hora', NULL, 0, 6, 3, 0, 'bebidas', 0, NULL),
	(22, 'sc limonada', 'limonada suiça', 'batido com gelo no liquidificador, suco refrescante e natural.', NULL, 0, 6, 3, 0, 'bebidas', 0, NULL),
	(23, 'sc maracuja', 'suco d\'maracuja', 'suco de maracuja coado, batido no liquidificador.', NULL, 0, 6, 3, 0, 'bebidas', 0, NULL),
	(24, 'sc frutas v', 'suco d\'frutas vermelhas', 'suco de morango, framboesa e amora, batido no liquidificador.', NULL, 0, 6, 3, 0, 'bebidas', 0, NULL),
	(25, 'sc abacaxi', 'suco d\'abacaxi', 'batido com gelo no liquidificador, refrescante', NULL, 0, 6, 3, 0, 'bebidas', 0, NULL),
	(26, 'sc abacaxi h', 'suco d\'abacaxi hortelã', 'batido com gelo no liquidificador, refrescante', NULL, 0, 6, 3, 0, 'bebidas', 0, NULL),
	(27, 'sc manga', 'suco d\'manga', 'batido com gelo no liquidificador, refrescante', NULL, 0, 6, 3, 0, 'bebidas', 0, NULL),
	(30, 'sc laranja E', 'suco d\'laranja e', 'suco de laranja expremida natural, feito na hora', NULL, 0, 6, 3, 0, 'bebidas', 0, NULL),
	(31, 'sc limao e', 'suco d\'limão e', 'suco de limão expremida natural, feito na hora', NULL, 0, 6, 3, 0, 'bebidas', 0, NULL),
	(32, 'sc limonada e', 'limonada suiça e', 'batido com gelo no liquidificador, suco refrescante e natural.', NULL, 0, 6, 3, 0, 'bebidas', 0, NULL),
	(33, 'sc maracuja e', 'suco d\'maracuja e', 'suco de maracuja coado, batido no liquidificador.', NULL, 0, 6, 3, 0, 'bebidas', 0, NULL),
	(34, 'sc frutas v e', 'frutas vermelhas e', 'suco de morango, framboesa e amora, batido no liquidificador.', NULL, 0, 6, 3, 0, 'bebidas', 0, NULL),
	(35, 'sc abacaxi e', 'suco d\'abacaxi e', 'batido com gelo no liquidificador, refrescante', NULL, 0, 6, 3, 0, 'bebidas', 0, NULL),
	(36, 'sc abacaxi h e', 'abacaxi hortelã e', 'batido com gelo no liquidificador, refrescante', NULL, 0, 6, 3, 0, 'bebidas', 0, NULL),
	(37, 'sc manga e', 'suco d\'manga e', 'batido com gelo no liquidificador, refrescante', NULL, 0, 6, 3, 0, 'bebidas', 0, NULL),
	(100, 'b burguer x', 'Bull\'s burguer', 'Hamburguer de 200g especial Alcatra, queijo, bacon, alfate, tomate, cebola e picles', NULL, 0, 23.95, 7, 0, 'burguers', 1, 'produto1');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
