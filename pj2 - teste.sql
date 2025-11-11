# Criar pasta e entrar nela
mkdir autuacao-transito-bd
cd autuacao-transito-bd

# Criar arquivo do banco de dados
cat << 'EOF' > banco_autuacao.sql
-- Banco de Dados: Autuação de Trânsito Informatizada
-- Autora: Natália Lira Dantas de Paula
-- Curso: Tecnologia da Informação - UFMS Digital
-- Semestre: 2025/2

CREATE DATABASE autuacao_transito;
USE autuacao_transito;

CREATE TABLE agente (
    id_agente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(20) UNIQUE NOT NULL,
    turno ENUM('Diurno', 'Noturno') NOT NULL
);

CREATE TABLE autuacao (
    id_autuacao INT AUTO_INCREMENT PRIMARY KEY,
    placa_veiculo VARCHAR(10) NOT NULL,
    data_autuacao DATE NOT NULL,
    tipo_infracao VARCHAR(150) NOT NULL,
    local VARCHAR(100),
    id_agente INT,
    FOREIGN KEY (id_agente) REFERENCES agente(id_agente)
);

INSERT INTO agente (nome, matricula, turno) VALUES
('Carlos Souza', 'GCM001', 'Diurno'),
('Fernanda Lima', 'GCM002', 'Noturno'),
('Rafael Pereira', 'GCM003', 'Diurno');

INSERT INTO autuacao (placa_veiculo, data_autuacao, tipo_infracao, local, id_agente) VALUES
('ABC1234', '2025-11-01', 'Estacionar em local proibido', 'Rua das Flores', 1),
('XYZ9876', '2025-11-02', 'Excesso de velocidade', 'Av. Brasil', 2),
('DEF5678', '2025-11-03', 'Falta de cinto de segurança', 'Praça Central', 3);
EOF

# Criar README.md
cat << 'EOF' > README.md
# Autuação de Trânsito Informatizada – Banco de Dados

Autora: Natália Lira Dantas de Paula  
Curso: Tecnologia da Informação – UFMS Digital  
Semestre: 2025/2  

## Objetivo
Desenvolver o modelo de banco de dados do sistema Autuação de Trânsito Informatizada, aplicado à Guarda Civil Municipal de Capela do Alto/SP.

## Estrutura do Banco
O banco possui duas tabelas relacionadas:
- agente
- autuacao

Cada autuação é vinculada a um agente responsável.

## Execução
1. Abra o MySQL Workbench ou terminal.
2. Execute o conteúdo do arquivo `banco_autuacao.sql`.
3. Confirme as tabelas com:
   ```sql
   SHOW TABLES;