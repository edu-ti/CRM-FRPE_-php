-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 14/12/2025 às 16:38
-- Versão do servidor: 11.8.3-MariaDB-log
-- Versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u540193243_licitaweb_db`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `afcs_consignado`
--

CREATE TABLE `afcs_consignado` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `numero_afc` varchar(50) NOT NULL,
  `detalhes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `qtd_solicitada` int(11) DEFAULT 0,
  `valor_total` decimal(15,2) DEFAULT 0.00,
  `detalhes_kit` text DEFAULT NULL,
  `observacao` text DEFAULT NULL,
  `qtd_entregue` int(11) DEFAULT 0,
  `detalhes_entregue` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `afcs_consignado`
--

INSERT INTO `afcs_consignado` (`id`, `item_id`, `numero_afc`, `detalhes`, `created_at`, `qtd_solicitada`, `valor_total`, `detalhes_kit`, `observacao`, `qtd_entregue`, `detalhes_entregue`) VALUES
(1, 74, '25/2025', NULL, '2025-12-10 23:11:07', 10, 44891.00, '{\"oxigenador\":\"10\",\"bomba\":\"10\",\"hemoconcentrador\":\"10\",\"tubos\":\"10\",\"cardioplegia\":\"10\"}', '', 0, '{\"oxigenador\":\"0\",\"bomba\":\"0\",\"hemoconcentrador\":\"0\",\"tubos\":\"0\",\"cardioplegia\":\"0\"}'),
(5, 74, '4564', NULL, '2025-12-12 14:41:38', 4, 179564.00, '{\"oxigenador\":\"4\",\"bomba\":\"4\",\"hemoconcentrador\":\"4\",\"tubos\":\"4\",\"cardioplegia\":\"4\"}', '', 0, NULL),
(6, 74, '456', NULL, '2025-12-12 14:43:38', 1, 44891.00, '{\"oxigenador\":\"1\",\"bomba\":\"1\",\"hemoconcentrador\":\"1\",\"tubos\":\"1\",\"cardioplegia\":\"1\"}', '', 0, NULL),
(7, 74, '1', NULL, '2025-12-12 14:44:15', 1, 44891.00, '{\"oxigenador\":\"1\",\"bomba\":\"1\",\"hemoconcentrador\":\"1\",\"tubos\":\"1\",\"cardioplegia\":\"1\"}', '', 0, NULL),
(8, 74, '2', NULL, '2025-12-12 14:49:36', 2, 89782.00, '{\"oxigenador\":\"2\",\"bomba\":\"2\",\"hemoconcentrador\":\"2\",\"tubos\":\"2\",\"cardioplegia\":\"2\"}', '', 0, NULL),
(9, 74, '4', NULL, '2025-12-12 14:56:28', 1, 44891.00, '{\"oxigenador\":\"1\",\"bomba\":\"1\",\"hemoconcentrador\":\"1\",\"tubos\":\"1\",\"cardioplegia\":\"1\"}', '', 1, '{\"oxigenador\":\"1\",\"bomba\":\"1\",\"hemoconcentrador\":\"1\",\"tubos\":\"1\",\"cardioplegia\":\"1\"}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `anexos_pregao`
--

CREATE TABLE `anexos_pregao` (
  `id` int(11) NOT NULL,
  `pregao_id` int(11) NOT NULL,
  `nome_original` varchar(255) NOT NULL,
  `descricao_anexo` varchar(255) DEFAULT NULL,
  `nome_arquivo` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `anexos_pregao`
--

INSERT INTO `anexos_pregao` (`id`, `pregao_id`, `nome_original`, `descricao_anexo`, `nome_arquivo`, `created_at`) VALUES
(7, 28, 'Edital Pregao Eletronico HC UFPE EBSERH 90017.2025.pdf', 'EDITAL', 'pregao_28_68b83455d3d061.47326618.pdf', '2025-09-03 12:28:05'),
(8, 29, 'Edital Pregao Eletronico HC UFPE EBSERH 90043.2025.pdf', 'edital', 'pregao_29_68b86fd572f9c8.87050446.pdf', '2025-09-03 16:41:57'),
(9, 30, 'Edital - PE n 94.264-2024.pdf', 'Edital', 'pregao_30_690252f24b91e3.31628538.pdf', '2025-10-29 17:46:26'),
(10, 36, 'edital.pdf', 'edital.pdf', 'pregao_36_6914ed15f1d9c2.18734825.pdf', '2025-11-12 20:24:53');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cis_consignado`
--

CREATE TABLE `cis_consignado` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `numero_ci` varchar(50) NOT NULL,
  `detalhes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `numero_empenho` varchar(50) DEFAULT NULL,
  `qtd_solicitada` int(11) DEFAULT 0,
  `valor_total` decimal(15,2) DEFAULT 0.00,
  `detalhes_produtos` text DEFAULT NULL,
  `observacao` text DEFAULT NULL,
  `pedido_numero` varchar(50) DEFAULT NULL,
  `nota_fiscal_numero` varchar(50) DEFAULT NULL,
  `numero_pedido` varchar(50) DEFAULT NULL,
  `numero_nota_fiscal` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cis_consignado`
--

INSERT INTO `cis_consignado` (`id`, `item_id`, `numero_ci`, `detalhes`, `created_at`, `numero_empenho`, `qtd_solicitada`, `valor_total`, `detalhes_produtos`, `observacao`, `pedido_numero`, `nota_fiscal_numero`, `numero_pedido`, `numero_nota_fiscal`) VALUES
(1, 74, '32121', NULL, '2025-12-12 00:54:54', 'EDQWEQWE', 5, 224455.00, NULL, '', NULL, NULL, NULL, NULL),
(3, 74, '32145', NULL, '2025-12-12 14:09:57', 'NE20253212', 5, 224455.00, '[{\"id\":33,\"pregao_id\":0,\"fornecedor_id\":0,\"numero_lote\":null,\"referencia\":\"50300700\",\"lote_fabricacao\":null,\"lote\":\"\",\"produto\":\"BOMBA CENTRIFUGA REV PHISIO\",\"created_at\":\"2025-12-12 14:03:13\"},{\"id\":31,\"pregao_id\":0,\"fornecedor_id\":0,\"numero_lote\":null,\"referencia\":\"ALC520\",\"lote_fabricacao\":null,\"lote\":\"\",\"produto\":\"CONJUNTO DE TUBOS ADULTO S/FA CAVA DUPLA E BLISTER\",\"created_at\":\"2025-12-12 14:02:39\"},{\"id\":25,\"pregao_id\":0,\"fornecedor_id\":0,\"numero_lote\":null,\"referencia\":\"ALC900\",\"lote_fabricacao\":null,\"lote\":\"\",\"produto\":\"HEMOCONCENTRADOR ADULTO\",\"created_at\":\"2025-12-12 14:00:58\"},{\"id\":20,\"pregao_id\":0,\"fornecedor_id\":0,\"numero_lote\":null,\"referencia\":\"ALC400\",\"lote_fabricacao\":null,\"lote\":\"\",\"produto\":\"KIT CANULA ADULTO\",\"created_at\":\"2025-12-12 13:59:29\"},{\"id\":14,\"pregao_id\":0,\"fornecedor_id\":0,\"numero_lote\":null,\"referencia\":\"50716\",\"lote_fabricacao\":null,\"lote\":\"\",\"produto\":\"OXIGENADOR MEMB. ADULTO 8F\",\"created_at\":\"2025-12-12 13:58:04\"},{\"id\":2,\"pregao_id\":0,\"fornecedor_id\":0,\"numero_lote\":null,\"referencia\":\"ALC830\",\"lote_fabricacao\":null,\"lote\":\"\",\"produto\":\"SISTEMA DE CARDIOPLEGIA CRISTALOIDE ADULTO C/BOLSA\",\"created_at\":\"2025-12-12 13:53:15\"}]', '', NULL, NULL, NULL, NULL),
(4, 74, '7894', NULL, '2025-12-12 14:28:14', 'NE2025123', 2, 89782.00, '[{\"id\":32,\"pregao_id\":0,\"fornecedor_id\":0,\"numero_lote\":null,\"referencia\":\"ED2986\",\"lote_fabricacao\":null,\"lote\":\"\",\"produto\":\"CONJUNTO DE TUBOS ADULTO C/FA CAVA DUPLA\",\"created_at\":\"2025-12-12 14:02:54\",\"lote_manual\":\"451744\"}]', '', NULL, NULL, NULL, NULL),
(6, 75, '321-1', NULL, '2025-12-12 18:08:11', '', 1, 98218.00, '[{\"id\":30,\"pregao_id\":0,\"fornecedor_id\":0,\"numero_lote\":null,\"referencia\":\"ALC555\",\"lote_fabricacao\":null,\"lote\":\"\",\"produto\":\"CONJUNTO DE TUBOS ADULTO S/FA CAVA DUPLA E BLISTER-S5\",\"created_at\":\"2025-12-12 14:02:21\",\"lote_manual\":\"\"}]', '', NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `consignados`
--

CREATE TABLE `consignados` (
  `id` int(11) NOT NULL,
  `pregao_id` int(11) NOT NULL,
  `numero_contrato` varchar(50) NOT NULL,
  `created_by_user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `consignados`
--

INSERT INTO `consignados` (`id`, `pregao_id`, `numero_contrato`, `created_by_user_id`, `created_at`) VALUES
(2, 36, '32132', 6, '2025-12-09 17:38:58');

-- --------------------------------------------------------

--
-- Estrutura para tabela `consignado_afc`
--

CREATE TABLE `consignado_afc` (
  `id` int(11) NOT NULL,
  `consignado_produto_id` int(11) NOT NULL,
  `afc_numero` varchar(50) DEFAULT NULL,
  `afc_data` date DEFAULT NULL,
  `qtd_solicitada` int(11) DEFAULT 0,
  `qtd_entregue` int(11) DEFAULT 0,
  `valor_unitario` decimal(10,2) DEFAULT 0.00,
  `kit_entregue_adulto` int(11) DEFAULT 0,
  `kit_entregue_infantil` int(11) DEFAULT 0,
  `kit_entregue_neonatal` int(11) DEFAULT 0,
  `kit_entregue_pediatrico` int(11) DEFAULT 0,
  `kit_entregue_cardioplegia` int(11) DEFAULT 0,
  `observacao` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `consignado_afcs`
--

CREATE TABLE `consignado_afcs` (
  `id` int(11) NOT NULL,
  `consignado_id` int(11) NOT NULL,
  `afc_numero` varchar(50) DEFAULT NULL,
  `qtd_solicitada` int(11) DEFAULT 0,
  `qtd_entregue` int(11) DEFAULT 0,
  `valor_unitario` decimal(10,2) DEFAULT 0.00,
  `valor_total` decimal(10,2) DEFAULT 0.00,
  `entregue_oxigenador` int(11) DEFAULT 0,
  `entregue_hemoconcentrador` int(11) DEFAULT 0,
  `entregue_cardioplegia` int(11) DEFAULT 0,
  `status` varchar(20) DEFAULT 'Pendente',
  `observacao` text DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `consignado_ci`
--

CREATE TABLE `consignado_ci` (
  `id` int(11) NOT NULL,
  `consignado_produto_id` int(11) NOT NULL,
  `ci_numero` varchar(50) DEFAULT NULL,
  `ci_data` date DEFAULT NULL,
  `ci_qtd` int(11) DEFAULT 0,
  `observacao` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `consignado_produtos`
--

CREATE TABLE `consignado_produtos` (
  `id` int(11) NOT NULL,
  `consignado_id` int(11) NOT NULL,
  `produto_nome` varchar(255) NOT NULL,
  `quantidade_total` int(11) DEFAULT 0,
  `qtd_entregue` int(11) DEFAULT 0,
  `saldo_restante` int(11) DEFAULT 0,
  `valor_unitario` decimal(10,2) DEFAULT 0.00,
  `valor_total` decimal(15,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `email_queue`
--

CREATE TABLE `email_queue` (
  `id` int(11) NOT NULL,
  `recipient_email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` enum('pending','sent','failed') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `sent_at` timestamp NULL DEFAULT NULL,
  `attempts` tinyint(4) NOT NULL DEFAULT 0,
  `error_message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `email_queue`
--

INSERT INTO `email_queue` (`id`, `recipient_email`, `subject`, `body`, `status`, `created_at`, `sent_at`, `attempts`, `error_message`) VALUES
(144, 'licitacao@frpe.com.br', '[LicitaFR] Novo Pregão: 94264/2024', '\r\n                <html><body>\r\n                <p>Olá, Eduardo Cabral!</p>\r\n                <p>Novo pregão cadastrado: 94264/2024.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=30\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 17:45:41', '2025-10-30 15:00:06', 0, NULL),
(145, 'eduardo@grupocabral.net.br', '[LicitaFR] Novo Pregão: 94264/2024', '\r\n                <html><body>\r\n                <p>Olá, Eduardo Cabral!</p>\r\n                <p>Novo pregão cadastrado: 94264/2024.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=30\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 17:45:41', '2025-10-30 15:00:26', 0, NULL),
(146, 'frpe@frpe.com', '[LicitaFR] Novo Pregão: 94264/2024', '\r\n                <html><body>\r\n                <p>Olá, FR PRODUTOS MEDICOS!</p>\r\n                <p>Novo pregão cadastrado: 94264/2024.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=30\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 17:45:41', '2025-10-30 15:00:37', 0, NULL),
(147, 'licitacao@frpe.com.br', '[LicitaFR] Pregão Atualizado: 90017/2025', '\r\n                <html><body>\r\n                <p>Olá, Eduardo Cabral!</p>\r\n                <p>O pregão 90017/2025 foi atualizado.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=28\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 17:57:24', '2025-10-30 15:00:48', 0, NULL),
(148, 'eduardo@grupocabral.net.br', '[LicitaFR] Pregão Atualizado: 90017/2025', '\r\n                <html><body>\r\n                <p>Olá, Eduardo Cabral!</p>\r\n                <p>O pregão 90017/2025 foi atualizado.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=28\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 17:57:24', '2025-10-30 15:00:58', 0, NULL),
(149, 'frpe@frpe.com', '[LicitaFR] Pregão Atualizado: 90017/2025', '\r\n                <html><body>\r\n                <p>Olá, FR PRODUTOS MEDICOS!</p>\r\n                <p>O pregão 90017/2025 foi atualizado.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=28\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 17:57:24', '2025-10-30 15:02:05', 0, NULL),
(150, 'licitacao@frpe.com.br', '[LicitaFR] Novo Pregão: 00028/2025', '\r\n                <html><body>\r\n                <p>Olá, Eduardo Cabral!</p>\r\n                <p>Novo pregão cadastrado: 00028/2025.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=31\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 19:38:08', '2025-10-30 15:02:16', 0, NULL),
(151, 'eduardo@grupocabral.net.br', '[LicitaFR] Novo Pregão: 00028/2025', '\r\n                <html><body>\r\n                <p>Olá, Eduardo Cabral!</p>\r\n                <p>Novo pregão cadastrado: 00028/2025.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=31\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 19:38:08', '2025-10-30 15:02:27', 0, NULL),
(152, 'frpe@frpe.com', '[LicitaFR] Novo Pregão: 00028/2025', '\r\n                <html><body>\r\n                <p>Olá, FR PRODUTOS MEDICOS!</p>\r\n                <p>Novo pregão cadastrado: 00028/2025.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=31\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 19:38:08', '2025-10-30 15:02:38', 0, NULL),
(153, 'licitacao@frpe.com.br', '[LicitaFR] Novo Pregão: 90015/2025', '\r\n                <html><body>\r\n                <p>Olá, Eduardo Cabral!</p>\r\n                <p>Novo pregão cadastrado: 90015/2025.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=32\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 19:51:05', '2025-10-30 15:02:49', 0, NULL),
(154, 'eduardo@grupocabral.net.br', '[LicitaFR] Novo Pregão: 90015/2025', '\r\n                <html><body>\r\n                <p>Olá, Eduardo Cabral!</p>\r\n                <p>Novo pregão cadastrado: 90015/2025.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=32\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 19:51:05', '2025-10-30 15:04:05', 0, NULL),
(155, 'frpe@frpe.com', '[LicitaFR] Novo Pregão: 90015/2025', '\r\n                <html><body>\r\n                <p>Olá, FR PRODUTOS MEDICOS!</p>\r\n                <p>Novo pregão cadastrado: 90015/2025.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=32\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 19:51:05', '2025-10-30 15:04:16', 0, NULL),
(156, 'licitacao@frpe.com.br', '[LicitaFR] Pregão Atualizado: 90015/2025', '\r\n                <html><body>\r\n                <p>Olá, Eduardo Cabral!</p>\r\n                <p>O pregão 90015/2025 foi atualizado.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=32\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 20:00:57', '2025-10-30 15:04:27', 0, NULL),
(157, 'eduardo@grupocabral.net.br', '[LicitaFR] Pregão Atualizado: 90015/2025', '\r\n                <html><body>\r\n                <p>Olá, Eduardo Cabral!</p>\r\n                <p>O pregão 90015/2025 foi atualizado.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=32\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 20:00:57', '2025-10-30 15:04:37', 0, NULL),
(158, 'frpe@frpe.com', '[LicitaFR] Pregão Atualizado: 90015/2025', '\r\n                <html><body>\r\n                <p>Olá, FR PRODUTOS MEDICOS!</p>\r\n                <p>O pregão 90015/2025 foi atualizado.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=32\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 20:00:57', '2025-10-30 15:04:48', 0, NULL),
(159, 'licitacao@frpe.com.br', '[LicitaFR] Novo Pregão: 90046/2025', '\r\n                <html><body>\r\n                <p>Olá, Eduardo Cabral!</p>\r\n                <p>Novo pregão cadastrado: 90046/2025.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=33\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 20:07:26', '2025-10-30 15:06:05', 0, NULL),
(160, 'eduardo@grupocabral.net.br', '[LicitaFR] Novo Pregão: 90046/2025', '\r\n                <html><body>\r\n                <p>Olá, Eduardo Cabral!</p>\r\n                <p>Novo pregão cadastrado: 90046/2025.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=33\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 20:07:26', '2025-10-30 15:06:16', 0, NULL),
(161, 'frpe@frpe.com', '[LicitaFR] Novo Pregão: 90046/2025', '\r\n                <html><body>\r\n                <p>Olá, FR PRODUTOS MEDICOS!</p>\r\n                <p>Novo pregão cadastrado: 90046/2025.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=33\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 20:07:26', '2025-10-30 15:06:27', 0, NULL),
(162, 'licitacao@frpe.com.br', '[LicitaFR] Novo Pregão: 0124.2025', '\r\n                <html><body>\r\n                <p>Olá, Eduardo Cabral!</p>\r\n                <p>Novo pregão cadastrado: 0124.2025.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=34\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 20:30:39', '2025-10-30 15:06:38', 0, NULL),
(163, 'eduardo@grupocabral.net.br', '[LicitaFR] Novo Pregão: 0124.2025', '\r\n                <html><body>\r\n                <p>Olá, Eduardo Cabral!</p>\r\n                <p>Novo pregão cadastrado: 0124.2025.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=34\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 20:30:39', '2025-10-30 15:06:48', 0, NULL),
(164, 'frpe@frpe.com', '[LicitaFR] Novo Pregão: 0124.2025', '\r\n                <html><body>\r\n                <p>Olá, FR PRODUTOS MEDICOS!</p>\r\n                <p>Novo pregão cadastrado: 0124.2025.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=34\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 20:30:39', '2025-10-30 15:08:05', 0, NULL),
(165, 'licitacao@frpe.com.br', '[LicitaFR] Pregão Atualizado: 0124.2025', '\r\n                <html><body>\r\n                <p>Olá, Eduardo Cabral!</p>\r\n                <p>O pregão 0124.2025 foi atualizado.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=34\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 20:36:58', '2025-10-30 15:08:16', 0, NULL),
(166, 'eduardo@grupocabral.net.br', '[LicitaFR] Pregão Atualizado: 0124.2025', '\r\n                <html><body>\r\n                <p>Olá, Eduardo Cabral!</p>\r\n                <p>O pregão 0124.2025 foi atualizado.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=34\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 20:36:58', '2025-10-30 15:08:27', 0, NULL),
(167, 'frpe@frpe.com', '[LicitaFR] Pregão Atualizado: 0124.2025', '\r\n                <html><body>\r\n                <p>Olá, FR PRODUTOS MEDICOS!</p>\r\n                <p>O pregão 0124.2025 foi atualizado.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=34\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 20:36:58', '2025-10-30 15:08:38', 0, NULL),
(168, 'licitacao@frpe.com.br', '[LicitaFR] Novo Pregão: 90267/2025', '\r\n                <html><body>\r\n                <p>Olá, Eduardo Cabral!</p>\r\n                <p>Novo pregão cadastrado: 90267/2025.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=35\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 20:44:06', '2025-10-30 15:08:49', 0, NULL),
(169, 'eduardo@grupocabral.net.br', '[LicitaFR] Novo Pregão: 90267/2025', '\r\n                <html><body>\r\n                <p>Olá, Eduardo Cabral!</p>\r\n                <p>Novo pregão cadastrado: 90267/2025.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=35\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 20:44:06', '2025-10-30 15:10:06', 0, NULL),
(170, 'frpe@frpe.com', '[LicitaFR] Novo Pregão: 90267/2025', '\r\n                <html><body>\r\n                <p>Olá, FR PRODUTOS MEDICOS!</p>\r\n                <p>Novo pregão cadastrado: 90267/2025.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=35\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-10-29 20:44:06', '2025-10-30 15:10:16', 0, NULL),
(171, 'licitacao@frpe.com.br', '[LicitaFR] Novo Pregão: 0141/2025', '\r\n                <html><body>\r\n                <p>Olá, Eduardo Cabral!</p>\r\n                <p>Novo pregão cadastrado: 0141/2025.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=36\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-11-12 20:18:50', '2025-11-12 20:20:08', 0, NULL),
(172, 'eduardo@grupocabral.net.br', '[LicitaFR] Novo Pregão: 0141/2025', '\r\n                <html><body>\r\n                <p>Olá, Eduardo Cabral!</p>\r\n                <p>Novo pregão cadastrado: 0141/2025.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=36\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-11-12 20:18:50', '2025-11-12 20:20:19', 0, NULL),
(173, 'frpe@frpe.com', '[LicitaFR] Novo Pregão: 0141/2025', '\r\n                <html><body>\r\n                <p>Olá, FR PRODUTOS MEDICOS!</p>\r\n                <p>Novo pregão cadastrado: 0141/2025.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=36\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-11-12 20:18:50', '2025-11-12 20:20:30', 0, NULL),
(174, 'licitacao@frpe.com.br', '[LicitaFR] Novo Pregão: 4585.2025.CCD.DL.0746.HR', '\r\n                <html><body>\r\n                <p>Olá, Eduardo Cabral!</p>\r\n                <p>Novo pregão cadastrado: 4585.2025.CCD.DL.0746.HR.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=37\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-11-12 20:21:10', '2025-11-12 20:22:05', 0, NULL),
(175, 'eduardo@grupocabral.net.br', '[LicitaFR] Novo Pregão: 4585.2025.CCD.DL.0746.HR', '\r\n                <html><body>\r\n                <p>Olá, Eduardo Cabral!</p>\r\n                <p>Novo pregão cadastrado: 4585.2025.CCD.DL.0746.HR.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=37\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-11-12 20:21:10', '2025-11-12 20:22:16', 0, NULL),
(176, 'frpe@frpe.com', '[LicitaFR] Novo Pregão: 4585.2025.CCD.DL.0746.HR', '\r\n                <html><body>\r\n                <p>Olá, FR PRODUTOS MEDICOS!</p>\r\n                <p>Novo pregão cadastrado: 4585.2025.CCD.DL.0746.HR.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=37\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-11-12 20:21:10', '2025-11-12 20:22:27', 0, NULL),
(177, 'licitacao@frpe.com.br', '[LicitaFR] Novo Pregão: 90040/2025', '\r\n                <html><body>\r\n                <p>Olá, Eduardo Cabral!</p>\r\n                <p>Novo pregão cadastrado: 90040/2025.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=38\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-11-12 20:23:02', '2025-11-12 20:24:06', 0, NULL),
(178, 'eduardo@grupocabral.net.br', '[LicitaFR] Novo Pregão: 90040/2025', '\r\n                <html><body>\r\n                <p>Olá, Eduardo Cabral!</p>\r\n                <p>Novo pregão cadastrado: 90040/2025.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=38\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-11-12 20:23:02', '2025-11-12 20:24:17', 0, NULL),
(179, 'frpe@frpe.com', '[LicitaFR] Novo Pregão: 90040/2025', '\r\n                <html><body>\r\n                <p>Olá, FR PRODUTOS MEDICOS!</p>\r\n                <p>Novo pregão cadastrado: 90040/2025.</p>\r\n                <p>Você pode ver mais detalhes acessando o link abaixo:</p>\r\n                <p><a href=\'http://frpe.app.br/pregao_detalhes.php?id=38\'>Ver Detalhes do Pregão</a></p>\r\n                <br><p>Atenciosamente,<br>Equipe Licitação FR</p>\r\n                </body></html>', 'sent', '2025-11-12 20:23:02', '2025-11-12 20:24:28', 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `me_epp` varchar(3) NOT NULL DEFAULT 'Nao',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id`, `nome`, `cnpj`, `estado`, `me_epp`, `created_at`) VALUES
(8, 'F&R PRODUTOS MEDICOS', '09.005.588/0001-40', 'PE', 'Nao', '2025-09-03 11:45:31'),
(9, 'INSTRAMED INDUSTRIA MEDICO HISPITALAR LTDA', '90.909.631/0002-00', 'SC', 'Nao', '2025-09-03 11:46:41'),
(10, 'Tecme do Brasil Comércio e Importação Ltda', '31.829.598/0002-30', 'SP', 'Nao', '2025-09-03 11:48:18'),
(11, 'LEISTUNG EQUIPAMENTOS LTDA', '04.187.384/0001-54', 'SC', 'Nao', '2025-09-03 11:52:34'),
(12, 'POULP SERVIÇOS MÉDICOS HOSPITALARES E COMERCIO LTDA', '45.010.427/0001-09', 'PE', 'Sim', '2025-09-03 12:08:05'),
(13, 'M. CARREGA COMERCIO DE PRODUTOS HOSPITALARES LTDA', '32.593.430/0001-50', 'PR', 'Sim', '2025-09-03 12:10:52'),
(14, 'AMB DISTRIBUIDORA DE MEDICAMENTO E MATERIAIS HOSPITALARES LTDA', '37.885.137/0001-80', 'PR', 'Sim', '2025-09-03 12:11:20'),
(15, 'FOCCUS DISTRIBUIDORA DE EQUIPAMENTOS LTDA', '40.618.304/0001-31', 'GO', 'Sim', '2025-09-03 12:11:40'),
(16, 'JPL IMPORTACAO, EXPORTACAO E COMERCIO DE EQUIPAMENTOS MEDICOS HOSPITALARES LTD', '36.371.827/0001-59', 'SP', 'Nao', '2025-09-03 12:12:02'),
(17, 'NORDESTE MEDICAL, REPRESENTACAO, IMPORTACAO E EXPORTACAO DE PRODUTOS HOSPITALAR', '20.782.880/0001-02', 'PE', 'Nao', '2025-09-03 12:12:21'),
(18, 'PRIOM TECNOLOGIA EM EQUIPAMENTOS LTDA', '11.619.992/0001-56', 'SP', 'Nao', '2025-09-03 12:12:38'),
(19, 'PESENTI & PELAIS LTDA', '02.776.642/0001-02', 'PR', 'Sim', '2025-09-03 12:13:06'),
(20, 'MAGNAMED TECNOLOGIA MEDICA S/A', '01.298.443/0002-54', 'SP', 'Nao', '2025-09-03 12:13:26'),
(21, 'NIHON KOHDEN BRASIL IMPORTACAO, EXPORTACAO E COMERCIO DE EQUIPAMENTOS MEDICOS LT', '14.365.637/0001-96', 'SP', 'Nao', '2025-09-03 12:13:47'),
(22, 'RTS RIO S/A', '04.050.750/0001-29', 'RJ', 'Nao', '2025-09-03 12:14:02'),
(23, 'KDN COMERCIO ATACADISTA LTDA', '39.346.590/0001-44', 'PR', 'Sim', '2025-09-03 12:14:20'),
(24, 'SAFE SUPORTE A VIDA E COMERCIO INTERNACIONAL LTDA', '08.675.394/0001-90', 'PE', 'Nao', '2025-09-03 12:14:36'),
(25, 'GETINGE DO BRASIL EQUIPAMENTOS MEDICOS LTDA.', '06.028.137/0002-11', 'SP', 'Nao', '2025-09-03 12:14:56'),
(26, 'DRAGER DO BRASIL LTDA', '61.185.922/0001-05', 'SP', 'Nao', '2025-09-03 12:15:11'),
(27, 'PRIMECARE COMERCIO DE MEDICAMENTOS E MATERIAIS HOSPITALARES LTDA', '32.481.041/0001-33', 'AM', 'Nao', '2025-09-03 12:15:32'),
(28, 'EIXO DISTRIBUICOES LTDA', '56.961.912/0001-84', 'DF', 'Sim', '2025-09-03 12:15:51'),
(29, 'ZOLTAN MEDICAL LTDA', '36.241.914/0001-91', 'SP', 'Sim', '2025-09-03 12:16:09'),
(30, 'BRAILE BIOMEDICA INDUSTRIA COMERCIO E REPRESENTACOES LTDA', '52.828.936/0001-09', 'SP', 'Nao', '2025-09-03 12:16:23'),
(31, 'LABCOR LABORATORIOS LTDA', '19.336.924/0001-91', 'MG', 'Nao', '2025-09-03 12:16:38'),
(32, 'EQUIMED EQUIPAMENTOS MEDICOS HOSPITALARES LTDA', '38.408.899/0001-59', 'PR', 'Sim', '2025-09-03 12:17:09'),
(33, 'POTENGY COMERCIO E REPRESENTACAO DE PRODUTOS HOSPITALARES LTDA', '07.395.985/0001-40', 'PB', 'Nao', '2025-09-03 12:17:45'),
(34, 'NIPRO MEDICAL CORPORATION PRODUTOS MEDICOS LTDA', '13.333.090/0001-84', 'SP', 'Nao', '2025-09-03 12:18:00'),
(35, 'EDWARDS LIFESCIENCES COMERCIO DE PRODUTOS MEDICO-CIRURGICOS LTDA', '05.944.604/0005-33', 'SP', 'Nao', '2025-09-03 12:18:28'),
(36, 'RESMEDICAL EQUIPAMENTOS HOSPITALARES LTDA', '13.272.584/0001-04', 'PE', 'Nao', '2025-09-03 12:18:44'),
(37, 'LivaNova Brasil Comércio e Distribuição de Equipamentos Médico-Hospitalares Ltda.', '45.489.614/0001-17', 'SP', 'Nao', '2025-10-29 17:48:43');

-- --------------------------------------------------------

--
-- Estrutura para tabela `historico_movimentacoes`
--

CREATE TABLE `historico_movimentacoes` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `modulo` varchar(100) NOT NULL,
  `acao` varchar(100) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `itens_pregoes`
--

CREATE TABLE `itens_pregoes` (
  `id` int(11) NOT NULL,
  `pregao_id` int(11) NOT NULL,
  `fornecedor_id` int(11) NOT NULL,
  `numero_lote` varchar(50) DEFAULT NULL COMMENT 'Número ou nome do lote',
  `numero_item` varchar(50) DEFAULT NULL,
  `descricao` text NOT NULL,
  `fabricante` varchar(255) DEFAULT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  `quantidade` int(11) NOT NULL,
  `valor_unitario` decimal(10,2) NOT NULL DEFAULT 0.00,
  `status_item` varchar(50) DEFAULT 'Classificada',
  `status` text DEFAULT NULL,
  `status_motivo` text DEFAULT NULL,
  `atualizacao_status` text DEFAULT NULL,
  `codigo_catmat` varchar(50) DEFAULT NULL,
  `qtd_entregue` int(11) DEFAULT 0,
  `saldo_hospital` int(11) DEFAULT 0,
  `qtd_faturada` int(11) DEFAULT 0,
  `cons_a_faturar` int(11) DEFAULT 0,
  `observacao_item` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `itens_pregoes`
--

INSERT INTO `itens_pregoes` (`id`, `pregao_id`, `fornecedor_id`, `numero_lote`, `numero_item`, `descricao`, `fabricante`, `modelo`, `quantidade`, `valor_unitario`, `status_item`, `status`, `status_motivo`, `atualizacao_status`, `codigo_catmat`, `qtd_entregue`, `saldo_hospital`, `qtd_faturada`, `cons_a_faturar`, `observacao_item`) VALUES
(30, 28, 20, NULL, '5', 'Ventilador artificial eletrônico', 'Magnamed', 'Fleximag M,ax 500', 24, 91400.00, 'Desclassificada', NULL, 'O equipamento ofertado pela empresa MAGNAMED, Proposta e Habilitação MAGNAMED, não atende aos requisitos de edital para o item 5;', NULL, NULL, 0, 0, 0, 0, NULL),
(31, 28, 10, NULL, '5', 'Ventilador artificial eletrônico', 'TECME', 'VENTILADOR PULMONAR GRAPHNET TS+', 24, 91465.00, 'Classificada', NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(32, 29, 33, NULL, '1', 'Conjunto circulação extracorpórea e Bomba centrífuga sanguínea', 'Braile', 'Conjunto para CEC Adulto Braile', 120, 4260.00, 'Aceita', NULL, 'proposta aceita aguardando julgamento e analise final', NULL, NULL, 0, 0, 0, 0, NULL),
(33, 29, 8, NULL, '1', 'Conjunto circulação extracorpórea e Bomba centrífuga sanguínea', 'LIVANOVA', 'SORIN', 120, 5015.00, 'Classificada', NULL, 'SEGUNDO COLOCADO NESSE ITEM', NULL, NULL, 0, 0, 0, 0, NULL),
(34, 29, 8, NULL, '33', 'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA', 'LIVANOVA', 'CÂNULA VENOSA', 5, 513.03, 'Aceita', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(35, 29, 8, NULL, '40', 'CÂNULA, material silicone, tipo VENTILAÇÃO', 'LIVANOVA', 'CÂNULA, VENTILAÇÃO', 30, 520.00, 'Aceita', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(36, 29, 8, NULL, '60', 'KIT AUTOTRANSFUSÃO ADULTO', 'LIVANOVA', 'KIT AUTOTRANSFUSÃO ADULTO', 15, 2849.51, 'Aceita', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(37, 29, 8, NULL, '61', 'KIT AUTOTRANSFUSÃO ADULTO', 'LIVANOVA', 'KIT AUTOTRANSFUSÃO ADULTO', 15, 2849.51, 'Aceita', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(38, 29, 8, NULL, '70', 'SENSOR CONTÍNUO', 'MASIMO', 'LIDCO', 65, 2200.00, 'Aceita', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(39, 29, 12, NULL, '77', 'SENSOR CONTÍNUO', 'MASIMO', 'LIDCO', 7, 3050.00, 'Homologado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(40, 30, 8, NULL, '1', 'Conjunto Circulação Extracorpórea Tipo Uso: Tamanho Adulto, Esterilidade: Estéril, Componentes: Tubos De Cec, Aplicação: Longa Duração, Outros Componentes: Bomba Volume Inferior 35ml, Perfusão Mínima 300ml', 'LivaNova', 'CEC', 240, 4515.00, 'Classificada', NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(41, 30, 8, NULL, '2', 'Conjunto Circulação Extracorpórea Tipo Uso: Tamanho Adulto, Componentes: Oxigenador De Membrana (1,8m²) P/Troca Gasosa, Aplicação: Reservatório Cardiotomia E Cardioplegia Sanguineos, Outros Componentes: Hemoconcentrador, Linha Arterial 105 Micra, Características Adicionais: Descartável E Estéril', 'LivaNova', 'CEC', 240, 4750.00, 'Classificada', NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(42, 30, 8, NULL, '3', 'Conjunto Circulação Extracorpórea Tipo Uso: Tamanho Adulto, Componentes: Oxigenador De Membrana (2,02m²)P/Troca Gasosa, Aplicação: Reservatório Cardiotomia E Cardioplegia Sanguineos, Outros Componentes: Hemoconcentrador, Linha Arterial 105 Micra, Características Adicionais: Descartável E Estéril', 'LivaNova', 'CEC', 240, 3710.24, 'Classificada', NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(43, 28, 11, NULL, '5', 'Ventilador Artificial Eletrônico Modelo: Neonatal/Pediátrico/Adulto, Modos Ventilação: Vcv, Simv, Cpap, A/C, Vni, Bilevel, Parâmetros Ventilatórios: Parâmetros Vc, Fr, Fio2, Peep, Características Adicionais 01: Bateria Interna, Características Adicionais 02: Tela Monitorização Gráfica, Alarmes: Alarmes Audiovisuais, Circuitos: Com Circuitos E Filtros', 'LEISTUNG', 'LUFT5 - Reg. nº 80203470015', 24, 52000.00, 'Aceita', NULL, 'O equipamento ofertado pela empresa LEISTUNG, Proposta e Habilitação atende aos requisitos de edital para o item 5.', NULL, NULL, 0, 0, 0, 0, NULL),
(44, 28, 19, NULL, '5', 'Ventilador Artificial Eletrônico Modelo: Neonatal/Pediátrico/Adulto, Modos Ventilação: Vcv, Simv, Cpap, A/C, Vni, Bilevel, Parâmetros Ventilatórios: Parâmetros Vc, Fr, Fio2, Peep, Características Adicionais 01: Bateria Interna, Características Adicionais 02: Tela Monitorização Gráfica, Alarmes: Alarmes Audiovisuais, Circuitos: Com Circuitos E Filtros	', 'LEISTUNG', 'LUFT5 ', 24, 88000.00, 'Desclassificada', NULL, 'Não atende aos critérios técnicos exigidos em edital conforme relatado via chat\r\n', NULL, NULL, 0, 0, 0, 0, NULL),
(45, 31, 12, NULL, '23', 'PÁ ADESIVA ADULTA PARA DESFIBRILADOR EXTERNO AUTOMÁTICO DEA, MARCA: INSTRAMED–MODELO: ION ', 'INSTRAMED', 'ION', 12, 723.57, 'Homologado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(46, 31, 12, NULL, '24', 'PÁ ADESIVA INFANTIL PARA DESFIBRILADOR EXTERNO AUTOMÁTICO DEA, MARCA: INSTRAMED–MODELO: ION ', 'INSTRAMED', 'ION', 12, 723.57, 'Homologado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(47, 32, 12, NULL, '1', 'Desfibrilador externo automático portátil, conforme especificado no Termo de Referência.', 'INSTRAMED', 'DEA - i.on LCD', 1, 10799.00, 'Homologado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(48, 33, 8, NULL, '3', 'KIT AUTOTRANSFUSÃO ADULTO PARA PROCEDIMENTOS DE RECUPERAÇÃO SANGUÍNEA INTRAOPERATÓRIA, COMPOSTO NO MÍNIMO POR: BOLSA PARA TRANSFERÊNCIA COM CAPACIDADE 1.000 ML; BOLSA DE DESCARTE DE 10 LITROS, RESERVATÓRIO PARA COLETA COM CAPACIDADE MÍNIMA 3.000 ML COM FILTRO DE 40 μM A 120 μM, RECIPIENTE DE CENTRIFUGAÇÃO DE 55 ML (USO PEDIÁTRICO), 125 ML, 175 ML E 225 ML (ADULTO), CONECTORES, LINHAS DE SUCÇÕES E TRANSFERÊNCIA. ESTÉRIL, USO ÚNICO. EMBALAGEM INDIVIDUAL EM MATERIAL QUE PROMOVA BARREIRA MICROBIANA E ABERTURA ASSÉPTICA, CONTENDO IDENTIFICAÇÃO DO PRODUTO, VALIDADE, LOTE DE FÁCIL VISUALIZAÇÃO E REGISTRO NO MS/ANVISA. APRS: UNIDADE. A EMPRESA DEVERÁ FORNECER EM COMODATO 01 EQUIPAMENTO DE AUTOTRANSFUSÃO PARA UTILIZAÇÃO DOS KITS.', 'LIVANOVA', 'XTRA', 30, 3300.75, 'Adjudicado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(49, 33, 8, NULL, '4', 'KIT PARA MÁQUINA DE CIRCULAÇÃO EXTRACORPÓREA PARA CIRURGIA CARDÍACA (ADULTO). COMPOSTO POR: OXIGENADOR DE MEMBRANA PARA CEC COM IMPREGNAÇÃO DE BIOMOLÉCULAS COM ÁREA EFETIVA DE, NO MÍNIMO, 2,0 M² PARA TROCA GASOSA, COM CONJUNTO DE TUBOS PARA CIRCULAÇÃO EXTRACORPÓREA; RESERVATÓRIO DE CARDIOTOMIA; RESERVATÓRIO DE CARDIOPLEGIA SANGUÍNEO COM TUBOS; LINHA DE OXIGÊNIO COM FILTRO BACTERIOLÓGICO; FILTRO PARA CARDIOPLEGIA E FILTRO DE LINHA ARTERIAL; FILTRO DE RECIRCULAÇÃO DO PERFUSATO; KIT CÂNULAS; HEMOCONCENTRADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO, ESTÉRIL, DESCARTÁVEL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NA ANVISA/MS. A EMPRESA DEVERÁ FORNECER EM COMODATO 01 EQUIPAMENTO PARA CIRCULAÇÃO EXTRACORPÓREA.', 'LIVANOVA', 'CEC', 60, 3799.00, 'Adjudicado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(50, 33, 8, NULL, '5', 'CÂNULA ARTERIAL, PARA CIRCULAÇÃO EXTRACORPÓREA, 16FR, COMPRIMENTO MAIOR QUE 20 CM, RETA ALONGADA, ARAMADA, COM FLANGE, CONFECCIONADA EM POLIURETANO OU PVC COM KIT DE INSERÇÃO E CONECTOR 1/4. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA.', 'NIPRO', 'CÂNULA ARTERIAL', 45, 587.56, 'Adjudicado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(51, 33, 8, NULL, '6', 'CÂNULA ARTERIAL, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRES 18 A 24 FR, RETA, ARAMADA, ADULTO, COMPRIMENTO CERCA DE 23 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, FLEXÍVEL, COM PONTA DISTAL CÔNICA, MARCADOR DE PROFUNDIDADE E ANEL DE SUTURA RADIOPACO, E ENCAIXE PARA LUER LOCK, ACOMPANHADA DE INTRODUTOR PLÁSTICO DE PONTA CÔNICA. O INTRODUTOR DEVE INTEGRAR UMA ENTRADA DE FIO GUIA; ADAPTÁVEL A CONECTOR DE 3/8 POLEGADAS. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA. APRS: UNIDADE OPME OPM EM ASSISTÊNCIA CARDIOVASCULAR 36', 'LIVANOVA', 'CÂNULA ARTERIAL', 45, 490.00, 'Adjudicado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(52, 33, 8, NULL, '7', 'CÂNULA ARTERIAL AÓRTICA, PARA CIRCULAÇÃO EXTRACORPÓREA, 18 FR, CURVA 45° GRAUS, ADULTO, SEM FURO LATERAL, COM FLANGE OU STOP, ARAMADA, CONFECCIONADA EM POLIURETANO OU PVC. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA APRS: UNIDADE', 'LIVANOVA', 'CÂNULA ARTERIAL', 45, 600.65, 'Adjudicado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(53, 33, 8, NULL, '8', 'CÂNULA ARTERIAL AÓRTICA, PARA CIRCULAÇÃO EXTRACORPÓREA, 21 FR, CURVA 45° GRAUS, COMPRIMENTO CERCA DE 37,6 CM. ADULTO, SEM FURO LATERAL, COM FLANGE OU STOP, ARAMADA, CONFECCIONADA EM POLIURETANO OU PVC, CONECTOR 3/8 POLEGADAS. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA. APRS: UNIDADE OPME OPM EM ASSISTÊNCIA CARDIOVASCULAR 36', 'LIVANOVA', 'CÂNULA ARTERIAL', 45, 570.00, 'Adjudicado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(54, 33, 8, NULL, '9', 'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 26 FR, ARAMADA, RETA, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NOO', 'LIVANOVA', 'CÂNULA VENOSA', 15, 591.56, 'Adjudicado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(55, 33, 8, NULL, '10', 'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 28 FR, ARAMADA, RETA, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA.', 'LIVANOVA', 'CÂNULA VENOSA', 40, 476.25, 'Adjudicado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(56, 33, 8, NULL, '11', 'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 30 FR, ARAMADA, RETA, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA.', 'NIPRO', 'CÂNULA VENOSA', 40, 430.00, 'Adjudicado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(57, 33, 8, NULL, '12', 'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 32 FR, ARAMADA, RETA, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA.', 'LIVANOVA', 'CÂNULA VENOSA', 40, 471.97, 'Adjudicado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(58, 33, 8, NULL, '13', 'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 34 FR, ARAMADA, RETA, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA.', 'LIVANOVA', 'CÂNULA VENOSA', 30, 480.45, 'Adjudicado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(59, 33, 8, NULL, '14', 'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 36 FR, ARAMADA, RETA, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ANVISA.', 'LIVANOVA', 'CÂNULA VENOSA', 30, 582.50, 'Adjudicado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(60, 33, 8, NULL, '15', 'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 24 FR, ARAMADA, CURVA 90 GRAUS, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA. APRS: UNIDADE.', 'LIVANOVA', 'CÂNULA VENOSA', 10, 514.11, 'Adjudicado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(61, 33, 8, NULL, '16', 'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 28FR, ARAMADA, CURVA 90 GRAUS, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA. APRS: UNIDADE', 'LIVANOVA', 'CÂNULA VENOSA', 30, 580.76, 'Adjudicado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(62, 33, 8, NULL, '17', 'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 31 FR, ARAMADA, CURVA 90 GRAUS, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA. APRS: UNIDADE', 'LIVANOVA', 'CÂNULA VENOSA', 30, 459.00, 'Adjudicado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(63, 33, 8, NULL, '18', 'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 34 FR, ARAMADA, PONTA 90 GRAUS, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 40 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO; ADAPTÁVEL PARA CONECTOR DE 3/8 POLEGADAS. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA.', 'NIPRO', 'CÂNULA VENOSA', 30, 600.00, 'Adjudicado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(64, 33, 8, NULL, '19', 'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 36 FR, ARAMADA, CURVA 90 GRAUS, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 40 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADA, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA.', 'LIVANOVA', 'CÂNULA VENOSA', 15, 600.00, 'Adjudicado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(65, 33, 8, NULL, '20', 'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 28/36 FR, ARAMADA, RETA, ADULTO, DUPLO ESTÁGIO, COMPRIMENTO CERCA DE 40 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO; ADAPTÁVEL A CONECTOR DE 1/2 POLEGADA, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA.', 'NIPRO', 'CÂNULA VENOSA', 30, 486.67, 'Adjudicado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(66, 33, 8, NULL, '21', 'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 29/29 FR, ARAMADA, RETA, DUPLO ESTÁGIO, COMPRIMENTO CERCA DE 40 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO; ADAPTÁVEL A CONECTOR DE 3/8 POLEGADAS. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA. APRS: UNIDADE', 'NIPRO', 'CÂNULA VENOSA', 20, 546.63, 'Adjudicado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(67, 34, 8, NULL, '1', 'SERVIÇO DE LOCACAO DE EQUIPAMENTOS MEDICO HOSPITALARES EM GERAL – DO TIPO DE DEBITO CARDIACO CONTINUO, COM TECNOLOGIA MINIMAMENTE INVASIVA E NÃO INVASIVA, MONITORIZACAO ATRAVES DA LINHA ARTERIAL RADIAL, UTILIZANDO QUALQUER CATETER ARTERIAL, SEM A NECESSIDADE DE ALTERACAO DO TRANSDUTOR DE PRESSAO, MEDIDNO OS PARAMETROS DE DEBITO CARDIACO (DC), INDICE CARDIACO (IC), VOLUME SISTOLICO (VS), VOLUME SISTOLICO INDEXADO (VSI), VARIACAO DE VOLUME SISTOLICO (VVS), RESISTENCIA VASCULAR SISTEMICA (RVS), TELA COLORIDA TOUCHSCREEN, DE NO MINIMO 15 POLEGADAS, BATERIA INTERNA RECARREGAVEL COM CAPACIDADE DE ATE 3 HORAS, ACOMPANHA TODOS OS ACESSORIOS NECESSARIOS AO COMPLETO FUNCIONAMENTO DO EQUIPAMENTO, COM MANUTENCAO CORRETIVA, PREVENTIVA E REPOSICAO DE PECAS.', 'MASIMO', 'LIDCO', 12, 13566.62, 'Classificada', NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(68, 35, 8, NULL, '1', 'Conjunto Circulação Extracorpórea Material: Pvc Cristal, Esterilidade: Atóxica, Apirogênica, Estéril, Componentes: 2 Linhas Venosas 3/8\", 1 Linha Arterial 3/8\", Outros Componentes: 1 Linha Máquina 3/8\", Linha Recirculação, Características Adicionais: Filtro Bacteriológico 0,5micra, Aspiradores', 'LIVANOVA', 'CEC', 108, 4003.60, 'Homologado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(69, 35, 8, NULL, '2', 'Conjunto Circulação Extracorpórea Material: Polietileno, Tipo Uso: Perfusão Intraperitoneal, Componentes: Tubos P/ Cec, Aplicação: Trocador De Calor, Outros Componentes: Reservatório, Características Adicionais: Descartável E Estéril', 'LIVANOVA', 'CEC', 128, 2983.90, 'Homologado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(70, 35, 8, NULL, '3', 'Hemoconcentrador Material: Poliacrilonitrila, Aplicação: P/ Circulação Extra-Corpórea, Tamanho: Adulto, Características Adicionais: Membrana 1,1m²,Priming 70ml,Pressão 500mmhg, Tipo Uso: Descartável E Estéril, Tipo Filtro: 20MICRA', 'LIVANOVA', 'CEC', 8, 3678.50, 'Homologado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(71, 35, 12, NULL, '4', 'Conjunto Circulação Extracorpórea Material: Pvc Cristal, Esterilidade: Atóxica, Apirogênica, Estéril, Componentes: 2 Linhas Venosas 3/8\", 1 Linha Arterial 3/8\", Outros Componentes: 1 Linha Máquina 3/8\", Linha Recirculação, Características Adicionais: Filtro Bacteriológico 0,5micra, Aspiradores', 'LIVANOVA', 'CEC', 36, 4003.67, 'Homologado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(72, 35, 12, NULL, '5', 'Conjunto Circulação Extracorpórea Material: Polietileno, Tipo Uso: Perfusão Intraperitoneal, Componentes: Tubos P/ Cec, Aplicação: Trocador De Calor, Outros Componentes: Reservatório, Características Adicionais: Descartável E Estéril', 'LIVANOVA', 'CEC', 42, 2983.96, 'Homologado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(73, 35, 12, NULL, '6', 'Hemoconcentrador Material: Poliacrilonitrila, Aplicação: P/ Circulação Extra-Corpórea, Tamanho: Adulto, Características Adicionais: Membrana 1,1m²,Priming 70ml,Pressão 500mmhg, Tipo Uso: Descartável E Estéril, Tipo Filtro: 20MICRA', 'LIVANOVA', 'CEC', 2, 3678.70, 'Homologado', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(74, 36, 8, 'LOTE 01', '01', 'CONJUNTO DE CIRCULACAO EXTRACORPOREA - ADULTO, COMPOSTO DE OXIGENADOR MEMBRANA COM AREA EFETIVA DE 2,2 +/-0,2 M2,PARA TROCA GASOSA,COM RESERVATORIO DE CARDIOTOMIA INTEGRADO,1 CONJUNTO DE TUBOS CAVA UNICA OU DUPLA,1 FILTRO ARTERIAL,1 HEMOCONCENTRADOR,1 RESERVATORIO DE CARDIOPLEGIA (CRISTALOIDE OU SANGUINEA)', 'LIVANOVA', 'CEC', 297, 4489.10, 'Classificada', NULL, '', NULL, '123321', 28, 0, 0, 0, ''),
(75, 36, 8, 'LOTE 01', '2', 'BOMBA CENTRIFUGA - CONJUNTO DESCARTAVEL PARA CIRCULACAO ASSISTIDA(BOMBA CENTRIFUGA),EM POLICARBONATO, ROTOR ESTABILIZADO MAGNETICAMENTE, ESTERILIZADO EM OXIDO DE ETILENO, EMBALADO INDIVIDUALMENTE,TODOS OS EQUIPAMENTOS PRODUZIDOS COM MATERIAIS BIOCOMPATIVEIS E APIROGENICOS COM VALIDADE DE ESTERILIZACAO MINIMA DE 12 MESES, TRAZENDO EXATAMENTE OS DADOS DE IDENTIFICACAO E SUA PROCEDENCIA E DATA DE ESTERILIZACAO, VENCIMENTO, NºLOTE E REGISTRO NO MINISTERIO DA SAUDE', 'LIVANOVA', 'CEC', 297, 982.18, 'Em Negociação', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(76, 36, 8, 'LOTE 02', '1', 'CONJUNTO DE CIRCULACAO EXTRACORPOREA - ADULTO, COMPOSTO DE 1 OXIGENADOR MEMBRANA COM AREA EFETIVA DE 2,5 +/-0,5M2,PARA TROCA GASOSA,COM RESERVATORIO DE CARDIOTOMIA E FILTRO ARTERIAL INTEGRADO,1 CONJUNTO DE TUBOS CAVA UNICA OU DUPLA,1 HEMOCONCENTRADOR,1 RESERVATORIO DE CARDIOPLEGIA (CRISTALOIDE OU SANGUINEA),.', 'LIVANOVA', 'CEC', 297, 4489.10, 'Classificada', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(77, 36, 8, 'LOTE 01', '3', 'SISTEMA DE OXIGENADOR MEMBRANA ADULTO - MEMBRANA COM AREA EFETIVA DE 2,2 +/-0,2 M2,PARA TROCA GASOSA,COM RESERVATORIO DE CARDIOTOMIA INTEGRADO.', 'LIVANOVA', 'CEC', 15, 2962.86, 'Classificada', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(78, 36, 8, 'LOTE 02', '2', 'BOMBA CENTRIFUGA - CONJUNTO DESCARTAVEL PARA CIRCULACAO ASSISTIDA(BOMBA CENTRIFUGA),EM POLICARBONATO, ROTOR ESTABILIZADO MAGNETICAMENTE, ESTERILIZADO EM OXIDO DE ETILENO, EMBALADO INDIVIDUALMENTE,TODOS OS EQUIPAMENTOS PRODUZIDOS COM MATERIAIS BIOCOMPATIVEIS E APIROGENICOS COM VALIDADE DE ESTERILIZACAO MINIMA DE 12 MESES, TRAZENDO EXATAMENTE OS DADOS DE IDENTIFICACAO E SUA PROCEDENCIA E DATA DE ESTERILIZACAO, VENCIMENTO, NºLOTE E REGISTRO NO MINISTERIO DA SAUDE', 'LIVANOVA', 'CEC', 297, 982.18, 'Classificada', NULL, '', NULL, NULL, 0, 0, 0, 0, NULL),
(79, 36, 8, 'LOTE 02', '3', 'SISTEMA DE OXIGENADOR MEMBRANA ADULTO - MEMBRANA COM AREA EFETIVA DE 2,5 +/-0,5 M2,PARA TROCA GASOSA,COM RESERVATORIO DE CARDIOTOMIA E FILTRO ARTERIAL INTEGRADO', 'LIVANOVA', 'CEC', 15, 2962.86, 'Classificada', NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `logs_atividades`
--

CREATE TABLE `logs_atividades` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `tabela` varchar(50) NOT NULL,
  `acao` varchar(20) NOT NULL,
  `registro_id` int(11) DEFAULT NULL,
  `detalhes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `logs_atividades`
--

INSERT INTO `logs_atividades` (`id`, `usuario_id`, `tabela`, `acao`, `registro_id`, `detalhes`, `created_at`) VALUES
(126, 6, 'pregoes', 'CADASTRO', 28, 'Pregão 90017/2025 foi cadastrado.', '2025-09-03 12:26:47'),
(127, 6, 'itens_pregoes', 'ADICIONAR ITEM', 28, 'Item \'Ventilador artificial eletrônico\' foi adicionado.', '2025-09-03 12:31:16'),
(128, 6, 'itens_pregoes', 'EDITAR ITEM', 28, 'Item \'Ventilador artificial eletrônico\' (ID: 29) foi atualizado.', '2025-09-03 13:10:19'),
(129, 6, 'itens_pregoes', 'EDITAR ITEM', 28, 'Item \'Ventilador artificial eletrônico\' (ID: 29) foi atualizado.', '2025-09-03 13:10:31'),
(130, 6, 'itens_pregoes', 'EDITAR ITEM', 28, 'Item \'Ventilador artificial eletrônico\' (ID: 29) foi atualizado.', '2025-09-03 13:13:05'),
(131, 6, 'itens_pregoes', 'ADICIONAR ITEM', 28, 'Item \'Ventilador artificial eletrônico\' foi adicionado.', '2025-09-03 13:20:00'),
(132, 6, 'itens_pregoes', 'EDITAR ITEM', 28, 'Item \'Ventilador artificial eletrônico\' (ID: 29) foi atualizado.', '2025-09-03 13:20:32'),
(133, 6, 'itens_pregoes', 'EDITAR ITEM', 28, 'Item \'Ventilador artificial eletrônico\' (ID: 30) foi atualizado.', '2025-09-03 13:21:05'),
(134, 6, 'itens_pregoes', 'ADICIONAR ITEM', 28, 'Item \'Ventilador artificial eletrônico\' foi adicionado.', '2025-09-03 13:22:18'),
(135, 6, 'autenticacao', 'LOGIN', NULL, 'Login realizado com sucesso', '2025-09-03 16:37:17'),
(136, 6, 'pregoes', 'CADASTRO', 29, 'Pregão 90043/2025 foi cadastrado.', '2025-09-03 16:40:22'),
(137, 6, 'itens_pregoes', 'ADICIONAR ITEM', 29, 'Item \'Conjunto circulação extracorpórea e Bomba centrífuga sanguínea\' foi adicionado.', '2025-09-03 16:46:18'),
(138, 6, 'itens_pregoes', 'ADICIONAR ITEM', 29, 'Item \'Conjunto circulação extracorpórea e Bomba centrífuga sanguínea\' foi adicionado.', '2025-09-03 16:48:56'),
(139, 6, 'itens_pregoes', 'EDITAR ITEM', 29, 'Item \'Conjunto circulação extracorpórea e Bomba centrífuga sanguínea\' (ID: 32) foi atualizado.', '2025-09-03 16:50:01'),
(140, 6, 'itens_pregoes', 'ADICIONAR ITEM', 29, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA\' foi adicionado.', '2025-09-03 16:56:21'),
(141, 6, 'itens_pregoes', 'EDITAR ITEM', 29, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA\' (ID: 34) foi atualizado.', '2025-09-03 16:56:47'),
(142, 6, 'itens_pregoes', 'ADICIONAR ITEM', 29, 'Item \'CÂNULA, material silicone, tipo VENTILAÇÃO\' foi adicionado.', '2025-09-03 16:57:50'),
(143, 6, 'itens_pregoes', 'EDITAR ITEM', 29, 'Item \'CÂNULA, material silicone, tipo VENTILAÇÃO\' (ID: 35) foi atualizado.', '2025-09-03 16:57:57'),
(144, 6, 'itens_pregoes', 'ADICIONAR ITEM', 29, 'Item \'KIT AUTOTRANSFUSÃO ADULTO\' foi adicionado.', '2025-09-03 16:59:10'),
(145, 6, 'itens_pregoes', 'EDITAR ITEM', 29, 'Item \'KIT AUTOTRANSFUSÃO ADULTO\' (ID: 36) foi atualizado.', '2025-09-03 16:59:19'),
(146, 6, 'itens_pregoes', 'ADICIONAR ITEM', 29, 'Item \'KIT AUTOTRANSFUSÃO ADULTO\' foi adicionado.', '2025-09-03 17:00:57'),
(147, 6, 'itens_pregoes', 'EDITAR ITEM', 29, 'Item \'KIT AUTOTRANSFUSÃO ADULTO\' (ID: 37) foi atualizado.', '2025-09-03 17:01:03'),
(148, 6, 'itens_pregoes', 'ADICIONAR ITEM', 29, 'Item \'SENSOR CONTÍNUO\' foi adicionado.', '2025-09-03 17:02:17'),
(149, 6, 'itens_pregoes', 'EDITAR ITEM', 29, 'Item \'SENSOR CONTÍNUO\' (ID: 38) foi atualizado.', '2025-09-03 17:02:24'),
(150, 6, 'itens_pregoes', 'ADICIONAR ITEM', 29, 'Item \'SENSOR CONTÍNUO\' foi adicionado.', '2025-09-03 17:06:43'),
(151, 6, 'itens_pregoes', 'EDITAR ITEM', 29, 'Item \'SENSOR CONTÍNUO\' (ID: 39) foi atualizado.', '2025-09-03 17:07:11'),
(152, 6, 'itens_pregoes', 'EDITAR ITEM', 29, 'Item \'Conjunto circulação extracorpórea e Bomba centrífuga sanguínea\' (ID: 33) foi atualizado.', '2025-09-03 18:22:18'),
(153, 16, 'autenticacao', 'LOGIN', NULL, 'Login realizado com sucesso', '2025-09-03 19:19:58'),
(154, 6, 'autenticacao', 'LOGIN', NULL, 'Login realizado com sucesso', '2025-09-09 20:45:56'),
(155, 6, 'autenticacao', 'LOGIN', NULL, 'Login realizado com sucesso', '2025-09-15 20:38:26'),
(156, 6, 'autenticacao', 'LOGIN', NULL, 'Login realizado com sucesso', '2025-09-23 17:21:53'),
(157, 6, 'autenticacao', 'LOGIN', NULL, 'Login realizado com sucesso', '2025-09-23 20:39:35'),
(158, 6, 'autenticacao', 'LOGIN', NULL, 'Login realizado com sucesso', '2025-09-24 00:01:38'),
(159, 6, 'pregoes', 'CADASTRO', 30, 'Pregão 94264/2024 foi cadastrado.', '2025-10-29 17:45:41'),
(160, 6, 'itens_pregoes', 'ADICIONAR ITEM', 30, 'Item \'Conjunto Circulação Extracorpórea Tipo Uso: Tamanho Adulto, Esterilidade: Estéril, Componentes: Tubos De Cec, Aplicação: Longa Duração, Outros Componentes: Bomba Volume Inferior 35ml, Perfusão Mínima 300ml\' foi adicionado.', '2025-10-29 17:51:39'),
(161, 6, 'itens_pregoes', 'ADICIONAR ITEM', 30, 'Item \'Conjunto Circulação Extracorpórea Tipo Uso: Tamanho Adulto, Componentes: Oxigenador De Membrana (1,8m²) P/Troca Gasosa, Aplicação: Reservatório Cardiotomia E Cardioplegia Sanguineos, Outros Componentes: Hemoconcentrador, Linha Arterial 105 Micra, Características Adicionais: Descartável E Estéril\' foi adicionado.', '2025-10-29 17:53:14'),
(162, 6, 'itens_pregoes', 'ADICIONAR ITEM', 30, 'Item \'Conjunto Circulação Extracorpórea Tipo Uso: Tamanho Adulto, Componentes: Oxigenador De Membrana (2,02m²)P/Troca Gasosa, Aplicação: Reservatório Cardiotomia E Cardioplegia Sanguineos, Outros Componentes: Hemoconcentrador, Linha Arterial 105 Micra, Características Adicionais: Descartável E Estéril\' foi adicionado.', '2025-10-29 17:54:01'),
(163, 6, 'itens_pregoes', 'EDITAR ITEM', 28, 'Item \'Ventilador artificial eletrônico\' (ID: 30) foi atualizado.', '2025-10-29 18:02:52'),
(164, 6, 'itens_pregoes', 'ADICIONAR ITEM', 28, 'Item \'Ventilador Artificial Eletrônico Modelo: Neonatal/Pediátrico/Adulto, Modos Ventilação: Vcv, Simv, Cpap, A/C, Vni, Bilevel, Parâmetros Ventilatórios: Parâmetros Vc, Fr, Fio2, Peep, Características Adicionais 01: Bateria Interna, Características Adicionais 02: Tela Monitorização Gráfica, Alarmes: Alarmes Audiovisuais, Circuitos: Com Circuitos E Filtros\' foi adicionado.', '2025-10-29 18:05:28'),
(165, 6, 'itens_pregoes', 'EDITAR ITEM', 28, 'Item \'Ventilador Artificial Eletrônico Modelo: Neonatal/Pediátrico/Adulto, Modos Ventilação: Vcv, Simv, Cpap, A/C, Vni, Bilevel, Parâmetros Ventilatórios: Parâmetros Vc, Fr, Fio2, Peep, Características Adicionais 01: Bateria Interna, Características Adicionais 02: Tela Monitorização Gráfica, Alarmes: Alarmes Audiovisuais, Circuitos: Com Circuitos E Filtros\' (ID: 43) foi atualizado.', '2025-10-29 18:05:53'),
(166, 6, 'itens_pregoes', 'ADICIONAR ITEM', 28, 'Item \'Ventilador Artificial Eletrônico Modelo: Neonatal/Pediátrico/Adulto, Modos Ventilação: Vcv, Simv, Cpap, A/C, Vni, Bilevel, Parâmetros Ventilatórios: Parâmetros Vc, Fr, Fio2, Peep, Características Adicionais 01: Bateria Interna, Características Adicionais 02: Tela Monitorização Gráfica, Alarmes: Alarmes Audiovisuais, Circuitos: Com Circuitos E Filtros	\' foi adicionado.', '2025-10-29 18:08:04'),
(167, 6, 'itens_pregoes', 'EXCLUIR ITEM', 28, 'Item \'Ventilador artificial eletrônico\' foi excluído.', '2025-10-29 18:08:30'),
(168, 6, 'itens_pregoes', 'EDITAR ITEM', 28, 'Item \'Ventilador Artificial Eletrônico Modelo: Neonatal/Pediátrico/Adulto, Modos Ventilação: Vcv, Simv, Cpap, A/C, Vni, Bilevel, Parâmetros Ventilatórios: Parâmetros Vc, Fr, Fio2, Peep, Características Adicionais 01: Bateria Interna, Características Adicionais 02: Tela Monitorização Gráfica, Alarmes: Alarmes Audiovisuais, Circuitos: Com Circuitos E Filtros	\' (ID: 44) foi atualizado.', '2025-10-29 18:08:41'),
(169, 6, 'itens_pregoes', 'EDITAR ITEM', 29, 'Item \'SENSOR CONTÍNUO\' (ID: 39) foi atualizado.', '2025-10-29 19:33:20'),
(170, 6, 'pregoes', 'CADASTRO', 31, 'Pregão 00028/2025 foi cadastrado.', '2025-10-29 19:38:08'),
(171, 6, 'itens_pregoes', 'ADICIONAR ITEM', 31, 'Item \'PÁ ADESIVA ADULTA PARA DESFIBRILADOR EXTERNO AUTOMÁTICO DEA, MARCA: INSTRAMED–MODELO: ION \' foi adicionado.', '2025-10-29 19:39:49'),
(172, 6, 'itens_pregoes', 'EDITAR ITEM', 31, 'Item \'PÁ ADESIVA ADULTA PARA DESFIBRILADOR EXTERNO AUTOMÁTICO DEA, MARCA: INSTRAMED–MODELO: ION \' (ID: 45) foi atualizado.', '2025-10-29 19:40:34'),
(173, 6, 'itens_pregoes', 'ADICIONAR ITEM', 31, 'Item \'PÁ ADESIVA INFANTIL PARA DESFIBRILADOR EXTERNO AUTOMÁTICO DEA, MARCA: INSTRAMED–MODELO: ION \' foi adicionado.', '2025-10-29 19:42:00'),
(174, 6, 'itens_pregoes', 'EDITAR ITEM', 31, 'Item \'PÁ ADESIVA INFANTIL PARA DESFIBRILADOR EXTERNO AUTOMÁTICO DEA, MARCA: INSTRAMED–MODELO: ION \' (ID: 46) foi atualizado.', '2025-10-29 19:42:07'),
(175, 6, 'pregoes', 'CADASTRO', 32, 'Pregão 90015/2025 foi cadastrado.', '2025-10-29 19:51:05'),
(176, 6, 'itens_pregoes', 'ADICIONAR ITEM', 32, 'Item \'Desfibrilador externo automático portátil, conforme especificado no Termo de Referência.\' foi adicionado.', '2025-10-29 19:53:32'),
(177, 6, 'itens_pregoes', 'EDITAR ITEM', 32, 'Item \'Desfibrilador externo automático portátil, conforme especificado no Termo de Referência.\' (ID: 47) foi atualizado.', '2025-10-29 19:53:43'),
(178, 6, 'itens_pregoes', 'EDITAR ITEM', 32, 'Item \'Desfibrilador externo automático portátil, conforme especificado no Termo de Referência.\' (ID: 47) foi atualizado.', '2025-10-29 19:54:49'),
(179, 6, 'itens_pregoes', 'EDITAR ITEM', 31, 'Item \'PÁ ADESIVA ADULTA PARA DESFIBRILADOR EXTERNO AUTOMÁTICO DEA, MARCA: INSTRAMED–MODELO: ION \' (ID: 45) foi atualizado.', '2025-10-29 19:55:15'),
(180, 6, 'itens_pregoes', 'EDITAR ITEM', 31, 'Item \'PÁ ADESIVA INFANTIL PARA DESFIBRILADOR EXTERNO AUTOMÁTICO DEA, MARCA: INSTRAMED–MODELO: ION \' (ID: 46) foi atualizado.', '2025-10-29 19:55:22'),
(181, 6, 'pregoes', 'MUDANÇA DE STATUS', 31, 'Status do pregão alterado para \'Homologado\'.', '2025-10-29 19:55:32'),
(182, 6, 'pregoes', 'CADASTRO', 33, 'Pregão 90046/2025 foi cadastrado.', '2025-10-29 20:07:26'),
(183, 6, 'itens_pregoes', 'ADICIONAR ITEM', 33, 'Item \'KIT AUTOTRANSFUSÃO ADULTO PARA PROCEDIMENTOS DE RECUPERAÇÃO SANGUÍNEA INTRAOPERATÓRIA, COMPOSTO NO MÍNIMO POR: BOLSA PARA TRANSFERÊNCIA COM CAPACIDADE 1.000 ML; BOLSA DE DESCARTE DE 10 LITROS, RESERVATÓRIO PARA COLETA COM CAPACIDADE MÍNIMA 3.000 ML COM FILTRO DE 40 μM A 120 μM, RECIPIENTE DE CENTRIFUGAÇÃO DE 55 ML (USO PEDIÁTRICO), 125 ML, 175 ML E 225 ML (ADULTO), CONECTORES, LINHAS DE SUCÇÕES E TRANSFERÊNCIA. ESTÉRIL, USO ÚNICO. EMBALAGEM INDIVIDUAL EM MATERIAL QUE PROMOVA BARREIRA MICROBIANA E ABERTURA ASSÉPTICA, CONTENDO IDENTIFICAÇÃO DO PRODUTO, VALIDADE, LOTE DE FÁCIL VISUALIZAÇÃO E REGISTRO NO MS/ANVISA. APRS: UNIDADE. A EMPRESA DEVERÁ FORNECER EM COMODATO 01 EQUIPAMENTO DE AUTOTRANSFUSÃO PARA UTILIZAÇÃO DOS KITS.\' foi adicionado.', '2025-10-29 20:09:14'),
(184, 6, 'itens_pregoes', 'ADICIONAR ITEM', 33, 'Item \'KIT PARA MÁQUINA DE CIRCULAÇÃO EXTRACORPÓREA PARA CIRURGIA CARDÍACA (ADULTO). COMPOSTO POR: OXIGENADOR DE MEMBRANA PARA CEC COM IMPREGNAÇÃO DE BIOMOLÉCULAS COM ÁREA EFETIVA DE, NO MÍNIMO, 2,0 M² PARA TROCA GASOSA, COM CONJUNTO DE TUBOS PARA CIRCULAÇÃO EXTRACORPÓREA; RESERVATÓRIO DE CARDIOTOMIA; RESERVATÓRIO DE CARDIOPLEGIA SANGUÍNEO COM TUBOS; LINHA DE OXIGÊNIO COM FILTRO BACTERIOLÓGICO; FILTRO PARA CARDIOPLEGIA E FILTRO DE LINHA ARTERIAL; FILTRO DE RECIRCULAÇÃO DO PERFUSATO; KIT CÂNULAS; HEMOCONCENTRADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO, ESTÉRIL, DESCARTÁVEL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NA ANVISA/MS. A EMPRESA DEVERÁ FORNECER EM COMODATO 01 EQUIPAMENTO PARA CIRCULAÇÃO EXTRACORPÓREA.\' foi adicionado.', '2025-10-29 20:10:01'),
(185, 6, 'itens_pregoes', 'ADICIONAR ITEM', 33, 'Item \'CÂNULA ARTERIAL, PARA CIRCULAÇÃO EXTRACORPÓREA, 16FR, COMPRIMENTO MAIOR QUE 20 CM, RETA ALONGADA, ARAMADA, COM FLANGE, CONFECCIONADA EM POLIURETANO OU PVC COM KIT DE INSERÇÃO E CONECTOR 1/4. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA.\' foi adicionado.', '2025-10-29 20:11:11'),
(186, 6, 'itens_pregoes', 'ADICIONAR ITEM', 33, 'Item \'CÂNULA ARTERIAL, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRES 18 A 24 FR, RETA, ARAMADA, ADULTO, COMPRIMENTO CERCA DE 23 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, FLEXÍVEL, COM PONTA DISTAL CÔNICA, MARCADOR DE PROFUNDIDADE E ANEL DE SUTURA RADIOPACO, E ENCAIXE PARA LUER LOCK, ACOMPANHADA DE INTRODUTOR PLÁSTICO DE PONTA CÔNICA. O INTRODUTOR DEVE INTEGRAR UMA ENTRADA DE FIO GUIA; ADAPTÁVEL A CONECTOR DE 3/8 POLEGADAS. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA. APRS: UNIDADE OPME OPM EM ASSISTÊNCIA CARDIOVASCULAR 36\' foi adicionado.', '2025-10-29 20:11:53'),
(187, 6, 'itens_pregoes', 'ADICIONAR ITEM', 33, 'Item \'CÂNULA ARTERIAL AÓRTICA, PARA CIRCULAÇÃO EXTRACORPÓREA, 18 FR, CURVA 45° GRAUS, ADULTO, SEM FURO LATERAL, COM FLANGE OU STOP, ARAMADA, CONFECCIONADA EM POLIURETANO OU PVC. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA APRS: UNIDADE\' foi adicionado.', '2025-10-29 20:12:37'),
(188, 6, 'itens_pregoes', 'ADICIONAR ITEM', 33, 'Item \'CÂNULA ARTERIAL AÓRTICA, PARA CIRCULAÇÃO EXTRACORPÓREA, 21 FR, CURVA 45° GRAUS, COMPRIMENTO CERCA DE 37,6 CM. ADULTO, SEM FURO LATERAL, COM FLANGE OU STOP, ARAMADA, CONFECCIONADA EM POLIURETANO OU PVC, CONECTOR 3/8 POLEGADAS. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA. APRS: UNIDADE OPME OPM EM ASSISTÊNCIA CARDIOVASCULAR 36\' foi adicionado.', '2025-10-29 20:13:14'),
(189, 6, 'itens_pregoes', 'ADICIONAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 26 FR, ARAMADA, RETA, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NOO\' foi adicionado.', '2025-10-29 20:14:04'),
(190, 6, 'itens_pregoes', 'EDITAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 26 FR, ARAMADA, RETA, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NOO\' (ID: 54) foi atualizado.', '2025-10-29 20:14:30'),
(191, 6, 'itens_pregoes', 'ADICIONAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 28 FR, ARAMADA, RETA, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA.\' foi adicionado.', '2025-10-29 20:15:07'),
(192, 6, 'itens_pregoes', 'ADICIONAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 30 FR, ARAMADA, RETA, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA.\' foi adicionado.', '2025-10-29 20:16:18'),
(193, 6, 'itens_pregoes', 'ADICIONAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 32 FR, ARAMADA, RETA, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA.\' foi adicionado.', '2025-10-29 20:16:56'),
(194, 6, 'itens_pregoes', 'ADICIONAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 34 FR, ARAMADA, RETA, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA.\' foi adicionado.', '2025-10-29 20:17:34'),
(195, 6, 'itens_pregoes', 'ADICIONAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 36 FR, ARAMADA, RETA, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ANVISA.\' foi adicionado.', '2025-10-29 20:18:11'),
(196, 6, 'itens_pregoes', 'ADICIONAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 24 FR, ARAMADA, CURVA 90 GRAUS, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA. APRS: UNIDADE.\' foi adicionado.', '2025-10-29 20:18:57'),
(197, 6, 'itens_pregoes', 'ADICIONAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 28FR, ARAMADA, CURVA 90 GRAUS, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA. APRS: UNIDADE\' foi adicionado.', '2025-10-29 20:19:45'),
(198, 6, 'itens_pregoes', 'ADICIONAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 31 FR, ARAMADA, CURVA 90 GRAUS, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA. APRS: UNIDADE\' foi adicionado.', '2025-10-29 20:20:18'),
(199, 6, 'itens_pregoes', 'ADICIONAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 34 FR, ARAMADA, PONTA 90 GRAUS, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 40 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO; ADAPTÁVEL PARA CONECTOR DE 3/8 POLEGADAS. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA.\' foi adicionado.', '2025-10-29 20:20:51'),
(200, 6, 'itens_pregoes', 'EDITAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 34 FR, ARAMADA, PONTA 90 GRAUS, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 40 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO; ADAPTÁVEL PARA CONECTOR DE 3/8 POLEGADAS. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA.\' (ID: 63) foi atualizado.', '2025-10-29 20:21:16'),
(201, 6, 'itens_pregoes', 'ADICIONAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 36 FR, ARAMADA, CURVA 90 GRAUS, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 40 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADA, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA.\' foi adicionado.', '2025-10-29 20:21:48'),
(202, 6, 'itens_pregoes', 'ADICIONAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 28/36 FR, ARAMADA, RETA, ADULTO, DUPLO ESTÁGIO, COMPRIMENTO CERCA DE 40 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO; ADAPTÁVEL A CONECTOR DE 1/2 POLEGADA, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA.\' foi adicionado.', '2025-10-29 20:22:31'),
(203, 6, 'itens_pregoes', 'ADICIONAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 29/29 FR, ARAMADA, RETA, DUPLO ESTÁGIO, COMPRIMENTO CERCA DE 40 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO; ADAPTÁVEL A CONECTOR DE 3/8 POLEGADAS. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA. APRS: UNIDADE\' foi adicionado.', '2025-10-29 20:23:03'),
(204, 6, 'itens_pregoes', 'EDITAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 28 FR, ARAMADA, RETA, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA.\' (ID: 55) foi atualizado.', '2025-10-29 20:23:09'),
(205, 6, 'itens_pregoes', 'EDITAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 30 FR, ARAMADA, RETA, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA.\' (ID: 56) foi atualizado.', '2025-10-29 20:23:15'),
(206, 6, 'itens_pregoes', 'EDITAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 32 FR, ARAMADA, RETA, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA.\' (ID: 57) foi atualizado.', '2025-10-29 20:23:21'),
(207, 6, 'itens_pregoes', 'EDITAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 36 FR, ARAMADA, RETA, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ANVISA.\' (ID: 59) foi atualizado.', '2025-10-29 20:23:28'),
(208, 6, 'itens_pregoes', 'EDITAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 34 FR, ARAMADA, RETA, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA.\' (ID: 58) foi atualizado.', '2025-10-29 20:23:34'),
(209, 6, 'itens_pregoes', 'EDITAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 24 FR, ARAMADA, CURVA 90 GRAUS, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA. APRS: UNIDADE.\' (ID: 60) foi atualizado.', '2025-10-29 20:23:42'),
(210, 6, 'itens_pregoes', 'EDITAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 28FR, ARAMADA, CURVA 90 GRAUS, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA. APRS: UNIDADE\' (ID: 61) foi atualizado.', '2025-10-29 20:23:50'),
(211, 6, 'itens_pregoes', 'EDITAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 31 FR, ARAMADA, CURVA 90 GRAUS, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA. APRS: UNIDADE\' (ID: 62) foi atualizado.', '2025-10-29 20:23:58'),
(212, 6, 'itens_pregoes', 'EDITAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 36 FR, ARAMADA, CURVA 90 GRAUS, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 40 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADA, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA.\' (ID: 64) foi atualizado.', '2025-10-29 20:24:10'),
(213, 6, 'itens_pregoes', 'EDITAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 28/36 FR, ARAMADA, RETA, ADULTO, DUPLO ESTÁGIO, COMPRIMENTO CERCA DE 40 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO; ADAPTÁVEL A CONECTOR DE 1/2 POLEGADA, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA.\' (ID: 65) foi atualizado.', '2025-10-29 20:24:20'),
(214, 6, 'itens_pregoes', 'EDITAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 29/29 FR, ARAMADA, RETA, DUPLO ESTÁGIO, COMPRIMENTO CERCA DE 40 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO; ADAPTÁVEL A CONECTOR DE 3/8 POLEGADAS. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA. APRS: UNIDADE\' (ID: 66) foi atualizado.', '2025-10-29 20:24:27'),
(215, 6, 'itens_pregoes', 'EDITAR ITEM', 33, 'Item \'KIT AUTOTRANSFUSÃO ADULTO PARA PROCEDIMENTOS DE RECUPERAÇÃO SANGUÍNEA INTRAOPERATÓRIA, COMPOSTO NO MÍNIMO POR: BOLSA PARA TRANSFERÊNCIA COM CAPACIDADE 1.000 ML; BOLSA DE DESCARTE DE 10 LITROS, RESERVATÓRIO PARA COLETA COM CAPACIDADE MÍNIMA 3.000 ML COM FILTRO DE 40 μM A 120 μM, RECIPIENTE DE CENTRIFUGAÇÃO DE 55 ML (USO PEDIÁTRICO), 125 ML, 175 ML E 225 ML (ADULTO), CONECTORES, LINHAS DE SUCÇÕES E TRANSFERÊNCIA. ESTÉRIL, USO ÚNICO. EMBALAGEM INDIVIDUAL EM MATERIAL QUE PROMOVA BARREIRA MICROBIANA E ABERTURA ASSÉPTICA, CONTENDO IDENTIFICAÇÃO DO PRODUTO, VALIDADE, LOTE DE FÁCIL VISUALIZAÇÃO E REGISTRO NO MS/ANVISA. APRS: UNIDADE. A EMPRESA DEVERÁ FORNECER EM COMODATO 01 EQUIPAMENTO DE AUTOTRANSFUSÃO PARA UTILIZAÇÃO DOS KITS.\' (ID: 48) foi atualizado.', '2025-10-29 20:24:37'),
(216, 6, 'itens_pregoes', 'EDITAR ITEM', 33, 'Item \'KIT PARA MÁQUINA DE CIRCULAÇÃO EXTRACORPÓREA PARA CIRURGIA CARDÍACA (ADULTO). COMPOSTO POR: OXIGENADOR DE MEMBRANA PARA CEC COM IMPREGNAÇÃO DE BIOMOLÉCULAS COM ÁREA EFETIVA DE, NO MÍNIMO, 2,0 M² PARA TROCA GASOSA, COM CONJUNTO DE TUBOS PARA CIRCULAÇÃO EXTRACORPÓREA; RESERVATÓRIO DE CARDIOTOMIA; RESERVATÓRIO DE CARDIOPLEGIA SANGUÍNEO COM TUBOS; LINHA DE OXIGÊNIO COM FILTRO BACTERIOLÓGICO; FILTRO PARA CARDIOPLEGIA E FILTRO DE LINHA ARTERIAL; FILTRO DE RECIRCULAÇÃO DO PERFUSATO; KIT CÂNULAS; HEMOCONCENTRADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO, ESTÉRIL, DESCARTÁVEL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NA ANVISA/MS. A EMPRESA DEVERÁ FORNECER EM COMODATO 01 EQUIPAMENTO PARA CIRCULAÇÃO EXTRACORPÓREA.\' (ID: 49) foi atualizado.', '2025-10-29 20:24:47'),
(217, 6, 'itens_pregoes', 'EDITAR ITEM', 33, 'Item \'CÂNULA ARTERIAL, PARA CIRCULAÇÃO EXTRACORPÓREA, 16FR, COMPRIMENTO MAIOR QUE 20 CM, RETA ALONGADA, ARAMADA, COM FLANGE, CONFECCIONADA EM POLIURETANO OU PVC COM KIT DE INSERÇÃO E CONECTOR 1/4. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA.\' (ID: 50) foi atualizado.', '2025-10-29 20:24:55'),
(218, 6, 'itens_pregoes', 'EDITAR ITEM', 33, 'Item \'CÂNULA ARTERIAL, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRES 18 A 24 FR, RETA, ARAMADA, ADULTO, COMPRIMENTO CERCA DE 23 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, FLEXÍVEL, COM PONTA DISTAL CÔNICA, MARCADOR DE PROFUNDIDADE E ANEL DE SUTURA RADIOPACO, E ENCAIXE PARA LUER LOCK, ACOMPANHADA DE INTRODUTOR PLÁSTICO DE PONTA CÔNICA. O INTRODUTOR DEVE INTEGRAR UMA ENTRADA DE FIO GUIA; ADAPTÁVEL A CONECTOR DE 3/8 POLEGADAS. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA. APRS: UNIDADE OPME OPM EM ASSISTÊNCIA CARDIOVASCULAR 36\' (ID: 51) foi atualizado.', '2025-10-29 20:25:07'),
(219, 6, 'itens_pregoes', 'EDITAR ITEM', 33, 'Item \'CÂNULA ARTERIAL AÓRTICA, PARA CIRCULAÇÃO EXTRACORPÓREA, 18 FR, CURVA 45° GRAUS, ADULTO, SEM FURO LATERAL, COM FLANGE OU STOP, ARAMADA, CONFECCIONADA EM POLIURETANO OU PVC. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA APRS: UNIDADE\' (ID: 52) foi atualizado.', '2025-10-29 20:25:18'),
(220, 6, 'itens_pregoes', 'EDITAR ITEM', 33, 'Item \'CÂNULA ARTERIAL AÓRTICA, PARA CIRCULAÇÃO EXTRACORPÓREA, 21 FR, CURVA 45° GRAUS, COMPRIMENTO CERCA DE 37,6 CM. ADULTO, SEM FURO LATERAL, COM FLANGE OU STOP, ARAMADA, CONFECCIONADA EM POLIURETANO OU PVC, CONECTOR 3/8 POLEGADAS. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NO MINISTÉRIO DA SAÚDE/ ANVISA. APRS: UNIDADE OPME OPM EM ASSISTÊNCIA CARDIOVASCULAR 36\' (ID: 53) foi atualizado.', '2025-10-29 20:25:28'),
(221, 6, 'itens_pregoes', 'EDITAR ITEM', 33, 'Item \'CÂNULA VENOSA, PARA CIRCULAÇÃO EXTRACORPÓREA, CALIBRE 26 FR, ARAMADA, RETA, ADULTO, SIMPLES ESTÁGIO, COMPRIMENTO CERCA DE 35 CM, CONFECCIONADA EM TUBO PVC REFORÇADO INTERNAMENTE COM ARMAÇÃO DE AÇO INOXIDÁVEL, ARAMADO, PONTA ABERTA E MÚLTIPLOS ORIFÍCIOS LATERAIS (REDONDOS E OVAIS); ADAPTÁVEL A CONECTOR DE 1/4 OU 3/8 POLEGADAS, COM OBTURADOR. TODO O CONJUNTO DEVE SER APIROGÊNICO, ATÓXICO E ESTÉRIL. EMBALAGEM INDIVIDUAL ÍNTEGRA QUE PERMITA SUA ABERTURA DE FORMA ASSÉPTICA, CONTENDO EXTERNAMENTE DADOS DE IDENTIFICAÇÃO, PROCEDÊNCIA, ORIENTAÇÃO DE USO, TIPO DE ESTERILIZAÇÃO, Nº DO LOTE, DATA DE FABRICAÇÃO, DATA DE VALIDADE DO PRODUTO E REGISTRO NOO\' (ID: 54) foi atualizado.', '2025-10-29 20:25:35'),
(222, 6, 'pregoes', 'CADASTRO', 34, 'Pregão 0124.2025 foi cadastrado.', '2025-10-29 20:30:39'),
(223, 6, 'itens_pregoes', 'ADICIONAR ITEM', 34, 'Item \'SERVIÇO DE LOCACAO DE EQUIPAMENTOS MEDICO HOSPITALARES EM GERAL – DO TIPO DE DEBITO CARDIACO CONTINUO, COM TECNOLOGIA MINIMAMENTE INVASIVA E NÃO INVASIVA, MONITORIZACAO ATRAVES DA LINHA ARTERIAL RADIAL, UTILIZANDO QUALQUER CATETER ARTERIAL, SEM A NECESSIDADE DE ALTERACAO DO TRANSDUTOR DE PRESSAO, MEDIDNO OS PARAMETROS DE DEBITO CARDIACO (DC), INDICE CARDIACO (IC), VOLUME SISTOLICO (VS), VOLUME SISTOLICO INDEXADO (VSI), VARIACAO DE VOLUME SISTOLICO (VVS), RESISTENCIA VASCULAR SISTEMICA (RVS), TELA COLORIDA TOUCHSCREEN, DE NO MINIMO 15 POLEGADAS, BATERIA INTERNA RECARREGAVEL COM CAPACIDADE DE ATE 3 HORAS, ACOMPANHA TODOS OS ACESSORIOS NECESSARIOS AO COMPLETO FUNCIONAMENTO DO EQUIPAMENTO, COM MANUTENCAO CORRETIVA, PREVENTIVA E REPOSICAO DE PECAS.\' foi adicionado.', '2025-10-29 20:35:57'),
(224, 6, 'pregoes', 'CADASTRO', 35, 'Pregão 90267/2025 foi cadastrado.', '2025-10-29 20:44:06'),
(225, 6, 'itens_pregoes', 'ADICIONAR ITEM', 35, 'Item \'CONJUNTO DE CIRCULACAO EXTRACORPOREA - OXIGENADOR DE MEMBRANA DIFUSA ADULTO COM FILTRO ARTERIAL, RESERVATORIO VENOSO E CARDIOTOMIA MONTADO EM ESTRUTURA VEDADA COM A SUPERFICIE INTERNA TOTALMENTE REVESTIDA DE SUBSTANCIA COM CARACTERISITCAS HIDROFILICAS ANTIAGREGANTE, VOLUME DE PRIME ESTATICO INFERIOR A 350ML, MONTADO EM BANDEJA ESTERIL, COM TUBOS, BOMBA CENTRIFUGA COM PRIME MAXIMO DE 40 ML, SISTEMA DE CARDIOPLEGIA CRISTALOIDE OU SANGUINEA COM BAG E TROCADOR DE CALOR, KIT CANULAS CAVA UNICA OU DUPLA, LINHA ARTERIAL 3/8, LINHA VENOSA CAVA UNICA DE 1/2 E LINHA VENOSA DUPLA 3/8 E TRES TUBOS ASPIRADORES DE 1/4, CONTENDO Nº DE LOTE, DATA DE FABRICACAO, PRAZO DE VALIDADE DE ESTERILIZACAO, MARCA DO FABRICANTE E PROCEDENCIA CONFORME NORMAS DO MINISTERIO DA SAUDE.\' foi adicionado.', '2025-10-29 20:45:14'),
(226, 6, 'itens_pregoes', 'ADICIONAR ITEM', 35, 'Item \'CONJUNTO DE CIRCULACAO EXTRACORPOREA - ADULTO, PACIENTE ATE 110 KG,COMPOSTO POR OXIGENADOR DE MEMBRANA COM PERMUTADOR DE CALOR EM ACO INOXIDAVEL E FILTRO ARTERIAL EM CASCATA INTEGRADO PRIME 225 ML, FLUXO MAXIMO 7,0 L/MIN,MEMBRANA 1,65 M2, RESERVATORIO VENOSO INTEGRADO COM CARDIOTOMIA E SELADO PARA USO A VACUO, NIVEL OPERACIONAL MINIMO 200 ML,FILTRO VENOSO 80 MICRAS, FILTRO DA CARDIOTOMIA 40 MICRAS, KIT PARA CARDIOPLEGIA CRISTALOIDE OU SANGUINEA COM RESERVATORIO FLEXIVEL,PERMUTADOR DE CALOR EM ACO INOXIDAVEL, FILTOR 105 MICRAS COM ARMADILHA DE BOLHAS INTEGRADA,CONJUNTO DE TUBOS PRE-MONTADO COMPLETO COM REVESTIMENTO ANTIAGREGANTE, CONJUNTO DESCARTAVEL PARA CIRCULACAO ASSISTIDA (BOMBA CENTRIFUGA),EM POLICARBONATO, ROTOR ESTABILIZADO MAGNETICAMENTE, COM HEMOCONCENTRADOR.\' foi adicionado.', '2025-10-29 20:46:02'),
(227, 6, 'itens_pregoes', 'ADICIONAR ITEM', 35, 'Item \'SISTEMA DE OXIGENADOR MEMBRANA ADULTO - HEMOCONCENTRADOR H-500 PARA CIRCULACAO EXTRACORPOREA, EM POLICARBONATO E FIBRAS DE POLIETERSULFONA, COM DIAMETRO EXTERNO DA FIBRA, AREA EFETIVA DE MEMBRANA COM SUPORTE, CONCENTRA OS ELEMENTOS DO SANGUE PELA REMOCAO DE AGUA E ELETROLITOS EM CIRURGIAS CARDIACAS, ESTERIL, COM UMA UNIDADE, VALIDADE: 2 ANOS.\' foi adicionado.', '2025-10-29 20:46:48'),
(228, 6, 'itens_pregoes', 'ADICIONAR ITEM', 35, 'Item \'Conjunto Circulação Extracorpórea Material: Pvc Cristal, Esterilidade: Atóxica, Apirogênica, Estéril, Componentes: 2 Linhas Venosas 3/8\", 1 Linha Arterial 3/8\", Outros Componentes: 1 Linha Máquina 3/8\", Linha Recirculação, Características Adicionais: Filtro Bacteriológico 0,5micra, Aspiradores\' foi adicionado.', '2025-10-29 20:51:57'),
(229, 6, 'itens_pregoes', 'ADICIONAR ITEM', 35, 'Item \'Conjunto Circulação Extracorpórea Material: Polietileno, Tipo Uso: Perfusão Intraperitoneal, Componentes: Tubos P/ Cec, Aplicação: Trocador De Calor, Outros Componentes: Reservatório, Características Adicionais: Descartável E Estéril\' foi adicionado.', '2025-10-29 20:52:41'),
(230, 6, 'itens_pregoes', 'ADICIONAR ITEM', 35, 'Item \'Hemoconcentrador Material: Poliacrilonitrila, Aplicação: P/ Circulação Extra-Corpórea, Tamanho: Adulto, Características Adicionais: Membrana 1,1m²,Priming 70ml,Pressão 500mmhg, Tipo Uso: Descartável E Estéril, Tipo Filtro: 20MICRA\' foi adicionado.', '2025-10-29 20:53:24'),
(231, 6, 'itens_pregoes', 'EDITAR ITEM', 35, 'Item \'Conjunto Circulação Extracorpórea Material: Pvc Cristal, Esterilidade: Atóxica, Apirogênica, Estéril, Componentes: 2 Linhas Venosas 3/8\", 1 Linha Arterial 3/8\", Outros Componentes: 1 Linha Máquina 3/8\", Linha Recirculação, Características Adicionais: Filtro Bacteriológico 0,5micra, Aspiradores\' (ID: 71) foi atualizado.', '2025-10-29 20:53:39'),
(232, 6, 'itens_pregoes', 'EDITAR ITEM', 35, 'Item \'CONJUNTO DE CIRCULACAO EXTRACORPOREA - OXIGENADOR DE MEMBRANA DIFUSA ADULTO COM FILTRO ARTERIAL, RESERVATORIO VENOSO E CARDIOTOMIA MONTADO EM ESTRUTURA VEDADA COM A SUPERFICIE INTERNA TOTALMENTE REVESTIDA DE SUBSTANCIA COM CARACTERISITCAS HIDROFILICAS ANTIAGREGANTE, VOLUME DE PRIME ESTATICO INFERIOR A 350ML, MONTADO EM BANDEJA ESTERIL, COM TUBOS, BOMBA CENTRIFUGA COM PRIME MAXIMO DE 40 ML, SISTEMA DE CARDIOPLEGIA CRISTALOIDE OU SANGUINEA COM BAG E TROCADOR DE CALOR, KIT CANULAS CAVA UNICA OU DUPLA, LINHA ARTERIAL 3/8, LINHA VENOSA CAVA UNICA DE 1/2 E LINHA VENOSA DUPLA 3/8 E TRES TUBOS ASPIRADORES DE 1/4, CONTENDO Nº DE LOTE, DATA DE FABRICACAO, PRAZO DE VALIDADE DE ESTERILIZACAO, MARCA DO FABRICANTE E PROCEDENCIA CONFORME NORMAS DO MINISTERIO DA SAUDE.\' (ID: 68) foi atualizado.', '2025-10-29 20:53:46'),
(233, 6, 'itens_pregoes', 'EDITAR ITEM', 35, 'Item \'CONJUNTO DE CIRCULACAO EXTRACORPOREA - ADULTO, PACIENTE ATE 110 KG,COMPOSTO POR OXIGENADOR DE MEMBRANA COM PERMUTADOR DE CALOR EM ACO INOXIDAVEL E FILTRO ARTERIAL EM CASCATA INTEGRADO PRIME 225 ML, FLUXO MAXIMO 7,0 L/MIN,MEMBRANA 1,65 M2, RESERVATORIO VENOSO INTEGRADO COM CARDIOTOMIA E SELADO PARA USO A VACUO, NIVEL OPERACIONAL MINIMO 200 ML,FILTRO VENOSO 80 MICRAS, FILTRO DA CARDIOTOMIA 40 MICRAS, KIT PARA CARDIOPLEGIA CRISTALOIDE OU SANGUINEA COM RESERVATORIO FLEXIVEL,PERMUTADOR DE CALOR EM ACO INOXIDAVEL, FILTOR 105 MICRAS COM ARMADILHA DE BOLHAS INTEGRADA,CONJUNTO DE TUBOS PRE-MONTADO COMPLETO COM REVESTIMENTO ANTIAGREGANTE, CONJUNTO DESCARTAVEL PARA CIRCULACAO ASSISTIDA (BOMBA CENTRIFUGA),EM POLICARBONATO, ROTOR ESTABILIZADO MAGNETICAMENTE, COM HEMOCONCENTRADOR.\' (ID: 69) foi atualizado.', '2025-10-29 20:53:54'),
(234, 6, 'itens_pregoes', 'EDITAR ITEM', 35, 'Item \'CONJUNTO DE CIRCULACAO EXTRACORPOREA - ADULTO, PACIENTE ATE 110 KG,COMPOSTO POR OXIGENADOR DE MEMBRANA COM PERMUTADOR DE CALOR EM ACO INOXIDAVEL E FILTRO ARTERIAL EM CASCATA INTEGRADO PRIME 225 ML, FLUXO MAXIMO 7,0 L/MIN,MEMBRANA 1,65 M2, RESERVATORIO VENOSO INTEGRADO COM CARDIOTOMIA E SELADO PARA USO A VACUO, NIVEL OPERACIONAL MINIMO 200 ML,FILTRO VENOSO 80 MICRAS, FILTRO DA CARDIOTOMIA 40 MICRAS, KIT PARA CARDIOPLEGIA CRISTALOIDE OU SANGUINEA COM RESERVATORIO FLEXIVEL,PERMUTADOR DE CALOR EM ACO INOXIDAVEL, FILTOR 105 MICRAS COM ARMADILHA DE BOLHAS INTEGRADA,CONJUNTO DE TUBOS PRE-MONTADO COMPLETO COM REVESTIMENTO ANTIAGREGANTE, CONJUNTO DESCARTAVEL PARA CIRCULACAO ASSISTIDA (BOMBA CENTRIFUGA),EM POLICARBONATO, ROTOR ESTABILIZADO MAGNETICAMENTE, COM HEMOCONCENTRADOR.\' (ID: 69) foi atualizado.', '2025-10-29 20:53:55'),
(235, 6, 'itens_pregoes', 'EDITAR ITEM', 35, 'Item \'SISTEMA DE OXIGENADOR MEMBRANA ADULTO - HEMOCONCENTRADOR H-500 PARA CIRCULACAO EXTRACORPOREA, EM POLICARBONATO E FIBRAS DE POLIETERSULFONA, COM DIAMETRO EXTERNO DA FIBRA, AREA EFETIVA DE MEMBRANA COM SUPORTE, CONCENTRA OS ELEMENTOS DO SANGUE PELA REMOCAO DE AGUA E ELETROLITOS EM CIRURGIAS CARDIACAS, ESTERIL, COM UMA UNIDADE, VALIDADE: 2 ANOS.\' (ID: 70) foi atualizado.', '2025-10-29 20:54:02'),
(236, 6, 'itens_pregoes', 'EDITAR ITEM', 35, 'Item \'Conjunto Circulação Extracorpórea Material: Polietileno, Tipo Uso: Perfusão Intraperitoneal, Componentes: Tubos P/ Cec, Aplicação: Trocador De Calor, Outros Componentes: Reservatório, Características Adicionais: Descartável E Estéril\' (ID: 72) foi atualizado.', '2025-10-29 20:54:08'),
(237, 6, 'itens_pregoes', 'EDITAR ITEM', 35, 'Item \'Hemoconcentrador Material: Poliacrilonitrila, Aplicação: P/ Circulação Extra-Corpórea, Tamanho: Adulto, Características Adicionais: Membrana 1,1m²,Priming 70ml,Pressão 500mmhg, Tipo Uso: Descartável E Estéril, Tipo Filtro: 20MICRA\' (ID: 73) foi atualizado.', '2025-10-29 20:54:15'),
(238, 6, 'itens_pregoes', 'EDITAR ITEM', 35, 'Item \'CONJUNTO DE CIRCULACAO EXTRACORPOREA - OXIGENADOR DE MEMBRANA DIFUSA ADULTO COM FILTRO ARTERIAL, RESERVATORIO VENOSO E CARDIOTOMIA MONTADO EM ESTRUTURA VEDADA COM A SUPERFICIE INTERNA TOTALMENTE REVESTIDA DE SUBSTANCIA COM CARACTERISITCAS HIDROFILICAS ANTIAGREGANTE, VOLUME DE PRIME ESTATICO INFERIOR A 350ML, MONTADO EM BANDEJA ESTERIL, COM TUBOS, BOMBA CENTRIFUGA COM PRIME MAXIMO DE 40 ML, SISTEMA DE CARDIOPLEGIA CRISTALOIDE OU SANGUINEA COM BAG E TROCADOR DE CALOR, KIT CANULAS CAVA UNICA OU DUPLA, LINHA ARTERIAL 3/8, LINHA VENOSA CAVA UNICA DE 1/2 E LINHA VENOSA DUPLA 3/8 E TRES TUBOS ASPIRADORES DE 1/4\' (ID: 68) foi atualizado.', '2025-10-30 12:55:32'),
(239, 6, 'itens_pregoes', 'EDITAR ITEM', 35, 'Item \'Conjunto Circulação Extracorpórea Material: Pvc Cristal, Esterilidade: Atóxica, Apirogênica, Estéril, Componentes: 2 Linhas Venosas 3/8\", 1 Linha Arterial 3/8\", Outros Componentes: 1 Linha Máquina 3/8\", Linha Recirculação, Características Adicionais: Filtro Bacteriológico 0,5micra, Aspiradores\' (ID: 68) foi atualizado.', '2025-10-30 14:28:45'),
(240, 6, 'itens_pregoes', 'EDITAR ITEM', 35, 'Item \'Conjunto Circulação Extracorpórea Material: Polietileno, Tipo Uso: Perfusão Intraperitoneal, Componentes: Tubos P/ Cec, Aplicação: Trocador De Calor, Outros Componentes: Reservatório, Características Adicionais: Descartável E Estéril\' (ID: 69) foi atualizado.', '2025-10-30 14:28:57');
INSERT INTO `logs_atividades` (`id`, `usuario_id`, `tabela`, `acao`, `registro_id`, `detalhes`, `created_at`) VALUES
(241, 6, 'itens_pregoes', 'EDITAR ITEM', 35, 'Item \'Hemoconcentrador Material: Poliacrilonitrila, Aplicação: P/ Circulação Extra-Corpórea, Tamanho: Adulto, Características Adicionais: Membrana 1,1m²,Priming 70ml,Pressão 500mmhg, Tipo Uso: Descartável E Estéril, Tipo Filtro: 20MICRA\' (ID: 70) foi atualizado.', '2025-10-30 14:29:10'),
(242, 6, 'pregoes', 'CADASTRO', 36, 'Pregão 0141/2025 foi cadastrado.', '2025-11-12 20:18:50'),
(243, 6, 'pregoes', 'CADASTRO', 37, 'Pregão 4585.2025.CCD.DL.0746.HR foi cadastrado.', '2025-11-12 20:21:10'),
(244, 6, 'pregoes', 'CADASTRO', 38, 'Pregão 90040/2025 foi cadastrado.', '2025-11-12 20:23:02'),
(245, 6, 'itens_pregoes', 'ADICIONAR ITEM', 36, 'Item \'(6061966) - CONJUNTO DE CIRCULACAO EXTRACORPOREA - ADULTO, COMPOSTO DE OXIGENADOR MEMBRANA COM AREA EFETIVA DE 2,2 +/-0,2 M2,PARA TROCA GASOSA,COM RESERVATORIO DE CARDIOTOMIA INTEGRADO,1 CONJUNTO DE TUBOS CAVA UNICA OU DUPLA,1 FILTRO ARTERIAL,1 HEMOCONCENTRADOR,1 RESERVATORIO DE CARDIOPLEGIA (CRISTALOIDE OU SANGUINEA)\' foi adicionado.', '2025-11-12 20:26:53'),
(246, 6, 'itens_pregoes', 'EDITAR ITEM', 36, 'Item \'(6061966) - CONJUNTO DE CIRCULACAO EXTRACORPOREA - ADULTO, COMPOSTO DE OXIGENADOR MEMBRANA COM AREA EFETIVA DE 2,2 +/-0,2 M2,PARA TROCA GASOSA,COM RESERVATORIO DE CARDIOTOMIA INTEGRADO,1 CONJUNTO DE TUBOS CAVA UNICA OU DUPLA,1 FILTRO ARTERIAL,1 HEMOCONCENTRADOR,1 RESERVATORIO DE CARDIOPLEGIA (CRISTALOIDE OU SANGUINEA)\' (ID: 74) foi atualizado.', '2025-11-13 00:14:30'),
(247, 6, 'itens_pregoes', 'EDITAR ITEM', 36, 'Item \'(6061966) - CONJUNTO DE CIRCULACAO EXTRACORPOREA - ADULTO, COMPOSTO DE OXIGENADOR MEMBRANA COM AREA EFETIVA DE 2,2 +/-0,2 M2,PARA TROCA GASOSA,COM RESERVATORIO DE CARDIOTOMIA INTEGRADO,1 CONJUNTO DE TUBOS CAVA UNICA OU DUPLA,1 FILTRO ARTERIAL,1 HEMOCONCENTRADOR,1 RESERVATORIO DE CARDIOPLEGIA (CRISTALOIDE OU SANGUINEA)\' (ID: 74) foi atualizado.', '2025-11-13 00:14:45'),
(248, 6, 'itens_pregoes', 'ADICIONAR ITEM', 36, 'Item \'awsdasdasd\' foi adicionado.', '2025-11-13 00:15:38'),
(249, 6, 'itens_pregoes', 'ADICIONAR ITEM', 36, 'Item \'teste\' foi adicionado.', '2025-11-13 00:16:25'),
(250, 6, 'itens_pregoes', 'EDITAR ITEM', 36, 'Item \'(3050416) - BOMBA CENTRIFUGA - CONJUNTO DESCARTAVEL PARA CIRCULACAO ASSISTIDA(BOMBA CENTRIFUGA),EM POLICARBONATO, ROTOR ESTABILIZADO MAGNETICAMENTE, ESTERILIZADO EM OXIDO DE ETILENO, EMBALADO INDIVIDUALMENTE,TODOS OS EQUIPAMENTOS PRODUZIDOS COM MATERIAIS BIOCOMPATIVEIS E APIROGENICOS COM VALIDADE DE ESTERILIZACAO MINIMA DE 12 MESES, TRAZENDO EXATAMENTE OS DADOS DE IDENTIFICACAO E SUA PROCEDENCIA E DATA DE ESTERILIZACAO, VENCIMENTO, NºLOTE E REGISTRO NO MINISTERIO DA SAUDE\' (ID: 75) foi atualizado.', '2025-11-13 11:21:27'),
(251, 6, 'itens_pregoes', 'ADICIONAR ITEM', 36, 'Item \'(6061982) - SISTEMA DE OXIGENADOR MEMBRANA ADULTO - MEMBRANA COM AREA EFETIVA DE 2,2 +/-0,2 M2,PARA TROCA GASOSA,COM RESERVATORIO DE CARDIOTOMIA INTEGRADO.\' foi adicionado.', '2025-11-13 11:22:29'),
(252, 6, 'itens_pregoes', 'EDITAR ITEM', 36, 'Item \'(6061974) - CONJUNTO DE CIRCULACAO EXTRACORPOREA - ADULTO, COMPOSTO DE 1 OXIGENADOR MEMBRANA COM AREA EFETIVA DE 2,5 +/-0,5M2,PARA TROCA GASOSA,COM RESERVATORIO DE CARDIOTOMIA E FILTRO ARTERIAL INTEGRADO,1 CONJUNTO DE TUBOS CAVA UNICA OU DUPLA,1 HEMOCONCENTRADOR,1 RESERVATORIO DE CARDIOPLEGIA (CRISTALOIDE OU SANGUINEA),.\' (ID: 76) foi atualizado.', '2025-11-13 11:23:18'),
(253, 6, 'itens_pregoes', 'ADICIONAR ITEM', 36, 'Item \'BOMBA CENTRIFUGA - CONJUNTO DESCARTAVEL PARA CIRCULACAO ASSISTIDA(BOMBA CENTRIFUGA),EM POLICARBONATO, ROTOR ESTABILIZADO MAGNETICAMENTE, ESTERILIZADO EM OXIDO DE ETILENO, EMBALADO INDIVIDUALMENTE,TODOS OS EQUIPAMENTOS PRODUZIDOS COM MATERIAIS BIOCOMPATIVEIS E APIROGENICOS COM VALIDADE DE ESTERILIZACAO MINIMA DE 12 MESES, TRAZENDO EXATAMENTE OS DADOS DE IDENTIFICACAO E SUA PROCEDENCIA E DATA DE ESTERILIZACAO, VENCIMENTO, NºLOTE E REGISTRO NO MINISTERIO DA SAUDE\' foi adicionado.', '2025-11-13 11:24:44'),
(254, 6, 'itens_pregoes', 'EDITAR ITEM', 36, 'Item \'BOMBA CENTRIFUGA - CONJUNTO DESCARTAVEL PARA CIRCULACAO ASSISTIDA(BOMBA CENTRIFUGA),EM POLICARBONATO, ROTOR ESTABILIZADO MAGNETICAMENTE, ESTERILIZADO EM OXIDO DE ETILENO, EMBALADO INDIVIDUALMENTE,TODOS OS EQUIPAMENTOS PRODUZIDOS COM MATERIAIS BIOCOMPATIVEIS E APIROGENICOS COM VALIDADE DE ESTERILIZACAO MINIMA DE 12 MESES, TRAZENDO EXATAMENTE OS DADOS DE IDENTIFICACAO E SUA PROCEDENCIA E DATA DE ESTERILIZACAO, VENCIMENTO, NºLOTE E REGISTRO NO MINISTERIO DA SAUDE\' (ID: 78) foi atualizado.', '2025-11-13 11:25:04'),
(255, 6, 'itens_pregoes', 'EDITAR ITEM', 36, 'Item \'CONJUNTO DE CIRCULACAO EXTRACORPOREA - ADULTO, COMPOSTO DE OXIGENADOR MEMBRANA COM AREA EFETIVA DE 2,2 +/-0,2 M2,PARA TROCA GASOSA,COM RESERVATORIO DE CARDIOTOMIA INTEGRADO,1 CONJUNTO DE TUBOS CAVA UNICA OU DUPLA,1 FILTRO ARTERIAL,1 HEMOCONCENTRADOR,1 RESERVATORIO DE CARDIOPLEGIA (CRISTALOIDE OU SANGUINEA)\' (ID: 74) foi atualizado.', '2025-11-13 11:25:13'),
(256, 6, 'itens_pregoes', 'EDITAR ITEM', 36, 'Item \'BOMBA CENTRIFUGA - CONJUNTO DESCARTAVEL PARA CIRCULACAO ASSISTIDA(BOMBA CENTRIFUGA),EM POLICARBONATO, ROTOR ESTABILIZADO MAGNETICAMENTE, ESTERILIZADO EM OXIDO DE ETILENO, EMBALADO INDIVIDUALMENTE,TODOS OS EQUIPAMENTOS PRODUZIDOS COM MATERIAIS BIOCOMPATIVEIS E APIROGENICOS COM VALIDADE DE ESTERILIZACAO MINIMA DE 12 MESES, TRAZENDO EXATAMENTE OS DADOS DE IDENTIFICACAO E SUA PROCEDENCIA E DATA DE ESTERILIZACAO, VENCIMENTO, NºLOTE E REGISTRO NO MINISTERIO DA SAUDE\' (ID: 75) foi atualizado.', '2025-11-13 11:25:23'),
(257, 6, 'itens_pregoes', 'EDITAR ITEM', 36, 'Item \'SISTEMA DE OXIGENADOR MEMBRANA ADULTO - MEMBRANA COM AREA EFETIVA DE 2,2 +/-0,2 M2,PARA TROCA GASOSA,COM RESERVATORIO DE CARDIOTOMIA INTEGRADO.\' (ID: 77) foi atualizado.', '2025-11-13 11:25:33'),
(258, 6, 'itens_pregoes', 'EDITAR ITEM', 36, 'Item \'CONJUNTO DE CIRCULACAO EXTRACORPOREA - ADULTO, COMPOSTO DE 1 OXIGENADOR MEMBRANA COM AREA EFETIVA DE 2,5 +/-0,5M2,PARA TROCA GASOSA,COM RESERVATORIO DE CARDIOTOMIA E FILTRO ARTERIAL INTEGRADO,1 CONJUNTO DE TUBOS CAVA UNICA OU DUPLA,1 HEMOCONCENTRADOR,1 RESERVATORIO DE CARDIOPLEGIA (CRISTALOIDE OU SANGUINEA),.\' (ID: 76) foi atualizado.', '2025-11-13 11:25:44'),
(259, 6, 'itens_pregoes', 'ADICIONAR ITEM', 36, 'Item \'SISTEMA DE OXIGENADOR MEMBRANA ADULTO - MEMBRANA COM AREA EFETIVA DE 2,5 +/-0,5 M2,PARA TROCA GASOSA,COM RESERVATORIO DE CARDIOTOMIA E FILTRO ARTERIAL INTEGRADO\' foi adicionado.', '2025-11-13 11:26:34'),
(260, 6, 'consignados', 'VINCULAR', 36, 'Contrato: 123/2025', '2025-12-09 16:48:18');

-- --------------------------------------------------------

--
-- Estrutura para tabela `notificacoes`
--

CREATE TABLE `notificacoes` (
  `id` int(11) NOT NULL,
  `usuario_destino_id` int(11) NOT NULL,
  `mensagem` text NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `lida` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `notificacoes`
--

INSERT INTO `notificacoes` (`id`, `usuario_destino_id`, `mensagem`, `link`, `lida`, `created_at`) VALUES
(949, 6, 'Novo pregão cadastrado: 90017/2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=28', 1, '2025-09-03 12:26:47'),
(950, 7, 'Novo pregão cadastrado: 90017/2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=28', 0, '2025-09-03 12:26:47'),
(951, 16, 'Novo pregão cadastrado: 90017/2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=28', 0, '2025-09-03 12:26:47'),
(952, 6, 'Novo pregão cadastrado: 90043/2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=29', 1, '2025-09-03 16:40:22'),
(953, 7, 'Novo pregão cadastrado: 90043/2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=29', 0, '2025-09-03 16:40:22'),
(954, 16, 'Novo pregão cadastrado: 90043/2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=29', 0, '2025-09-03 16:40:22'),
(955, 6, 'O pregão 90043/2025 foi atualizado. Clique para ver os detalhes.', 'pregao_detalhes.php?id=29', 1, '2025-09-03 16:41:13'),
(956, 7, 'O pregão 90043/2025 foi atualizado. Clique para ver os detalhes.', 'pregao_detalhes.php?id=29', 0, '2025-09-03 16:41:13'),
(957, 16, 'O pregão 90043/2025 foi atualizado. Clique para ver os detalhes.', 'pregao_detalhes.php?id=29', 0, '2025-09-03 16:41:13'),
(958, 6, 'Novo pregão cadastrado: 94264/2024. Clique para ver os detalhes.', 'pregao_detalhes.php?id=30', 1, '2025-10-29 17:45:41'),
(959, 7, 'Novo pregão cadastrado: 94264/2024. Clique para ver os detalhes.', 'pregao_detalhes.php?id=30', 0, '2025-10-29 17:45:41'),
(960, 16, 'Novo pregão cadastrado: 94264/2024. Clique para ver os detalhes.', 'pregao_detalhes.php?id=30', 0, '2025-10-29 17:45:41'),
(961, 6, 'O pregão 90017/2025 foi atualizado. Clique para ver os detalhes.', 'pregao_detalhes.php?id=28', 1, '2025-10-29 17:57:24'),
(962, 7, 'O pregão 90017/2025 foi atualizado. Clique para ver os detalhes.', 'pregao_detalhes.php?id=28', 0, '2025-10-29 17:57:24'),
(963, 16, 'O pregão 90017/2025 foi atualizado. Clique para ver os detalhes.', 'pregao_detalhes.php?id=28', 0, '2025-10-29 17:57:24'),
(964, 6, 'Novo pregão cadastrado: 00028/2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=31', 1, '2025-10-29 19:38:08'),
(965, 7, 'Novo pregão cadastrado: 00028/2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=31', 0, '2025-10-29 19:38:08'),
(966, 16, 'Novo pregão cadastrado: 00028/2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=31', 0, '2025-10-29 19:38:08'),
(967, 6, 'Novo pregão cadastrado: 90015/2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=32', 1, '2025-10-29 19:51:05'),
(968, 7, 'Novo pregão cadastrado: 90015/2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=32', 0, '2025-10-29 19:51:05'),
(969, 16, 'Novo pregão cadastrado: 90015/2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=32', 0, '2025-10-29 19:51:05'),
(970, 6, 'O pregão 90015/2025 foi atualizado. Clique para ver os detalhes.', 'pregao_detalhes.php?id=32', 1, '2025-10-29 20:00:57'),
(971, 7, 'O pregão 90015/2025 foi atualizado. Clique para ver os detalhes.', 'pregao_detalhes.php?id=32', 0, '2025-10-29 20:00:57'),
(972, 16, 'O pregão 90015/2025 foi atualizado. Clique para ver os detalhes.', 'pregao_detalhes.php?id=32', 0, '2025-10-29 20:00:57'),
(973, 6, 'Novo pregão cadastrado: 90046/2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=33', 1, '2025-10-29 20:07:26'),
(974, 7, 'Novo pregão cadastrado: 90046/2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=33', 0, '2025-10-29 20:07:26'),
(975, 16, 'Novo pregão cadastrado: 90046/2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=33', 0, '2025-10-29 20:07:26'),
(976, 6, 'Novo pregão cadastrado: 0124.2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=34', 1, '2025-10-29 20:30:39'),
(977, 7, 'Novo pregão cadastrado: 0124.2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=34', 0, '2025-10-29 20:30:39'),
(978, 16, 'Novo pregão cadastrado: 0124.2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=34', 0, '2025-10-29 20:30:39'),
(979, 6, 'O pregão 0124.2025 foi atualizado. Clique para ver os detalhes.', 'pregao_detalhes.php?id=34', 1, '2025-10-29 20:36:58'),
(980, 7, 'O pregão 0124.2025 foi atualizado. Clique para ver os detalhes.', 'pregao_detalhes.php?id=34', 0, '2025-10-29 20:36:58'),
(981, 16, 'O pregão 0124.2025 foi atualizado. Clique para ver os detalhes.', 'pregao_detalhes.php?id=34', 0, '2025-10-29 20:36:58'),
(982, 6, 'Novo pregão cadastrado: 90267/2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=35', 1, '2025-10-29 20:44:06'),
(983, 7, 'Novo pregão cadastrado: 90267/2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=35', 0, '2025-10-29 20:44:06'),
(984, 16, 'Novo pregão cadastrado: 90267/2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=35', 0, '2025-10-29 20:44:06'),
(985, 6, 'Novo pregão cadastrado: 0141/2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=36', 1, '2025-11-12 20:18:50'),
(986, 7, 'Novo pregão cadastrado: 0141/2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=36', 0, '2025-11-12 20:18:50'),
(987, 16, 'Novo pregão cadastrado: 0141/2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=36', 0, '2025-11-12 20:18:50'),
(988, 6, 'Novo pregão cadastrado: 4585.2025.CCD.DL.0746.HR. Clique para ver os detalhes.', 'pregao_detalhes.php?id=37', 1, '2025-11-12 20:21:10'),
(989, 7, 'Novo pregão cadastrado: 4585.2025.CCD.DL.0746.HR. Clique para ver os detalhes.', 'pregao_detalhes.php?id=37', 0, '2025-11-12 20:21:10'),
(990, 16, 'Novo pregão cadastrado: 4585.2025.CCD.DL.0746.HR. Clique para ver os detalhes.', 'pregao_detalhes.php?id=37', 0, '2025-11-12 20:21:10'),
(991, 6, 'Novo pregão cadastrado: 90040/2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=38', 1, '2025-11-12 20:23:02'),
(992, 7, 'Novo pregão cadastrado: 90040/2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=38', 0, '2025-11-12 20:23:02'),
(993, 16, 'Novo pregão cadastrado: 90040/2025. Clique para ver os detalhes.', 'pregao_detalhes.php?id=38', 0, '2025-11-12 20:23:02');

-- --------------------------------------------------------

--
-- Estrutura para tabela `observacoes_pregao`
--

CREATE TABLE `observacoes_pregao` (
  `id` int(11) NOT NULL,
  `pregao_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `observacao` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `observacoes_pregao`
--

INSERT INTO `observacoes_pregao` (`id`, `pregao_id`, `usuario_id`, `observacao`, `created_at`) VALUES
(24, 30, 6, 'Aguardando Homologação.', '2025-10-29 17:55:54');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pregao_fornecedor`
--

CREATE TABLE `pregao_fornecedor` (
  `id` int(11) NOT NULL,
  `pregao_id` int(11) NOT NULL,
  `fornecedor_id` int(11) NOT NULL,
  `situacao` enum('Vencedora','Perdedora') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pregoes`
--

CREATE TABLE `pregoes` (
  `id` int(11) NOT NULL,
  `numero_edital` varchar(255) NOT NULL,
  `numero_processo` varchar(255) DEFAULT NULL,
  `modalidade` varchar(255) NOT NULL,
  `orgao_comprador` varchar(255) NOT NULL,
  `local_disputa` varchar(255) DEFAULT NULL,
  `uasg` varchar(100) DEFAULT NULL,
  `objeto` text NOT NULL,
  `data_publicacao` date NOT NULL,
  `data_abertura` date DEFAULT NULL,
  `data_sessao` date DEFAULT NULL,
  `hora_sessao` time DEFAULT NULL,
  `status` enum('Em análise','Acolhimento de propostas','Adjudicado','Homologado','Revogado','Fracassado','Anulado','Suspenso') NOT NULL,
  `created_by_user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pregoes`
--

INSERT INTO `pregoes` (`id`, `numero_edital`, `numero_processo`, `modalidade`, `orgao_comprador`, `local_disputa`, `uasg`, `objeto`, `data_publicacao`, `data_abertura`, `data_sessao`, `hora_sessao`, `status`, `created_by_user_id`, `created_at`, `updated_at`) VALUES
(28, '90017/2025', '23536.025174/2024-18', 'Pregão Eletrônico', 'HOSPITAL DAS CLINICAS DE PERNAMBUCO', 'COMPRASNET', '155022', 'O objeto da presente licitação é a escolha da proposta mais vantajosa para aquisição de EQUIPAMENTOS MÉDICO HOSPITALARES, conforme condições, quantidades e exigências estabelecidas neste Edital e seus Anexos, visando atender as necessidades do Hospital das Clínicas de Pernambuco - Filial da EBSERH e do Hospital Universitário Professor Edgard Santos- Filial da EBSERH.', '2025-09-03', NULL, '2025-04-14', '10:00:00', 'Em análise', 6, '2025-09-03 12:26:47', '2025-09-03 12:26:47'),
(29, '90043/2025', '23536.003107/2025-23', 'Pregão Eletrônico', 'HOSPITAL DAS CLINICAS DE PERNAMBUCO', 'COMPRASNET', '155022 ', 'O objeto da presente licitação é a escolha da proposta mais vantajosa para aquisição de GRUPO 48 OPME\'S E OUTROS MATERIAIS HOSPITALARES (CARDIOLOGIA), COM EQUIPAMENTOS E ACESSÓRIOS EM REGIME DE COMODATO E DISPONIBILIZAÇÃO DE PROFISSIONAL PERFUSIONISTA, conforme condições, quantidades e exigências estabelecidas neste Edital e seus Anexos, visando atender as necessidades do Hospital das Clínicas de Pernambuco - Filial da EBSERH.', '2025-09-03', NULL, '2025-07-11', '10:00:00', 'Em análise', 6, '2025-09-03 16:40:22', '2025-09-03 16:41:13'),
(30, '94264/2024', 'E:04105.0000001553/2024', 'Pregão Eletrônico', 'AGENCIA DE MODERNIZACAO DA GEST. DE PROCESSOS', 'Comprasnet', '925998 ', 'O objeto da presente licitação é o registro de preços para futura e eventual AQUISIÇÃO DE OPME (CARDIOLOGIA-KIT CIRCULAÇÃO EXTRACORPÓREA), conforme condições, quantidades e exigências estabelecidas neste Edital e seus anexos.', '2025-10-29', NULL, '2025-10-20', '09:00:00', 'Homologado', 6, '2025-10-29 17:45:41', '2025-10-29 17:45:41'),
(31, '00028/2025', '250714PE00028', 'Pregão Eletrônico', 'PREFEITURA MUNICIPAL DE JERICÓ-PB', 'Portal de Compras Publicas', '', 'Contratação de empresas para fornecimento parcelado de MATERIAIS DE USO HOSPITALAR E ODONTOLÓGICO para atender as necessidades da Secretaria Municipal de Saúde de Jericó–PB.', '2025-10-29', NULL, '2025-07-29', '08:30:00', 'Homologado', 6, '2025-10-29 19:38:08', '2025-10-29 19:55:32'),
(32, '90015/2025', '0009950-66.2024.4.05.7000', 'Dispensa de Licitação', 'TRIBUNAL REGIONAL FEDERAL DA 5a REGIÃO', 'COMPRASNET', '090031', 'O objeto da presente dispensa é a escolha da proposta mais vantajosa para a aquisição de 1 (um) desfibrilador externo automático portátil, para uso no Tribunal Regional Federal da 5ª Região, conforme condições, quantidades e exigências estabelecidas neste Aviso de Contratação Direta e seus anexos.', '2025-10-29', NULL, '2025-05-06', '09:00:00', 'Homologado', 6, '2025-10-29 19:51:05', '2025-10-29 20:00:57'),
(33, '90046/2025', '23769.010705/2025-15', 'Pregão Eletrônico', 'HOSPITAL UNIVERSITÁRIO ALCIDES CARNEIRO (EBSERH)', 'COMPRASNET', '155914', 'Aquisição de MMH (Material para Cirurgia Cardíaca e Vascular - FRACASSADOS), conforme condições, quantidades e exigências estabelecidas no Edital e seus Anexos.).', '2025-10-29', NULL, '2025-09-17', '09:00:00', 'Adjudicado', 6, '2025-10-29 20:07:26', '2025-10-29 20:07:26'),
(34, '0124.2025', '4210.2025.CPL.HUOC.PE.0124.HUOC', 'Pregão Eletrônico', 'Hospital Universitário Oswaldo Cruz - HUOC/UPE', 'PE-INTEGRADO', '', 'A presente licitação tem como objeto a prestação de serviços de Locação de Sistema de Monitorização Hemodinâmica com Manutenção Preventiva, Corretiva e Reposição de Peças, conforme especificações e quantitativos previstos no Termo de Referência (Anexo I).', '2025-10-29', NULL, '2025-08-22', '09:00:00', 'Em análise', 6, '2025-10-29 20:30:39', '2025-10-29 20:36:58'),
(35, '90267/2025', '4234.2025.AC 70.PE.0267.SAD.HAM', 'Pregão Eletrônico', 'SECRETARIA DE ADMINISTRAÇÃO DO ESTADO DE PERNAMBUCO HAM – Hospital Agamenon Magalhães', 'COMPRASNET', '926150', 'A presente licitação tem como objeto Formação de Registro de Preços para o fornecimento eventual de OPME(s) do tipo material\r\nmédico hospitalar insumos para Circulação Extracorpórea com cessão em comodato de equipamentos, conforme especificações e quantitativos previstos no Termo de Referência (Anexo I), visando atender as necessidades do Hospital Agamenon\r\nMagalhães.', '2025-10-29', NULL, '2025-08-15', '09:00:00', 'Homologado', 6, '2025-10-29 20:44:06', '2025-10-29 20:44:06'),
(36, '0141/2025', '4294.2025.CPL.PROC.PE.0141.PROCAPE', 'Pregão Eletrônico', 'PROCAPE', 'PE Integrado', '', 'A presente licitação, solicitada através da CI 162/2025 - Divisão de Farmácia, que tem como objeto a formação de REGISTRO DE PREÇOS PARA EVENTUAL FORNECIMENTO PELO REGIME DE CONSIGNAÇÃO DE MATERIAL DE CONSUMO HOSPITALAR (BLOCO CIRÚRGICO - OXIGENADORES), conforme especificações e quantitativos previstos no Termo de Referência (Anexo I), para atender à demanda do PROCAPE.', '2025-11-12', NULL, '2025-11-13', '08:30:00', 'Acolhimento de propostas', 6, '2025-11-12 20:18:50', '2025-11-12 20:18:50'),
(37, '4585.2025.CCD.DL.0746.HR', '4585.2025.CCD.DL.0746.HR', 'Compra Direta', 'HR', 'PE Integrado', '', '(4994736) - SENSOR - PARA MONITOR,ADESIVO ADULTO BILATERAL, COM 4 ELETRODOS ATIVOS,COMPATIVEL COM MONITOR DE NIVEL DE CONSCIENCIA ', '2025-11-12', NULL, '2025-11-13', '16:55:00', 'Acolhimento de propostas', 6, '2025-11-12 20:21:10', '2025-11-12 20:21:10'),
(38, '90040/2025', '90040/2025', 'Pregão Eletrônico', 'HOSPITAL MILITAR DE ÁREA DE RECIFE', 'COMPRASNET', '160199 ', 'Aquisição de material permanente (equipamento médico -hospitalar) PASSEX 2026', '2025-11-12', NULL, '2025-11-25', '09:00:00', 'Acolhimento de propostas', 6, '2025-11-12 20:23:02', '2025-11-12 20:23:02');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos_consignacao`
--

CREATE TABLE `produtos_consignacao` (
  `id` int(11) NOT NULL,
  `pregao_id` int(11) DEFAULT 0,
  `fornecedor_id` int(11) DEFAULT 0,
  `numero_lote` varchar(50) DEFAULT NULL,
  `referencia` varchar(50) DEFAULT NULL,
  `lote_fabricacao` varchar(50) DEFAULT NULL,
  `lote` varchar(50) DEFAULT NULL,
  `produto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `produtos_consignacao`
--

INSERT INTO `produtos_consignacao` (`id`, `pregao_id`, `fornecedor_id`, `numero_lote`, `referencia`, `lote_fabricacao`, `lote`, `produto`, `created_at`) VALUES
(1, 0, 0, NULL, 'ALC542', NULL, NULL, 'CONJUNTO DE TUBOS INFANTIL C/FA CAVA DUPLA E BLISTER', '2025-12-09 17:41:56'),
(2, 0, 0, NULL, 'ALC830', NULL, '', 'SISTEMA DE CARDIOPLEGIA CRISTALOIDE ADULTO C/BOLSA', '2025-12-12 13:53:15'),
(3, 0, 0, NULL, 'CDR02', NULL, '', 'SISTEMA DE CARDIOPLEGIA CRISTALOIDE', '2025-12-12 13:54:02'),
(4, 0, 0, NULL, 'EDO39P', NULL, '', 'OXIGENADOR MEMB. VITAL ADULTO', '2025-12-12 13:54:20'),
(5, 0, 0, NULL, 'AG5214', NULL, '', 'OXIGENADOR MEMB. SKIPPER AF PLUS', '2025-12-12 13:54:51'),
(6, 0, 0, NULL, 'AG5232', NULL, '', 'OXIGENADOR MEMB. PEDIATRICO TRILLY AF', '2025-12-12 13:55:05'),
(7, 0, 0, NULL, 'CDO29', NULL, '', 'OXIGENADOR MEMB. PEDIATRICO THYMUS', '2025-12-12 13:55:21'),
(8, 0, 0, NULL, '50579', NULL, '', 'OXIGENADOR MEMB. PEDIATRICO LILLIPUT D902', '2025-12-12 13:55:38'),
(9, 0, 0, NULL, '50584', NULL, '', 'OXIGENADOR MEMB. PEDIATRICO KIDS D101', '2025-12-12 13:56:13'),
(10, 0, 0, NULL, 'BRZ+12345N', NULL, '', 'OXIGENADOR MEMB. NEONATO-BRIZIO', '2025-12-12 13:56:27'),
(11, 0, 0, NULL, '5319', NULL, '', 'OXIGENADOR MEMB. NEONATO LILLIPUT D901', '2025-12-12 13:57:04'),
(12, 0, 0, NULL, '50596', NULL, '', 'OXIGENADOR MEMB. NEONATO LILLIPUT D901 C RESERV - SORIN', '2025-12-12 13:57:18'),
(13, 0, 0, NULL, '50582', NULL, '', 'OXIGENADOR MEMB. NEONATO KIDS D100', '2025-12-12 13:57:41'),
(14, 0, 0, NULL, '50716', NULL, '', 'OXIGENADOR MEMB. ADULTO 8F', '2025-12-12 13:58:04'),
(15, 0, 0, NULL, '50714', NULL, '', 'OXIGENADOR MEMB. ADULTO 8', '2025-12-12 13:58:14'),
(16, 0, 0, NULL, 'BRZ+12345A', NULL, '', 'OXIGENADOR MEMB. ADULTO BRIZIO', '2025-12-12 13:58:30'),
(17, 0, 0, NULL, '50715', NULL, '', 'OXIGENADOR MEMB. ADULTO BAIXO PESO 6F', '2025-12-12 13:58:45'),
(18, 0, 0, NULL, '50713', NULL, '', 'OXIGENADOR MEMB. ADULTO BAIXO PESO 6', '2025-12-12 13:58:55'),
(19, 0, 0, NULL, 'CDK10', NULL, '', 'KIT CANULA ADULTO-NIPRO', '2025-12-12 13:59:16'),
(20, 0, 0, NULL, 'ALC400', NULL, '', 'KIT CANULA ADULTO', '2025-12-12 13:59:29'),
(21, 0, 0, NULL, 'M90006', NULL, '', 'HEMOCONCENTRADOR INFANTIL TUBOS E BOLSA - TERUMO', '2025-12-12 13:59:46'),
(22, 0, 0, NULL, 'BHCSET-030G', NULL, '', 'HEMOCONCENTRADOR INFANTIL -NIPRO', '2025-12-12 13:59:59'),
(23, 0, 0, NULL, 'ALC912', NULL, '', 'HEMOCONCENTRADOR INFANTIL', '2025-12-12 14:00:12'),
(24, 0, 0, NULL, 'BHC110', NULL, '', 'HEMOCONCENTRADOR ADULTO ALTO FLUXO', '2025-12-12 14:00:35'),
(25, 0, 0, NULL, 'ALC900', NULL, '', 'HEMOCONCENTRADOR ADULTO', '2025-12-12 14:00:58'),
(26, 0, 0, NULL, 'EDC2710', NULL, '', 'CONJUNTO DE TUBOS INFANTIL-NIPRO', '2025-12-12 14:01:24'),
(27, 0, 0, NULL, 'ALC564', NULL, '', 'CONJUNTO DE TUBOS INFANTIL S/FA CAVA DUPLA E BLISTER-S5', '2025-12-12 14:01:40'),
(28, 0, 0, NULL, 'CDBA82', NULL, '', 'CONJUNTO DE TUBOS INFANTIL -NIPRO', '2025-12-12 14:01:54'),
(29, 0, 0, NULL, 'ALC542', NULL, '', 'CONJUNTO DE TUBOS INFANTIL C/FA CAVA DUPLA E BLISTER', '2025-12-12 14:02:07'),
(30, 0, 0, NULL, 'ALC555', NULL, '', 'CONJUNTO DE TUBOS ADULTO S/FA CAVA DUPLA E BLISTER-S5', '2025-12-12 14:02:21'),
(31, 0, 0, NULL, 'ALC520', NULL, '', 'CONJUNTO DE TUBOS ADULTO S/FA CAVA DUPLA E BLISTER', '2025-12-12 14:02:39'),
(32, 0, 0, NULL, 'ED2986', NULL, '', 'CONJUNTO DE TUBOS ADULTO C/FA CAVA DUPLA', '2025-12-12 14:02:54'),
(33, 0, 0, NULL, '50300700', NULL, '', 'BOMBA CENTRIFUGA REV PHISIO', '2025-12-12 14:03:13'),
(34, 0, 0, NULL, 'BRB100', NULL, '', 'BOMBA CENTRIFLUX BRAILE', '2025-12-12 14:03:32');

-- --------------------------------------------------------

--
-- Estrutura para tabela `propostas`
--

CREATE TABLE `propostas` (
  `id` int(11) NOT NULL,
  `pregao_id` int(11) NOT NULL,
  `fornecedor_id` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `registration_tokens`
--

CREATE TABLE `registration_tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_used` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `registration_tokens`
--

INSERT INTO `registration_tokens` (`id`, `token`, `created_at`, `is_used`) VALUES
(26, '626783', '2025-09-09 20:47:22', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `perfil` enum('Admin','Padrao') NOT NULL DEFAULT 'Padrao',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `perfil`, `created_at`) VALUES
(6, 'Eduardo Cabral', 'licitacao@frpe.com.br', '$2y$10$DzXH9fZKYo3Q0.l9SBq1dO6TRa8I7UzsTtsPXq1XhbOvare20cluy', 'Admin', '2025-08-22 20:49:31'),
(7, 'Eduardo Cabral', 'eduardo@grupocabral.net.br', '$2y$10$zdoZBkA9y/l3UU9ARy0SjeUCyaF/Voo6ckwcALfZ2xjf8gkPPNs62', 'Admin', '2025-08-22 20:59:12'),
(16, 'FR PRODUTOS MEDICOS', 'frpe@frpe.com', '$2y$10$js0Y7MpB70S3v9YC0s9wSe/zgTvNH3adDOOGjiVUmND9EJOCQ91Hm', 'Padrao', '2025-09-03 11:33:15');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `afcs_consignado`
--
ALTER TABLE `afcs_consignado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Índices de tabela `anexos_pregao`
--
ALTER TABLE `anexos_pregao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pregao_id` (`pregao_id`);

--
-- Índices de tabela `cis_consignado`
--
ALTER TABLE `cis_consignado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Índices de tabela `consignados`
--
ALTER TABLE `consignados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pregao_id` (`pregao_id`);

--
-- Índices de tabela `consignado_afc`
--
ALTER TABLE `consignado_afc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `consignado_produto_id` (`consignado_produto_id`);

--
-- Índices de tabela `consignado_afcs`
--
ALTER TABLE `consignado_afcs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `consignado_id` (`consignado_id`);

--
-- Índices de tabela `consignado_ci`
--
ALTER TABLE `consignado_ci`
  ADD PRIMARY KEY (`id`),
  ADD KEY `consignado_produto_id` (`consignado_produto_id`);

--
-- Índices de tabela `consignado_produtos`
--
ALTER TABLE `consignado_produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `consignado_id` (`consignado_id`);

--
-- Índices de tabela `email_queue`
--
ALTER TABLE `email_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Índices de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `historico_movimentacoes`
--
ALTER TABLE `historico_movimentacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `itens_pregoes`
--
ALTER TABLE `itens_pregoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pregao_id` (`pregao_id`),
  ADD KEY `fornecedor_id` (`fornecedor_id`);

--
-- Índices de tabela `logs_atividades`
--
ALTER TABLE `logs_atividades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Índices de tabela `notificacoes`
--
ALTER TABLE `notificacoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_destino_id` (`usuario_destino_id`);

--
-- Índices de tabela `observacoes_pregao`
--
ALTER TABLE `observacoes_pregao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pregao_id` (`pregao_id`);

--
-- Índices de tabela `pregao_fornecedor`
--
ALTER TABLE `pregao_fornecedor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fornecedor_id` (`fornecedor_id`),
  ADD KEY `idx_pregao_fornecedor` (`pregao_id`,`fornecedor_id`);

--
-- Índices de tabela `pregoes`
--
ALTER TABLE `pregoes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `numero_edital` (`numero_edital`),
  ADD KEY `idx_created_by` (`created_by_user_id`);

--
-- Índices de tabela `produtos_consignacao`
--
ALTER TABLE `produtos_consignacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_prod_pregao` (`pregao_id`);

--
-- Índices de tabela `propostas`
--
ALTER TABLE `propostas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pregao_id` (`pregao_id`);

--
-- Índices de tabela `registration_tokens`
--
ALTER TABLE `registration_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `afcs_consignado`
--
ALTER TABLE `afcs_consignado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `anexos_pregao`
--
ALTER TABLE `anexos_pregao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cis_consignado`
--
ALTER TABLE `cis_consignado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `consignados`
--
ALTER TABLE `consignados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `consignado_afc`
--
ALTER TABLE `consignado_afc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `consignado_afcs`
--
ALTER TABLE `consignado_afcs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `consignado_ci`
--
ALTER TABLE `consignado_ci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `consignado_produtos`
--
ALTER TABLE `consignado_produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `email_queue`
--
ALTER TABLE `email_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `historico_movimentacoes`
--
ALTER TABLE `historico_movimentacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `itens_pregoes`
--
ALTER TABLE `itens_pregoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de tabela `logs_atividades`
--
ALTER TABLE `logs_atividades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT de tabela `notificacoes`
--
ALTER TABLE `notificacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=994;

--
-- AUTO_INCREMENT de tabela `observacoes_pregao`
--
ALTER TABLE `observacoes_pregao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `pregao_fornecedor`
--
ALTER TABLE `pregao_fornecedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pregoes`
--
ALTER TABLE `pregoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de tabela `produtos_consignacao`
--
ALTER TABLE `produtos_consignacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `propostas`
--
ALTER TABLE `propostas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `registration_tokens`
--
ALTER TABLE `registration_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `afcs_consignado`
--
ALTER TABLE `afcs_consignado`
  ADD CONSTRAINT `afcs_consignado_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `itens_pregoes` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cis_consignado`
--
ALTER TABLE `cis_consignado`
  ADD CONSTRAINT `cis_consignado_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `itens_pregoes` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `consignados`
--
ALTER TABLE `consignados`
  ADD CONSTRAINT `consignados_ibfk_1` FOREIGN KEY (`pregao_id`) REFERENCES `pregoes` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `consignado_afc`
--
ALTER TABLE `consignado_afc`
  ADD CONSTRAINT `consignado_afc_ibfk_1` FOREIGN KEY (`consignado_produto_id`) REFERENCES `consignado_produtos` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `consignado_afcs`
--
ALTER TABLE `consignado_afcs`
  ADD CONSTRAINT `consignado_afcs_ibfk_1` FOREIGN KEY (`consignado_id`) REFERENCES `consignados` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `consignado_ci`
--
ALTER TABLE `consignado_ci`
  ADD CONSTRAINT `consignado_ci_ibfk_1` FOREIGN KEY (`consignado_produto_id`) REFERENCES `consignado_produtos` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `consignado_produtos`
--
ALTER TABLE `consignado_produtos`
  ADD CONSTRAINT `consignado_produtos_ibfk_1` FOREIGN KEY (`consignado_id`) REFERENCES `consignados` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `logs_atividades`
--
ALTER TABLE `logs_atividades`
  ADD CONSTRAINT `logs_atividades_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `notificacoes`
--
ALTER TABLE `notificacoes`
  ADD CONSTRAINT `notificacoes_ibfk_1` FOREIGN KEY (`usuario_destino_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `pregao_fornecedor`
--
ALTER TABLE `pregao_fornecedor`
  ADD CONSTRAINT `pregao_fornecedor_ibfk_1` FOREIGN KEY (`pregao_id`) REFERENCES `pregoes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pregao_fornecedor_ibfk_2` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedores` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `pregoes`
--
ALTER TABLE `pregoes`
  ADD CONSTRAINT `pregoes_ibfk_1` FOREIGN KEY (`created_by_user_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
