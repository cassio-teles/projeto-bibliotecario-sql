# 📚 Projeto de Gestão de Biblioteca com SQL

Este repositório contém os scripts SQL desenvolvidos para a disciplina de Banco de Dados. O objetivo é simular um sistema de gerenciamento de uma biblioteca universitária ("Mini-mundo"), aplicando conceitos de DML (Data Manipulation Language).

## 🎯 Objetivos do Projeto
- Implementar e manipular dados em um banco de dados relacional.
- Aplicar comandos de **INSERT**, **SELECT**, **UPDATE** e **DELETE**.
- Utilizar filtros, ordenação e junções (JOINS) para relatórios.

## 🗂 Estrutura do Banco de Dados
O projeto baseia-se nas seguintes entidades:
- **usuario**: Alunos, professores e funcionários.
- **obra**: Acervo de livros.
- **emprestimo**: Controle de retiradas e devoluções.
- **multa**: Registro de penalidades por atraso.

## 🛠 Scripts Disponíveis

### 1. [inserts.sql](./inserts.sql)
Script responsável por povoar o banco de dados com dados fictícios para testes.
- Contém inserções para as 4 tabelas principais.

### 2. [selects.sql](./selects.sql)
Consultas estratégicas para relatórios, incluindo:
- Listagem de usuários com empréstimos ativos (uso de `JOIN`).
- Obras com maior quantidade em estoque (uso de `WHERE` e `ORDER BY`).
- Relatório de multas aplicadas.
- Contagem de empréstimos por usuário (uso de `GROUP BY`).

### 3. [updates_deletes.sql](./updates_deletes.sql)
Script de manutenção de dados:
- **UPDATES**: Atualização de estoque, datas de devolução e valores de multas.
- **DELETES**: Remoção de registros específicos conforme regras de negócio.

## 🚀 Como Executar
1. Certifique-se de ter um SGBD (MySQL ou PostgreSQL) instalado.
2. Crie as tabelas conforme o Modelo Lógico (DDL).
3. Execute o script `inserts.sql` para carregar os dados.
4. Execute os demais scripts conforme a necessidade de teste.

---
Por Cassio R S Teles
