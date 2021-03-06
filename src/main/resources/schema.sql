--Criando tabelas
CREATE TABLE IF NOT EXISTS ENDERECO (
  ID        INTEGER  PRIMARY KEY AUTO_INCREMENT,
  BAIRRO VARCHAR(250) NOT NULL,
  CIDADE VARCHAR(250) NOT NULL,
  LOGRADOURO VARCHAR(250) DEFAULT NULL,
  NUMERO VARCHAR(250) NOT NULL,
  UF VARCHAR(250) NOT NULL
);

CREATE TABLE IF NOT EXISTS CLIENTE (
  ID        INTEGER  PRIMARY KEY AUTO_INCREMENT,
  CPF VARCHAR(250) NOT NULL,
  DATA_NASCIMENTO VARCHAR(250) NOT NULL,
  NOME VARCHAR(250) DEFAULT NULL,
  ID_ENDERECO VARCHAR(250) NOT NULL
);

CREATE TABLE IF NOT EXISTS INSTALACAO (
  ID        INTEGER  PRIMARY KEY AUTO_INCREMENT,
  CODIGO VARCHAR(250) NOT NULL,
  DATA_INSTALACAO VARCHAR(250) NOT NULL,
  ID_CLIENTE VARCHAR(250) DEFAULT NULL,
  ID_ENDERECO VARCHAR(250) NOT NULL
);

CREATE TABLE IF NOT EXISTS FATURA (
  ID        INTEGER  PRIMARY KEY AUTO_INCREMENT,
  CODIGO VARCHAR(250) NOT NULL,
  DATA_LEITURA VARCHAR(250) NOT NULL,
  DATA_VENCIMENTO VARCHAR(250) DEFAULT NULL,
  NUMERO_LEITURA VARCHAR(250) DEFAULT NULL,
  VALOR_CONTA VARCHAR(250) DEFAULT NULL,
  ID_INSTALACAO VARCHAR(250) NOT NULL
);