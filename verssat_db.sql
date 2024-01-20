/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50643
Source Host           : localhost:3306
Source Database       : verssat

Target Server Type    : MYSQL
Target Server Version : 50643
File Encoding         : 65001

Date: 2024-01-20 11:43:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `mat_prim_fornecedor`
-- ----------------------------
DROP TABLE IF EXISTS `mat_prim_fornecedor`;
CREATE TABLE `mat_prim_fornecedor` (
  `id_mat_fornec` int(11) NOT NULL AUTO_INCREMENT,
  `fk_mat_prim` int(11) NOT NULL,
  `fk_fornecedor` int(11) NOT NULL,
  `preco` double(11,2) DEFAULT '0.00',
  PRIMARY KEY (`id_mat_fornec`),
  UNIQUE KEY `idx_mat_fornec` (`fk_mat_prim`,`fk_fornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mat_prim_fornecedor
-- ----------------------------

-- ----------------------------
-- Table structure for `mat_prim_ped_compra`
-- ----------------------------
DROP TABLE IF EXISTS `mat_prim_ped_compra`;
CREATE TABLE `mat_prim_ped_compra` (
  `id_mat_compra` int(11) NOT NULL AUTO_INCREMENT,
  `fk_ped_compra` int(11) NOT NULL DEFAULT '0',
  `fk_mat_prim_fornec` int(11) NOT NULL DEFAULT '0',
  `quantidade` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_mat_compra`),
  UNIQUE KEY `fk_mat_prim_fornec` (`fk_mat_prim_fornec`,`fk_ped_compra`) USING BTREE,
  CONSTRAINT `fk_mat_fornec` FOREIGN KEY (`fk_mat_prim_fornec`) REFERENCES `mat_prim_fornecedor` (`id_mat_fornec`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mat_prim_ped_compra
-- ----------------------------

-- ----------------------------
-- Table structure for `prod_acab_mat_prim`
-- ----------------------------
DROP TABLE IF EXISTS `prod_acab_mat_prim`;
CREATE TABLE `prod_acab_mat_prim` (
  `id_prod_mat` int(11) NOT NULL AUTO_INCREMENT,
  `id_mat_prim` int(11) DEFAULT NULL,
  `id_prod_acab` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_prod_mat`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of prod_acab_mat_prim
-- ----------------------------

-- ----------------------------
-- Table structure for `prod_acab_ped_venda`
-- ----------------------------
DROP TABLE IF EXISTS `prod_acab_ped_venda`;
CREATE TABLE `prod_acab_ped_venda` (
  `id_prod_venda` int(11) NOT NULL AUTO_INCREMENT,
  `fk_ped_venda` int(11) NOT NULL DEFAULT '0',
  `fk_prod_acab` int(11) NOT NULL DEFAULT '0',
  `quantidade` int(11) NOT NULL DEFAULT '0',
  `preco_unitario` double(8,2) DEFAULT '0.00' COMMENT 'preço default da tabela ver_preco',
  PRIMARY KEY (`id_prod_venda`),
  UNIQUE KEY `idx_ped_prod` (`fk_ped_venda`,`fk_prod_acab`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of prod_acab_ped_venda
-- ----------------------------

-- ----------------------------
-- Table structure for `ver_cliente`
-- ----------------------------
DROP TABLE IF EXISTS `ver_cliente`;
CREATE TABLE `ver_cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `cpf_cnpj` varchar(15) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `telefone_add` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `conta` varchar(12) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `idx_cpf_cnpj` (`cpf_cnpj`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ver_cliente
-- ----------------------------

-- ----------------------------
-- Table structure for `ver_cliente_contato`
-- ----------------------------
DROP TABLE IF EXISTS `ver_cliente_contato`;
CREATE TABLE `ver_cliente_contato` (
  `id_cli_contato` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(15) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_cli_contato`),
  UNIQUE KEY `idx_cpf` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ver_cliente_contato
-- ----------------------------

-- ----------------------------
-- Table structure for `ver_conta`
-- ----------------------------
DROP TABLE IF EXISTS `ver_conta`;
CREATE TABLE `ver_conta` (
  `codigo` varchar(20) NOT NULL,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ver_conta
-- ----------------------------
INSERT INTO `ver_conta` VALUES ('1', 'ATIVO');
INSERT INTO `ver_conta` VALUES ('1.1', 'ATIVO CIRCULANTE');
INSERT INTO `ver_conta` VALUES ('1.1.1', 'ATIVO DISPONIVEL');
INSERT INTO `ver_conta` VALUES ('1.1.1.1', 'CAIXA');
INSERT INTO `ver_conta` VALUES ('1.1.1.1.0001', 'CAIXA GERAL');
INSERT INTO `ver_conta` VALUES ('1.1.1.1.0002', 'Banco Bradesco Débito');
INSERT INTO `ver_conta` VALUES ('1.1.1.1.0003', 'Banco Nossa Caixa Débito');
INSERT INTO `ver_conta` VALUES ('1.1.1.1.0004', 'Banco Santander Débito');
INSERT INTO `ver_conta` VALUES ('1.1.1.1.0005', 'sdfsdfadsfdsa');
INSERT INTO `ver_conta` VALUES ('2', 'PASSIVO');
INSERT INTO `ver_conta` VALUES ('2.1', 'CIRCULANTE');
INSERT INTO `ver_conta` VALUES ('2.1.1', 'CONTAS A PAGAR');
INSERT INTO `ver_conta` VALUES ('2.1.1.1', 'CONTAS A PAGAR EM GERAL');
INSERT INTO `ver_conta` VALUES ('2.1.1.1.0001', 'CONTAS A PAGAR GERAL');
INSERT INTO `ver_conta` VALUES ('3', 'DESPESAS');
INSERT INTO `ver_conta` VALUES ('3.1', 'DESPESAS DIVERSAS');
INSERT INTO `ver_conta` VALUES ('3.1.1', 'DESPESAS OPERACIONAIS');
INSERT INTO `ver_conta` VALUES ('3.1.1.1', 'DESPESAS GERAIS');
INSERT INTO `ver_conta` VALUES ('3.1.1.1.0001', 'DESPESAS GERAIS');
INSERT INTO `ver_conta` VALUES ('3.1.1.1.0002', 'Compra de Fornecedor X');
INSERT INTO `ver_conta` VALUES ('3.1.1.1.0003', 'Fornecedor Y');
INSERT INTO `ver_conta` VALUES ('3.1.1.1.0004', 'Fornecedor Z');
INSERT INTO `ver_conta` VALUES ('3.1.1.1.0005', 'Fornecedor Guto');
INSERT INTO `ver_conta` VALUES ('3.1.1.1.0006', 'fornecedor: Leonardo');
INSERT INTO `ver_conta` VALUES ('3.1.1.1.0007', 'fornecedor: ASJSAJIDJSIAJ');
INSERT INTO `ver_conta` VALUES ('3.1.1.1.0008', 'fornecedor: SAPDKSAK');
INSERT INTO `ver_conta` VALUES ('3.1.1.1.0010', 'fornecedor: Loja 1');
INSERT INTO `ver_conta` VALUES ('3.1.1.1.0011', 'fornecedor: Loja 2');
INSERT INTO `ver_conta` VALUES ('4', 'RECEITAS');
INSERT INTO `ver_conta` VALUES ('4.1', 'RECEITAS DIVERSAS');
INSERT INTO `ver_conta` VALUES ('4.1.1', 'RECEITAS OPERACIONAIS');
INSERT INTO `ver_conta` VALUES ('4.1.1.1', 'RECEITAS BRUTAS DE VENDA');
INSERT INTO `ver_conta` VALUES ('4.1.1.1.0001', 'RECEITAS GERAIS');
INSERT INTO `ver_conta` VALUES ('4.1.1.1.0002', 'Venda a Cliente X');
INSERT INTO `ver_conta` VALUES ('4.1.1.1.0003', 'Cliente: Guto Lanzi');
INSERT INTO `ver_conta` VALUES ('4.1.1.1.0004', 'Cliente Y Teste1');
INSERT INTO `ver_conta` VALUES ('4.1.1.1.0005', 'Cliente X Teste 2');
INSERT INTO `ver_conta` VALUES ('4.1.1.1.0006', 'Cliente: Cliente Teste');
INSERT INTO `ver_conta` VALUES ('4.1.1.1.0007', 'Cliente: Leo Argentino');

-- ----------------------------
-- Table structure for `ver_edital`
-- ----------------------------
DROP TABLE IF EXISTS `ver_edital`;
CREATE TABLE `ver_edital` (
  `id_edital` int(11) NOT NULL AUTO_INCREMENT,
  `fk_ped_venda` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id_edital`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ver_edital
-- ----------------------------

-- ----------------------------
-- Table structure for `ver_fornecedor`
-- ----------------------------
DROP TABLE IF EXISTS `ver_fornecedor`;
CREATE TABLE `ver_fornecedor` (
  `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `info` varchar(50) DEFAULT NULL,
  `codigo_conta` varchar(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_fornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ver_fornecedor
-- ----------------------------

-- ----------------------------
-- Table structure for `ver_funcionario`
-- ----------------------------
DROP TABLE IF EXISTS `ver_funcionario`;
CREATE TABLE `ver_funcionario` (
  `id_funcionario` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(15) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_funcionario`),
  UNIQUE KEY `idx_cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ver_funcionario
-- ----------------------------

-- ----------------------------
-- Table structure for `ver_kardex_materia_prima`
-- ----------------------------
DROP TABLE IF EXISTS `ver_kardex_materia_prima`;
CREATE TABLE `ver_kardex_materia_prima` (
  `id_kardex_materia_prima` int(11) NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL,
  `quantidade` int(11) NOT NULL,
  `discr` char(1) NOT NULL DEFAULT 'E' COMMENT '''E'' é para entrada e ''S'' para saida de produtos',
  `id_materia_prima` int(11) NOT NULL,
  PRIMARY KEY (`id_kardex_materia_prima`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ver_kardex_materia_prima
-- ----------------------------

-- ----------------------------
-- Table structure for `ver_kardex_produto`
-- ----------------------------
DROP TABLE IF EXISTS `ver_kardex_produto`;
CREATE TABLE `ver_kardex_produto` (
  `id_kardex_produto` int(11) NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL,
  `quantidade` int(11) NOT NULL,
  `discr` char(1) NOT NULL DEFAULT 'E' COMMENT '''E'' é para entrada e ''S'' para saida de produtos',
  `id_produto` int(11) NOT NULL,
  PRIMARY KEY (`id_kardex_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of ver_kardex_produto
-- ----------------------------

-- ----------------------------
-- Table structure for `ver_lancamento`
-- ----------------------------
DROP TABLE IF EXISTS `ver_lancamento`;
CREATE TABLE `ver_lancamento` (
  `id_lancamento` int(11) NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `deve` double(11,2) DEFAULT NULL,
  `haver` double(11,2) DEFAULT NULL,
  `id_centro_custo` int(11) NOT NULL,
  `id_ped_compra` int(11) DEFAULT NULL,
  `id_ped_venda` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_lancamento`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ver_lancamento
-- ----------------------------

-- ----------------------------
-- Table structure for `ver_material`
-- ----------------------------
DROP TABLE IF EXISTS `ver_material`;
CREATE TABLE `ver_material` (
  `id_material` int(11) NOT NULL AUTO_INCREMENT,
  `cod_material` varchar(45) NOT NULL,
  `descricao` varchar(45) NOT NULL,
  `preco` decimal(8,2) NOT NULL DEFAULT '0.00',
  `unidade` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_material`),
  UNIQUE KEY `idx_cod_mat_prim` (`cod_material`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ver_material
-- ----------------------------

-- ----------------------------
-- Table structure for `ver_pedido`
-- ----------------------------
DROP TABLE IF EXISTS `ver_pedido`;
CREATE TABLE `ver_pedido` (
  `id_pedido` int(10) NOT NULL AUTO_INCREMENT,
  `id_produto` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ver_pedido
-- ----------------------------

-- ----------------------------
-- Table structure for `ver_pedido_compra`
-- ----------------------------
DROP TABLE IF EXISTS `ver_pedido_compra`;
CREATE TABLE `ver_pedido_compra` (
  `id_ped_compra` int(11) NOT NULL AUTO_INCREMENT,
  `id_funcionario` int(11) NOT NULL,
  `data` date NOT NULL,
  `aprovado` char(1) NOT NULL DEFAULT 'F',
  PRIMARY KEY (`id_ped_compra`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ver_pedido_compra
-- ----------------------------

-- ----------------------------
-- Table structure for `ver_pedido_produto`
-- ----------------------------
DROP TABLE IF EXISTS `ver_pedido_produto`;
CREATE TABLE `ver_pedido_produto` (
  `id_pedido` int(10) NOT NULL,
  `quantidade` int(10) NOT NULL,
  `id_produto` int(10) NOT NULL,
  PRIMARY KEY (`id_pedido`,`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ver_pedido_produto
-- ----------------------------

-- ----------------------------
-- Table structure for `ver_pedido_venda`
-- ----------------------------
DROP TABLE IF EXISTS `ver_pedido_venda`;
CREATE TABLE `ver_pedido_venda` (
  `id_ped_venda` int(11) NOT NULL AUTO_INCREMENT,
  `fk_vendedor` int(11) DEFAULT NULL,
  `fk_cliente` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `aprovado` char(1) NOT NULL DEFAULT 'F',
  PRIMARY KEY (`id_ped_venda`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ver_pedido_venda
-- ----------------------------

-- ----------------------------
-- Table structure for `ver_preco_produto`
-- ----------------------------
DROP TABLE IF EXISTS `ver_preco_produto`;
CREATE TABLE `ver_preco_produto` (
  `id_preco` int(10) NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL,
  `valor` double(8,2) NOT NULL,
  `id_produto` int(10) NOT NULL,
  PRIMARY KEY (`id_preco`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ver_preco_produto
-- ----------------------------

-- ----------------------------
-- Table structure for `ver_produto`
-- ----------------------------
DROP TABLE IF EXISTS `ver_produto`;
CREATE TABLE `ver_produto` (
  `id_produto` int(10) NOT NULL AUTO_INCREMENT,
  `cod_produto` varchar(15) NOT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `descricao` varchar(80) NOT NULL,
  `unidade` varchar(15) DEFAULT NULL,
  `estoque` int(11) DEFAULT '0',
  `imagem` varchar(55) DEFAULT NULL,
  `discr` char(1) DEFAULT 'A' COMMENT 'A=acabado, M=materia prima',
  PRIMARY KEY (`id_produto`),
  UNIQUE KEY `idx_cod_produto` (`cod_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ver_produto
-- ----------------------------

-- ----------------------------
-- Table structure for `ver_vendedor`
-- ----------------------------
DROP TABLE IF EXISTS `ver_vendedor`;
CREATE TABLE `ver_vendedor` (
  `id_vendedor` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(20) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_vendedor`),
  UNIQUE KEY `idx_cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ver_vendedor
-- ----------------------------
