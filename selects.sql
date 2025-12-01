-- Consulta 1: Listar todos os usuários com seus empréstimos e obras associadas
SELECT u.nome, e.data_retirada, e.data_devolucao, o.titulo
FROM usuario u
JOIN emprestimo e ON u.id = e.usuario_id
JOIN obra o ON e.obra_id = o.id;

-- Consulta 2: Mostrar as obras que têm mais de 5 exemplares
SELECT titulo, autor, quantidade
FROM obra
WHERE quantidade > 5
ORDER BY quantidade DESC;

-- Consulta 3: Exibir os usuários que têm multas aplicadas
SELECT u.nome, m.valor, m.data_aplicacao
FROM usuario u
JOIN multa m ON u.id = m.usuario_id
ORDER BY m.data_aplicacao DESC;

-- Consulta 4: Buscar empréstimos pendentes para um usuário específico (João Silva)
SELECT e.data_retirada, e.data_devolucao, o.titulo
FROM emprestimo e
JOIN obra o ON e.obra_id = o.id
WHERE e.usuario_id = 1 AND e.data_devolucao > CURRENT_DATE;

-- Consulta 5: Contar o número de empréstimos feitos por cada usuário
SELECT u.nome, COUNT(e.id) AS total_emprestimos
FROM usuario u
LEFT JOIN emprestimo e ON u.id = e.usuario_id
GROUP BY u.id
ORDER BY total_emprestimos DESC;