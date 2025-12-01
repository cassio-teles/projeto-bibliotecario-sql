-- 1. Limpeza inicial 
DROP TABLE IF EXISTS multa CASCADE;
DROP TABLE IF EXISTS emprestimo CASCADE;
DROP TABLE IF EXISTS obra CASCADE;
DROP TABLE IF EXISTS usuario CASCADE;

-- 2. Criação da tabela de Usuários
CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(50) NOT NULL -- Ex: Aluno, Professor
);

-- 3. Criação da tabela de Obras (Livros)
CREATE TABLE obra (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    ano_publicacao INT,
    quantidade INT DEFAULT 1
);

-- 4. Criação da tabela de Empréstimos
CREATE TABLE emprestimo (
    id SERIAL PRIMARY KEY,
    data_retirada DATE DEFAULT CURRENT_DATE,
    data_devolucao DATE,
    usuario_id INT,
    obra_id INT,
    -- Definição das Chaves Estrangeiras (Foreign Keys)
    CONSTRAINT fk_usuario_emprestimo FOREIGN KEY (usuario_id) REFERENCES usuario(id),
    CONSTRAINT fk_obra_emprestimo FOREIGN KEY (obra_id) REFERENCES obra(id)
);

-- 5. Criação da tabela de Multas
CREATE TABLE multa (
    id SERIAL PRIMARY KEY,
    valor DECIMAL(10, 2),
    data_aplicacao DATE DEFAULT CURRENT_DATE,
    usuario_id INT,
    -- Definição da Chave Estrangeira
    CONSTRAINT fk_usuario_multa FOREIGN KEY (usuario_id) REFERENCES usuario(id)
);