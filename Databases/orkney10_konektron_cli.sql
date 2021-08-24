-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 24-Ago-2021 às 18:52
-- Versão do servidor: 5.7.23-23
-- versão do PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `orkney10_konektron_cli`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `address`
--

CREATE TABLE `address` (
  `id_address` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `as_address` varchar(200) DEFAULT NULL,
  `as_number` varchar(100) DEFAULT NULL,
  `as_block` varchar(255) NOT NULL,
  `as_city` varchar(255) NOT NULL,
  `as_uf` varchar(2) NOT NULL,
  `as_complement` varchar(200) DEFAULT NULL,
  `as_cep` int(11) DEFAULT NULL,
  `as_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `as_modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `address`
--

INSERT INTO `address` (`id_address`, `id_users`, `as_address`, `as_number`, `as_block`, `as_city`, `as_uf`, `as_complement`, `as_cep`, `as_created`, `as_modified`) VALUES
(1, 1, 'Servidão Silvino Izidoro Pires', '701', 'Armação do Pântano do Sul', 'Florianópolis', 'SC', 'casa', 88066345, '2020-04-30 17:45:21', NULL),
(2, 2, 'Rua Camões', '711', 'Alto da Rua XV', 'Curitiba', 'PR', 'apto 201', 80045260, '2020-04-30 17:45:21', NULL),
(3, 3, 'Rua Góis de Araújo', '622', 'Vila Dom Pedro II', 'São Paulo', 'SP', 'Casa Verde 1', 2243070, '2020-05-07 21:11:01', '2020-05-07 21:11:01'),
(39, 8, 'Rua Guaporé', '621', 'Balneário Remanso', 'Rio das Ostras', 'RJ', 'Casa', 28893108, '2020-05-07 22:26:21', '2020-05-07 22:26:21');

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `id_auth` int(11) NOT NULL,
  `ad_name` varchar(200) DEFAULT NULL,
  `ad_nickname` varchar(200) NOT NULL,
  `ad_picture` varchar(200) DEFAULT NULL,
  `ad_natId` bigint(20) DEFAULT NULL,
  `ad_address` varchar(200) DEFAULT NULL,
  `ad_number` varchar(100) DEFAULT NULL,
  `ad_complement` varchar(100) DEFAULT NULL,
  `ad_cep` int(11) DEFAULT NULL,
  `ad_phone` bigint(20) DEFAULT NULL,
  `ad_email` varchar(200) NOT NULL,
  `ad_password` varchar(100) NOT NULL,
  `ad_token` varchar(255) DEFAULT NULL,
  `ad_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ad_modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id_admin`, `id_auth`, `ad_name`, `ad_nickname`, `ad_picture`, `ad_natId`, `ad_address`, `ad_number`, `ad_complement`, `ad_cep`, `ad_phone`, `ad_email`, `ad_password`, `ad_token`, `ad_created`, `ad_modified`) VALUES
(1, 3, 'admin_konektron', 'Adm_Konektron', 'https://konektron.orkneytech.com.br/app_web/images/avatar/logo-konektron.png', NULL, NULL, NULL, NULL, NULL, NULL, 'orkneytech@orkneytech.com.br', 'NitIQlzH', NULL, '2019-06-26 19:21:05', NULL),
(2, 3, 'Ivam Galvao Filho', 'Ivam_GF', 'https://konektron.orkneytech.com.br/app_web/images/avatar/avatar_masc.png', 3385867924, 'Rua Pedro Alves', '152', 'apto 302', 88110475, 48984127518, 'ivam@orkneytech.com.br', '3Wo7x6Jy', '4d756258197f10fca4671b18e25412a9', '2019-06-26 19:21:05', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `authorization`
--

CREATE TABLE `authorization` (
  `id_auth` int(11) NOT NULL,
  `au_type` varchar(100) NOT NULL,
  `au_token_private` varchar(100) NOT NULL,
  `au_token_public` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `authorization`
--

INSERT INTO `authorization` (`id_auth`, `au_type`, `au_token_private`, `au_token_public`) VALUES
(1, 'users', '52112632561b7d19fc775b47d4e752b50053e61d', 'd633e0a4e9158b7b364b685aae782d2bb548b03d'),
(2, 'providers', '971b7e412c11e19fcf15b01f4e8766a6fd6706b3', 'feaca5cda6f6a8954042eb5e2b73ac82edf59992'),
(3, 'admin', 'd633e0a4e9158b7b364b685aae782d2bb548b03d', 'f5f78d2998814ab550ab002e7905df5ac229e9dc');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cards`
--

CREATE TABLE `cards` (
  `id_cards` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `ca_number` bigint(20) NOT NULL,
  `ca_validity` varchar(10) NOT NULL,
  `ca_cod` int(3) NOT NULL,
  `ca_brand` varchar(100) NOT NULL,
  `ca_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ca_modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cards`
--

INSERT INTO `cards` (`id_cards`, `id_users`, `ca_name`, `ca_number`, `ca_validity`, `ca_cod`, `ca_brand`, `ca_created`, `ca_modified`) VALUES
(11, 8, 'Card 2', 123456, '321654', 123, 'caf1a3dfb505ffed0d024130f58c5cfa', '2020-05-06 13:34:26', '2020-05-06 13:34:26'),
(12, 8, 'Card 2', 132, '123', 123, 'caf1a3dfb505ffed0d024130f58c5cfa', '2020-05-05 22:49:21', '2020-05-05 22:49:21'),
(15, 8, 'Card 2', 132, '123', 123, 'caf1a3dfb505ffed0d024130f58c5cfa', '2020-05-07 22:26:52', '2020-05-07 22:26:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `ct_title` varchar(255) NOT NULL,
  `ct_description` varchar(255) DEFAULT NULL,
  `ct_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ct_modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `category`
--

INSERT INTO `category` (`id_category`, `ct_title`, `ct_description`, `ct_created`, `ct_modified`) VALUES
(1, 'Massoterapia', 'Serviços de Massoterapia.', '2020-05-07 19:29:40', '2020-05-07 22:29:40'),
(2, 'Estética', 'Serviços de Beleza e Estética', '2020-04-30 17:43:51', '2020-04-30 17:43:51'),
(3, 'Cabeleireiro', 'Serviços de Beleza e Cabeleireiro', '2020-04-30 17:43:51', '2020-04-30 17:43:51'),
(4, 'Maqueadora', 'Serviços de Beleza e Estética para Maquiagem', '2020-05-05 00:25:03', '2020-05-05 00:25:03'),
(6, 'Maqueadora', 'Serviços de Beleza e Estética para Maquiagem. ', '2020-05-06 14:12:09', '2020-05-06 14:12:09'),
(9, 'Maqueadora', 'Serviços de Beleza e Estética para Maquiagem', '2020-05-07 22:29:36', '2020-05-07 22:29:36');

-- --------------------------------------------------------

--
-- Estrutura da tabela `category_aux`
--

CREATE TABLE `category_aux` (
  `id_category_aux` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_service` int(11) DEFAULT NULL,
  `cx_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cx_modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `category_aux`
--

INSERT INTO `category_aux` (`id_category_aux`, `id_category`, `id_service`, `cx_created`, `cx_modified`) VALUES
(1, 1, 3, '2020-05-07 19:30:09', '2020-05-07 22:30:09'),
(4, 1, 3, '2020-05-07 19:30:04', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `logs`
--

CREATE TABLE `logs` (
  `id_log` int(11) NOT NULL,
  `id_users` int(11) DEFAULT NULL,
  `id_providers` int(11) DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `lo_type` varchar(100) NOT NULL,
  `lo_description` varchar(255) NOT NULL,
  `lo_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lo_modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `logs`
--

INSERT INTO `logs` (`id_log`, `id_users`, `id_providers`, `id_admin`, `lo_type`, `lo_description`, `lo_created`, `lo_modified`) VALUES
(3, 8, NULL, NULL, 'notify', 'Teste log', '2020-05-05 18:22:17', '2020-05-05 18:22:17'),
(4, 8, NULL, NULL, 'notify', 'Teste log', '2020-05-05 22:51:10', '2020-05-05 22:51:10'),
(5, 8, NULL, NULL, 'notify', 'Teste log', '2020-05-05 22:51:35', '2020-05-05 22:51:35'),
(6, 8, NULL, NULL, 'notify', 'Teste log', '2020-05-06 13:41:17', '2020-05-06 13:41:17'),
(7, 8, NULL, NULL, 'notify', 'Teste log 1', '2020-05-07 17:09:17', '2020-05-07 17:09:17'),
(8, 8, NULL, NULL, 'notify', 'Teste log', '2020-05-07 22:27:19', '2020-05-07 22:27:19'),
(9, 8, NULL, NULL, 'notify', 'Teste log', '2020-05-07 21:14:57', '2020-05-07 21:14:57');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `id_payment` int(11) NOT NULL,
  `or_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `or_modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `orders`
--

INSERT INTO `orders` (`id_order`, `id_users`, `id_payment`, `or_created`, `or_modified`) VALUES
(4, 8, 3, '2020-05-07 17:16:17', '2020-05-07 17:16:17'),
(5, 8, 3, '2020-05-05 22:52:36', '2020-05-05 22:52:36'),
(8, 8, 3, '2020-05-07 22:27:33', '2020-05-07 22:27:33');

-- --------------------------------------------------------

--
-- Estrutura da tabela `payment`
--

CREATE TABLE `payment` (
  `id_payment` int(11) NOT NULL,
  `id_users` int(11) DEFAULT NULL,
  `id_service` int(11) DEFAULT NULL,
  `id_cards` int(11) DEFAULT NULL,
  `pa_quant` int(11) NOT NULL,
  `pa_value` decimal(11,2) NOT NULL,
  `pa_type` varchar(255) NOT NULL,
  `pa_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pa_modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `payment`
--

INSERT INTO `payment` (`id_payment`, `id_users`, `id_service`, `id_cards`, `pa_quant`, `pa_value`, `pa_type`, `pa_created`, `pa_modified`) VALUES
(3, 8, 1, 11, 10, 5.90, 'money', '2020-05-05 18:23:27', '2020-05-05 18:23:27'),
(4, 8, 1, 11, 10, 6.99, 'money', '2020-05-07 19:28:18', '2020-05-07 22:28:18'),
(7, 8, 1, 11, 10, 5.90, 'money', '2020-05-07 22:27:57', '2020-05-07 22:27:57');

-- --------------------------------------------------------

--
-- Estrutura da tabela `profiles`
--

CREATE TABLE `profiles` (
  `id_profile` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `pf_name` varchar(200) DEFAULT NULL,
  `pf_nickname` varchar(100) DEFAULT NULL,
  `pf_picture` varchar(200) DEFAULT NULL,
  `pf_gender` varchar(100) NOT NULL,
  `pf_natId` bigint(20) DEFAULT NULL,
  `pf_phone` bigint(20) DEFAULT NULL,
  `pf_birthday` date DEFAULT NULL,
  `pf_balance` decimal(11,2) DEFAULT NULL,
  `pf_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pf_modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `profiles`
--

INSERT INTO `profiles` (`id_profile`, `id_users`, `pf_name`, `pf_nickname`, `pf_picture`, `pf_gender`, `pf_natId`, `pf_phone`, `pf_birthday`, `pf_balance`, `pf_created`, `pf_modified`) VALUES
(1, 1, 'Cauã Eduardo Kevin Costa', 'caua_ekc', 'https://konektron.orkneytech.com.br/app_web/images/avatar/avatar_masc.png', 'masculino', 54953151976, 4827167482, '0000-00-00', 0.00, '2020-04-30 17:43:54', '2020-04-30 17:43:54'),
(2, 2, 'Theo Sérgio Bernardes', 'theo_sb', 'https://konektron.orkneytech.com.br/app_web/images/avatar/avatar_masc.png', 'masculino', 61446908917, 41996651587, '0000-00-00', 0.00, '2020-04-30 17:43:54', '2020-04-30 17:43:54'),
(3, 3, 'Sônia Sara Lara Melo', 'sonia_slm', 'https://konektron.orkneytech.com.br/app_web/images/avatar/avatar_fem.png', 'feminino', 61446908917, 54999035702, '1987-03-25', 1000.00, '2020-05-06 14:07:11', '2020-05-06 14:07:11'),
(7, 8, 'Daniela Sara Joana Lima', 'daniela', 'https://konektron.orkneytech.com.br/app_web/images/avatar/avatar_tr4ctor.png', 'masculino', 61446908917, 54999035702, '1987-03-25', 1000.00, '2020-05-07 19:29:17', '2020-05-07 22:29:17'),
(10, 8, 'Daniela Sara Joana Lima', 'daniela', 'https://konektron.orkneytech.com.br/app_web/images/avatar/avatar_tr4ctor.png', 'feminino', 36497749845, 9626152728, '1994-04-14', 1.81, '2020-05-07 22:29:00', '2020-05-07 22:29:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `providers`
--

CREATE TABLE `providers` (
  `id_providers` int(11) NOT NULL,
  `id_auth` int(11) NOT NULL,
  `pr_name` varchar(200) NOT NULL,
  `pr_logo` varchar(200) DEFAULT NULL,
  `pr_natId` bigint(20) DEFAULT NULL,
  `pr_ie` bigint(20) DEFAULT NULL,
  `pr_address` varchar(200) NOT NULL,
  `pr_number` varchar(100) DEFAULT NULL,
  `pr_block` varchar(255) NOT NULL,
  `pr_city` varchar(255) NOT NULL,
  `pr_uf` varchar(255) NOT NULL,
  `pr_complement` varchar(100) DEFAULT NULL,
  `pr_cep` int(11) NOT NULL,
  `pr_phone` bigint(20) NOT NULL,
  `pr_site` varchar(200) DEFAULT NULL,
  `pr_email` varchar(200) NOT NULL,
  `pr_password` varchar(100) NOT NULL,
  `pr_balance` decimal(11,2) DEFAULT NULL,
  `pr_token` varchar(255) DEFAULT NULL,
  `pr_token_forgot` varchar(255) DEFAULT NULL,
  `pr_status` varchar(9) NOT NULL,
  `pr_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pr_modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `providers`
--

INSERT INTO `providers` (`id_providers`, `id_auth`, `pr_name`, `pr_logo`, `pr_natId`, `pr_ie`, `pr_address`, `pr_number`, `pr_block`, `pr_city`, `pr_uf`, `pr_complement`, `pr_cep`, `pr_phone`, `pr_site`, `pr_email`, `pr_password`, `pr_balance`, `pr_token`, `pr_token_forgot`, `pr_status`, `pr_created`, `pr_modified`) VALUES
(1, 2, 'Breno e Lorenzo Gráfica ME', 'https://konektron.orkneytech.com.br/app_web/images/avatar/logo_1.png', 22327770000186, 763606537, 'Avenida Governador Adolfo Konder', '896', 'São Vicente', 'Itajaí', 'SC', '', 88308000, 4728874680, 'www.brenoelorenzograficame.com.br', 'administracao@brenoelorenzograficame.com.br', '2AMre0U5', NULL, NULL, NULL, '', '2019-06-26 19:25:44', '2019-06-26 19:25:44'),
(2, 2, 'Sophia e Edson Vidros Ltda', 'https://konektron.orkneytech.com.br/app_web/images/avatar/logo_2.png', 19606054000123, 765257924, 'Rua Lucarana', '870', 'Cidade Nova São Miguel', 'São Paulo', 'SP', NULL, 8042450, 1139088653, 'www.sophiaeedsonvidrosltda.com.br', 'ti@sophiaeedsonvidrosltda.com.br', 'KbJ6KGGo', NULL, NULL, NULL, '', '2019-06-26 19:25:44', '2019-06-26 19:25:44'),
(3, 2, 'Lucca e Benjamin Locações de Automóveis Ltda', 'https://konektron.orkneytech.com.br/app_web/images/avatar/logo_3.png', 89539750000140, 705868958, 'Rua Nicolau José de Souza', '887', 'Espinheiros', 'Joinville', 'SC', NULL, 89228740, 4725783313, 'www.luccaebenjaminlocacoesdeautomoveisltda.com.br', 'ouvidoria@luccaebenjaminlocacoesdeautomoveisltda.com.br', 'yLmtZ1T6', NULL, NULL, NULL, '', '2019-06-26 19:25:44', '2019-06-26 19:25:44'),
(4, 2, 'Lívia e Sophia Entregas Expressas Ltda', 'https://konektron.orkneytech.com.br/app_web/images/avatar/logo_1.png', 58004870000119, 287528723824, 'Travessa Marco Cavazzoni', '918', 'Americanópolis', 'São Paulo', 'SP', NULL, 4429120, 5430282803, 'www.liviaesophiaentregasexpressasltda.com.br', 'ramon@barros.cc', '$2y$10$DXR1wOzWjjxjGq73hAUwxuNmKEWJl9aZuT8CK3BMVkX8G/7tB9Pxe', 0.00, '9906bf041c1ff38b719710dfc787b7d0', '07cbfb9a057d230277fed21e96e3fb49', 'active', '2020-05-06 14:37:58', NULL),
(7, 2, 'Ivam', 'https://konektron.orkneytech.com.br/app_web/images/avatar/logo_1.png', 58004870000119, 287528723824, 'Rua', '918', 'Americanópolis', 'São Paulo', 'SP', NULL, 4429120, 5430282803, 'www.ivam.com.br', 'ivam@orkneytech.com.br', '$2y$10$dSN7l/pRSDNWszxHErJkJ.CfTwhE7.5cVWEULYfOL4P3KZvYn9V7i', 0.00, 'f48a6b642ea64396419762c837ab38c5', NULL, 'active', '2020-05-07 19:24:03', NULL),
(11, 2, 'Ivam', 'https://konektron.orkneytech.com.br/app_web/images/avatar/logo_1.png', 58004870000119, 287528723824, 'Rua', '918', 'Americanópolis', 'São Paulo', 'SP', NULL, 4429120, 5430282803, 'www.orkneytech.com.br', 'ivam.developer@gmail.com', '$2y$10$bhRN3pgWfrjcBYNu6eIJ.eSb8wIHnmKCA5KoFeeYTu8wkO1dLOEHS', 0.00, '9b3efc5aa3d5150db9f4abad51ab8fa5', '186728f231c67a39b8d5317f770578cb', 'active', '2020-05-07 21:06:50', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `schedule`
--

CREATE TABLE `schedule` (
  `id_schedule` int(11) NOT NULL,
  `sc_date` date NOT NULL,
  `sc_hour` time NOT NULL,
  `sc_value` decimal(11,2) NOT NULL,
  `sc_status` varchar(255) NOT NULL,
  `sc_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sc_modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `schedule`
--

INSERT INTO `schedule` (`id_schedule`, `sc_date`, `sc_hour`, `sc_value`, `sc_status`, `sc_created`, `sc_modified`) VALUES
(1, '2020-04-20', '13:30:00', 97.90, 'active', '2020-05-05 00:27:27', '2020-05-05 00:27:27'),
(2, '2020-04-20', '13:30:00', 97.99, 'active', '2020-05-07 19:33:18', '2020-05-07 22:33:17'),
(5, '2020-04-20', '13:30:00', 97.90, 'active', '2020-05-07 22:32:55', '2020-05-07 22:32:55');

-- --------------------------------------------------------

--
-- Estrutura da tabela `schedule_aux`
--

CREATE TABLE `schedule_aux` (
  `id_schedule_aux` int(11) NOT NULL,
  `id_schedule` int(11) NOT NULL,
  `id_service` int(11) DEFAULT NULL,
  `id_users` int(11) DEFAULT NULL,
  `id_providers` int(11) DEFAULT NULL,
  `sa_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sa_modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `schedule_aux`
--

INSERT INTO `schedule_aux` (`id_schedule_aux`, `id_schedule`, `id_service`, `id_users`, `id_providers`, `sa_created`, `sa_modified`) VALUES
(1, 2, 3, 3, 3, '2020-05-07 19:34:51', '2020-05-07 22:34:51'),
(4, 2, 3, 8, 4, '2020-05-07 19:33:55', '2020-05-07 22:33:54'),
(5, 2, 3, 8, 3, '2020-05-07 19:34:42', '2020-05-07 22:34:42');

-- --------------------------------------------------------

--
-- Estrutura da tabela `services`
--

CREATE TABLE `services` (
  `id_service` int(11) NOT NULL,
  `id_providers` int(11) NOT NULL,
  `sv_name` varchar(200) NOT NULL,
  `sv_codigo` varchar(255) NOT NULL,
  `sv_description` varchar(500) NOT NULL,
  `sv_image` varchar(200) NOT NULL,
  `sv_oldprice` decimal(11,2) NOT NULL,
  `sv_bestprice` decimal(11,2) NOT NULL,
  `sv_discount` decimal(11,2) NOT NULL,
  `sv_infotec` varchar(500) NOT NULL,
  `sv_infocomp` varchar(500) NOT NULL,
  `sv_ean` varchar(255) NOT NULL,
  `sv_gtin` varchar(255) NOT NULL,
  `sv_tag` varchar(255) NOT NULL,
  `sv_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sv_modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `services`
--

INSERT INTO `services` (`id_service`, `id_providers`, `sv_name`, `sv_codigo`, `sv_description`, `sv_image`, `sv_oldprice`, `sv_bestprice`, `sv_discount`, `sv_infotec`, `sv_infocomp`, `sv_ean`, `sv_gtin`, `sv_tag`, `sv_created`, `sv_modified`) VALUES
(1, 4, 'Serviço 2', 'S123', 'Serviço 2', '', 30.00, 10.00, 20.00, 'Informação técnica', 'Informação complementar', 'A1234565BC', 'ASD6546513', 'servico,teste,um', '2020-05-05 15:03:58', '2020-05-05 15:03:58'),
(2, 4, 'Serviço 2', 'S123', 'Serviço 2', '', 30.00, 10.00, 20.00, 'Informação técnica', 'Informação complementar', 'A1234565BC', 'ASD6546513', 'servico,teste,um', '2020-05-05 15:04:13', '2020-05-05 15:04:13'),
(3, 4, 'Serviço 3', 'S321', 'Serviço 3', '', 30.00, 10.00, 20.00, 'Informação técnica', 'Informação complementar', 'AB321654', 'ACB123456', 'servico,teste,um,dois,tres', '2020-05-06 14:17:55', '2020-05-05 15:05:07'),
(4, 4, 'Serviço 4', 'S321', 'Serviço 4', '', 30.00, 10.00, 20.00, 'Informação técnica', 'Informação complementar', 'AB321654', 'ACB123456', 'servico,teste,um,dois,tres', '2020-05-05 18:26:47', NULL),
(5, 4, 'Serviço 4', 'S321', 'Serviço 4', '', 30.00, 10.00, 20.00, 'Informação técnica', 'Informação complementar', 'AB321654', 'ACB123456', 'servico,teste,um,dois,tres', '2020-05-07 19:31:24', NULL),
(8, 4, 'Serviço 2', 'S123', 'Serviço 2', '', 30.00, 10.00, 20.00, 'Informação técnica', 'Informação complementar', 'A1234565BC', 'ASD6546513', 'servico,teste,um', '2020-05-07 19:30:37', NULL),
(9, 4, 'Serviço 2', 'S123', 'Serviço 2', '', 30.00, 10.00, 20.00, 'Informação técnica', 'Informação complementar', 'A1234565BC', 'ASD6546513', 'servico,teste,um', '2020-05-07 19:31:05', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `settings`
--

CREATE TABLE `settings` (
  `id_setting` int(11) NOT NULL,
  `st_group` varchar(100) DEFAULT NULL,
  `st_description` varchar(255) NOT NULL,
  `st_param` varchar(255) NOT NULL,
  `st_value` varchar(255) NOT NULL,
  `st_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `st_modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `settings`
--

INSERT INTO `settings` (`id_setting`, `st_group`, `st_description`, `st_param`, `st_value`, `st_created`, `st_modified`) VALUES
(1, 'email', 'Protocolo do e-mail ', 'protocol', 'smtp', '2020-05-04 13:51:13', NULL),
(2, 'email', 'Host SMTP', 'smtp_host', 'mail.orkneytech.com.br', '2020-05-04 19:03:15', NULL),
(3, 'email', 'Porta STMP', 'smtp_port', '465', '2020-05-04 19:03:45', NULL),
(4, 'email', 'Usuário STMP', 'smtp_user', 'contatos@orkneytech.com.br', '2020-05-04 19:04:40', NULL),
(5, 'email', 'Senha STMP', 'smtp_pass', 'Orkneytech10106088', '2020-05-04 19:04:55', NULL),
(6, 'email', 'Crypto SMTP', 'smtp_crypto', 'ssl', '2020-05-04 19:05:11', NULL),
(7, 'email', 'Charset SMTP', 'smtp_charset', 'utf-8', '2020-05-04 14:05:34', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `id_auth` int(11) NOT NULL,
  `us_email` varchar(200) NOT NULL,
  `us_password` varchar(100) NOT NULL,
  `us_status` varchar(9) NOT NULL,
  `us_token` varchar(255) DEFAULT NULL,
  `us_token_forgot` varchar(255) DEFAULT NULL,
  `us_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `us_modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id_users`, `id_auth`, `us_email`, `us_password`, `us_status`, `us_token`, `us_token_forgot`, `us_created`, `us_modified`) VALUES
(1, 1, 'cauaeduardokevincosta@eletrotex.com.br', '$2y$10$eQn3cZLw8pcw70.Zt7axdue1/FhrDaqJOYd/oxhXnsBGdy4yH9G3W', 'active', 'aa0dee8723a1a9a0a14d22ec1b46c044', '', '2019-11-16 18:00:43', '0000-00-00 00:00:00'),
(2, 1, 'theosergiobernardes-95@prifree.fr', '$2y$10$dagr17kKLIwJQqjkrQE9TevIwE7v/z8f1jqU/vZ0tvL.ShfsiRuW6', 'active', 'e72288b103e85213718bf297b44874f9', '', '2019-11-16 18:00:52', '0000-00-00 00:00:00'),
(3, 1, 'soniasaralaramelo-98@viacorte.com.br', '$2y$10$pqzEcVovgcx7bQpbH66kHOFaJWMLJXajOjH8Ikmnn.CXTiqjz6ZCm', 'active', 'cf0180293c8f2fd853f8fc7a035e0a97', '', '2019-11-16 18:01:00', '0000-00-00 00:00:00'),
(4, 1, 'ivam@orkneytech.com.br', '$2y$10$g2Gl9k3vp91gCH999Y.z/uTyf0gzihO8ql/RUV9y62sL4TmrLgUWa', 'active', 'bda577933746b183be15a8da801e56b3', '', '2020-05-07 16:16:23', '2019-11-16 17:31:06'),
(5, 3, 'orkneytech@orkneytech.com.br', '$2y$10$SQY4NupOHQDA5.l2Jgpkd.PMUrPgNkW4yWX8pBLQ3li/tnPtbXGDy', 'active', 'a69d3e5caf025d9c1229b2ace333bc68', '', '2019-11-16 18:01:17', '2019-11-16 17:34:22'),
(6, 3, 'contato@orkneytech.com.br', '$2y$10$MwK2FdF1VaryXREva/qDl.p42PvD4ROanxzmbMFDzSJbHrciuRn5m', 'active', 'a953cfbe3fcd31330af7df29c4bef3ae', '', '2019-11-16 19:14:36', '2019-11-16 17:34:38'),
(7, 2, 'greicegalvao37@gmail.com', '$2y$10$3qZVm8kAi9isUxKkVlReaee/woHgrhGjND0QtfcIf2Orvo2Gp6uWq', 'active', 'c85d0b5880b986835b2dbfafd29682ba', '', '2019-11-16 18:40:49', '2019-11-16 18:19:47'),
(8, 1, 'ramon@barros.cc', '$2y$10$zmrpqRD/rJkkswOeq6voe.92YC/LP5B1vcG05ZFIBu27k/cBWC35O', 'active', '9452db4a55e2d3f1b43d4262fccf7013', '', '2020-05-07 18:49:36', NULL),
(18, 1, 'example@example.com', '$2y$10$Z03/HTXbSwy2m392CDoFXu5hhMLSWHz9mEbH0YMIjy8qil7hKA8wq', 'inactive', 'd91c98d74ca3341fa438bd9a0f3eab10', NULL, '2020-05-07 19:09:58', NULL),
(26, 1, 'ivam.developer@gmail.com', '$2y$10$EiEu7Ufhn5jjfuTAQX8PT.DUXySOHuThZf7yh.9jgq30oHR8gisPu', 'active', '55988cabac41e9a4e910b77182936780', 'be6fc1b4632dc37fdd2d112bc5a51370', '2020-05-07 21:06:32', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id_address`),
  ADD KEY `id_users` (`id_users`);

--
-- Índices para tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `auth` (`id_auth`);

--
-- Índices para tabela `authorization`
--
ALTER TABLE `authorization`
  ADD PRIMARY KEY (`id_auth`);

--
-- Índices para tabela `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id_cards`),
  ADD KEY `id_users` (`id_users`);

--
-- Índices para tabela `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Índices para tabela `category_aux`
--
ALTER TABLE `category_aux`
  ADD PRIMARY KEY (`id_category_aux`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_service` (`id_service`);

--
-- Índices para tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_users` (`id_users`),
  ADD KEY `id_providers` (`id_providers`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Índices para tabela `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_payment` (`id_payment`),
  ADD KEY `id_users` (`id_users`);

--
-- Índices para tabela `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id_payment`),
  ADD KEY `id_users` (`id_users`),
  ADD KEY `id_service` (`id_service`),
  ADD KEY `id_cards` (`id_cards`);

--
-- Índices para tabela `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id_profile`),
  ADD KEY `id_users` (`id_users`);

--
-- Índices para tabela `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id_providers`),
  ADD UNIQUE KEY `pr_email` (`pr_email`),
  ADD KEY `auth` (`id_auth`);

--
-- Índices para tabela `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id_schedule`);

--
-- Índices para tabela `schedule_aux`
--
ALTER TABLE `schedule_aux`
  ADD PRIMARY KEY (`id_schedule_aux`),
  ADD KEY `id_schedule` (`id_schedule`),
  ADD KEY `id_services` (`id_service`),
  ADD KEY `id_users` (`id_users`),
  ADD KEY `id_providers` (`id_providers`);

--
-- Índices para tabela `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id_service`),
  ADD KEY `id_providers` (`id_providers`);

--
-- Índices para tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id_setting`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`),
  ADD UNIQUE KEY `us_email` (`us_email`),
  ADD KEY `auth` (`id_auth`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `address`
--
ALTER TABLE `address`
  MODIFY `id_address` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `authorization`
--
ALTER TABLE `authorization`
  MODIFY `id_auth` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `cards`
--
ALTER TABLE `cards`
  MODIFY `id_cards` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `category_aux`
--
ALTER TABLE `category_aux`
  MODIFY `id_category_aux` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `logs`
--
ALTER TABLE `logs`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `payment`
--
ALTER TABLE `payment`
  MODIFY `id_payment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id_profile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `providers`
--
ALTER TABLE `providers`
  MODIFY `id_providers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id_schedule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `schedule_aux`
--
ALTER TABLE `schedule_aux`
  MODIFY `id_schedule_aux` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `services`
--
ALTER TABLE `services`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `settings`
--
ALTER TABLE `settings`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`);

--
-- Limitadores para a tabela `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`id_auth`) REFERENCES `authorization` (`id_auth`);

--
-- Limitadores para a tabela `cards`
--
ALTER TABLE `cards`
  ADD CONSTRAINT `cards_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`);

--
-- Limitadores para a tabela `category_aux`
--
ALTER TABLE `category_aux`
  ADD CONSTRAINT `category_aux_ibfk_1` FOREIGN KEY (`id_service`) REFERENCES `services` (`id_service`),
  ADD CONSTRAINT `category_aux_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`);

--
-- Limitadores para a tabela `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`),
  ADD CONSTRAINT `logs_ibfk_2` FOREIGN KEY (`id_providers`) REFERENCES `providers` (`id_providers`),
  ADD CONSTRAINT `logs_ibfk_3` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);

--
-- Limitadores para a tabela `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`id_payment`) REFERENCES `payment` (`id_payment`);

--
-- Limitadores para a tabela `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`id_service`) REFERENCES `services` (`id_service`),
  ADD CONSTRAINT `payment_ibfk_3` FOREIGN KEY (`id_cards`) REFERENCES `cards` (`id_cards`);

--
-- Limitadores para a tabela `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`);

--
-- Limitadores para a tabela `providers`
--
ALTER TABLE `providers`
  ADD CONSTRAINT `providers_ibfk_1` FOREIGN KEY (`id_auth`) REFERENCES `authorization` (`id_auth`);

--
-- Limitadores para a tabela `schedule_aux`
--
ALTER TABLE `schedule_aux`
  ADD CONSTRAINT `schedule_aux_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`),
  ADD CONSTRAINT `schedule_aux_ibfk_2` FOREIGN KEY (`id_service`) REFERENCES `services` (`id_service`),
  ADD CONSTRAINT `schedule_aux_ibfk_3` FOREIGN KEY (`id_providers`) REFERENCES `providers` (`id_providers`),
  ADD CONSTRAINT `schedule_aux_ibfk_4` FOREIGN KEY (`id_schedule`) REFERENCES `schedule` (`id_schedule`);

--
-- Limitadores para a tabela `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`id_providers`) REFERENCES `providers` (`id_providers`);

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_auth`) REFERENCES `authorization` (`id_auth`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
