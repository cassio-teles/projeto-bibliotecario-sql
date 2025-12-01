# 📚 Projeto de Gestão de Biblioteca com SQL

Este repositório contém os scripts SQL desenvolvidos para a disciplina de Banco de Dados. O objetivo é simular um sistema de gerenciamento de uma biblioteca universitária ("Mini-mundo"), demonstrando competências de modelagem e manipulação de dados (DML e DDL).

## 🎯 Objetivos do Projeto
- **Criar** a estrutura de um banco de dados relacional a partir do zero.
- **Manipular** dados utilizando comandos de inserção, atualização e deleção.
- **Consultar** informações estratégicas usando filtros e junções (JOINS).

## 🗂 Estrutura do Banco de Dados
O projeto baseia-se nas seguintes entidades:
- **usuario**: Armazena dados de alunos, professores e funcionários.
- **obra**: Catálogo de livros disponíveis e suas quantidades.
- **emprestimo**: Tabela associativa que registra quem pegou qual livro e as datas.
- **multa**: Registro de penalidades financeiras aplicadas a usuários.

## 🛠 Guia dos Arquivos (Scripts)

Para reproduzir este projeto, execute os scripts na ordem abaixo:

### 1. [schema.sql](./schema.sql) (Estrutura - DDL)
*O alicerce do projeto.*
- Remove tabelas antigas para evitar conflitos (`DROP`).
- Cria as tabelas definindo tipos de dados (`VARCHAR`, `INT`, `DATE`).
- Estabelece as Chaves Primárias (`PK`) e Chaves Estrangeiras (`FK`) para garantir a integridade relacional.

### 2. [inserts.sql](./inserts.sql) (Dados - DML)
*Povoamento do banco.*
- Insere dados fictícios nas 4 tabelas para permitir testes.
- Garante que existam usuários, obras e empréstimos vinculados.

### 3. [selects.sql](./selects.sql) (Consultas - DQL)
*Relatórios e extração de informação.*
- **Listagem Geral:** Usuários com empréstimos ativos (uso de `JOIN`).
- **Filtros:** Obras com maior estoque (uso de `WHERE` e `ORDER BY`).
- **Financeiro:** Relatório de multas aplicadas.
- **Estatística:** Contagem de empréstimos por usuário (uso de `GROUP BY`).

### 4. [updates_deletes.sql](./updates_deletes.sql) (Manutenção - DML)
*Ciclo de vida dos dados.*
- **UPDATES:** Atualização de estoque de livros e prorrogação de datas de devolução.
- **DELETES:** Remoção de registros (ex: baixa em multas pagas ou correção de erros).

## 🚀 Como Executar

Você pode rodar este projeto em ferramentas como **MySQL Workbench**, **pgAdmin 4** ou simuladores online como **SQLiteOnline**.

1. **Crie a Estrutura:** Execute o conteúdo de `schema.sql`.
2. **Insira os Dados:** Execute o conteúdo de `inserts.sql`.
3. **Teste as Consultas:** Execute os comandos de `selects.sql` e veja os resultados.
4. **Simule a Manutenção:** Execute os comandos de `updates_deletes.sql` para modificar os dados.

---
### 🎓 Competências Demonstradas
Este projeto atende aos requisitos de avaliação cobrindo:
- ✅ Criação de tabelas e relacionamentos (DDL).
- ✅ Inserção de dados em massa (INSERT).
- ✅ Consultas complexas com múltiplas tabelas (JOINs).
- ✅ Atualização e exclusão condicional de dados (UPDATE/DELETE).

---

Por Cassio R S Teles
