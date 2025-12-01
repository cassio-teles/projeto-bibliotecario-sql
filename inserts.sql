-- Inserção de Usuários
INSERT INTO usuario (id, nome, tipo) VALUES
(1, 'João Silva', 'Aluno'),
(2, 'Maria Oliveira', 'Professor'),
(3, 'Carlos Souza', 'Funcionário');

-- Inserção de Obras
INSERT INTO obra (id, titulo, autor, ano_publicacao, quantidade) VALUES
(1, 'O Senhor dos Anéis', 'J.R.R. Tolkien', 1954, 5),
(2, 'Dom Casmurro', 'Machado de Assis', 1899, 3),
(3, 'Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 1997, 10);

-- Inserção de Empréstimos
INSERT INTO emprestimo (id, data_retirada, data_devolucao, usuario_id, obra_id) VALUES
(1, '2023-10-01', '2023-10-10', 1, 1),
(2, '2023-10-05', '2023-10-15', 2, 2),
(3, '2023-10-07', '2023-10-17', 3, 3);

-- Inserção de Multas
INSERT INTO multa (id, valor, data_aplicacao, usuario_id) VALUES
(1, 15.00, '2023-10-12', 1),
(2, 10.00, '2023-10-14', 2);