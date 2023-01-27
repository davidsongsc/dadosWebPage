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

-- Copiando estrutura para tabela webpage.estoque
CREATE TABLE IF NOT EXISTS `estoque` (
  `produtoID` int DEFAULT NULL,
  `serial` datetime DEFAULT CURRENT_TIMESTAMP,
  `lote` varchar(12) DEFAULT NULL,
  `quantidade` int NOT NULL DEFAULT '0',
  `validade` datetime DEFAULT NULL,
  `obs` text,
  KEY `produtoCatalogo_idx` (`produtoID`),
  KEY `catalogo_cadastro` (`serial`,`lote`),
  CONSTRAINT `produtoCatalogo` FOREIGN KEY (`produtoID`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela webpage.estoque: ~3 rows (aproximadamente)
INSERT INTO `estoque` (`produtoID`, `serial`, `lote`, `quantidade`, `validade`, `obs`) VALUES
	(1, '2023-01-27 13:41:11', 'aguasdc', 10, '2024-01-27 13:41:37', 'amazenar em local com baixa humidade e longe da luz solar.\r\n'),
	(1, '2023-01-27 13:42:24', 'aguasdc', 10, '2024-01-27 13:42:40', 'amazenar em local com baixa humidade e longe da luz solar.'),
	(2, '2023-01-27 13:43:07', 'aguacdc', 10, '2023-01-27 13:46:06', 'amazenar em local com baixa humidade e longe da luz solar.');

-- Copiando estrutura para tabela webpage.produtos
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int NOT NULL,
  `nomeProduto` varchar(20) NOT NULL,
  `nomeFantasia` varchar(23) NOT NULL,
  `descricao` text NOT NULL,
  `promo` varchar(12) DEFAULT NULL,
  `custo` float DEFAULT '0',
  `valor` float DEFAULT '0',
  `imposto` decimal(2,0) DEFAULT '0',
  `taxa` float DEFAULT '0',
  `g_id` varchar(12) NOT NULL,
  `p_bl` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nomeProduto_UNIQUE` (`nomeProduto`),
  UNIQUE KEY `nomeFantasia_UNIQUE` (`nomeFantasia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela webpage.produtos: ~0 rows (aproximadamente)
INSERT INTO `produtos` (`id`, `nomeProduto`, `nomeFantasia`, `descricao`, `promo`, `custo`, `valor`, `imposto`, `taxa`, `g_id`, `p_bl`) VALUES
	(1, 'agua s', 'agua mineral ', 'garrafa de 500ml agua mineral sem gas', NULL, 0, 0, 0, 0, 'bebida', 0),
	(2, 'agua c', 'agua mineral gás', 'garrafa de 500ml de agua mineral gaseificada', NULL, 0, 0, 0, 0, 'bebida', 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
