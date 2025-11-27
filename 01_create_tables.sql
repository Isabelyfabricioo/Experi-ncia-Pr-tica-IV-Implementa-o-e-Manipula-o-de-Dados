-- 1.	SCRIPT DE CRIAÇÃO DO BANCO DE DADOS
CREATE DATABASE beautycare;
USE beautycare;

-- Tabela Cliente
CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(20),
    email VARCHAR(120),
    data_nascimento DATE
);

-- Tabela Profissional
CREATE TABLE profissional (
    id_profissional INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    especialidade VARCHAR(100),
    telefone VARCHAR(20)
);

-- Tabela Serviço
CREATE TABLE servico (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    duracao_minutos INT,
    preco DECIMAL(10,2)
);

-- Tabela Agendamento
CREATE TABLE agendamento (
    id_agendamento INT AUTO_INCREMENT PRIMARY KEY,
    data DATE,
    horario TIME,
    id_cliente INT,
    id_profissional INT,
    id_servico INT,
    status VARCHAR(30),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_profissional) REFERENCES profissional(id_profissional),
    FOREIGN KEY (id_servico) REFERENCES servico(id_servico)
);

-- Tabela Atendimento
CREATE TABLE atendimento (
    id_atendimento INT AUTO_INCREMENT PRIMARY KEY,
    id_agendamento INT UNIQUE,
    observacoes TEXT,
    status_final VARCHAR(30),
    FOREIGN KEY (id_agendamento) REFERENCES agendamento(id_agendamento)
);

-- Tabela Pagamento
CREATE TABLE pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    id_atendimento INT UNIQUE,
    valor DECIMAL(10,2),
    forma_pagamento VARCHAR(30),
    data_pagamento DATE,
    FOREIGN KEY (id_atendimento) REFERENCES atendimento(id_atendimento)
);

