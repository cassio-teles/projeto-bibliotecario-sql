-- Comando 1: Atualizar a quantidade de exemplares de uma obra
UPDATE obra
SET quantidade = 7
WHERE id = 2;

-- Comando 2: Atualizar a data de devolução do empréstimo de João Silva
UPDATE emprestimo
SET data_devolucao = '2023-10-20'
WHERE id = 1;

-- Comando 3: Aplicar uma multa maior para um usuário (Maria Oliveira)
UPDATE multa
SET valor = 20.00
WHERE id = 2;

-- Comando 4: Excluir um empréstimo específico (João Silva, obra "O Senhor dos Anéis")
DELETE FROM emprestimo
WHERE id = 1;

-- Comando 5: Excluir uma obra que não tem mais exemplares disponíveis
DELETE FROM obra
WHERE id = 2 AND quantidade = 0;

-- Comando 6: Excluir uma multa de um usuário
DELETE FROM multa
WHERE id = 1;