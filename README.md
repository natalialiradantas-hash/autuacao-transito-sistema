# 🛑 Autuação de Trânsito Informatizada – Banco de Dados

**Autora:** Natália Lira Dantas de Paula  
**Curso:** Tecnologia da Informação – UFMS Digital  
**Semestre:** 2025/2  

---

## 🎯 Objetivo do Projeto

Este projeto faz parte do *Projeto Integrador I* e tem como objetivo desenvolver o **modelo de banco de dados** do sistema **Autuação de Trânsito Informatizada**, aplicado à Guarda Civil Municipal de Capela do Alto/SP.  

O sistema visa informatizar o processo de autuação de trânsito, permitindo que os agentes registrem infrações de forma digital, garantindo eficiência, segurança e transparência.

---

## 🧩 Estrutura do Banco de Dados

O banco é composto por duas tabelas principais, relacionadas entre si:

- **agente** → Armazena os dados dos guardas municipais.  
- **autuacao** → Registra as infrações de trânsito aplicadas.

### 🔗 Relacionamento
Cada autuação é vinculada a um agente responsável pelo registro.

---

## 🗄️ Script SQL

O script SQL completo está disponível no arquivo [`banco_autuacao.sql`](./banco_autuacao.sql), contendo:
- Criação do banco de dados `autuacao_transito`
- Criação das tabelas `agente` e `autuacao`
- Inserção de dados de teste
- Relacionamento entre as tabelas (chave estrangeira)

---

## ⚙️ Como executar

1. Abra o **MySQL Workbench** ou terminal.
2. Copie e execute o conteúdo do arquivo `banco_autuacao.sql`.
3. Confirme a criação das tabelas com:
   ```sql
   SHOW TABLES;
