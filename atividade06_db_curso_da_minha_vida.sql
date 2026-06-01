CREATE DATABASE db_curso_da_minha_vida;


USE db_curso_da_minha_vida;


CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100) NOT NULL
);


CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    instrutor VARCHAR(50) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    carga_horaria INT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);


INSERT INTO tb_categorias (nome, descricao) VALUES
('Programação', 'Cursos voltados para desenvolvimento de software'),
('Design', 'Cursos de design gráfico e UX/UI'),
('Marketing', 'Cursos de marketing digital e estratégias'),
('Idiomas', 'Cursos de línguas estrangeiras'),
('Negócios', 'Cursos de gestão e empreendedorismo');

INSERT INTO tb_cursos (nome, instrutor, preco, carga_horaria, categoria_id) VALUES
('Java Completo', 'Carlos Silva', 750.00, 80, 1),
('Python para Iniciantes', 'Ana Souza', 500.00, 60, 1),
('Design Gráfico com Photoshop', 'Mariana Costa', 650.00, 70, 2),
('UX/UI Design Avançado', 'Pedro Lima', 950.00, 100, 2),
('Marketing Digital', 'Fernanda Alves', 400.00, 50, 3),
('Inglês Básico', 'John Smith', 300.00, 40, 4),
('Gestão Empresarial', 'Ricardo Mendes', 1200.00, 120, 5),
('Empreendedorismo na Prática', 'Juliana Rocha', 850.00, 90, 5);


SELECT * FROM tb_cursos WHERE preco > 500.00;


SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;


SELECT * FROM tb_cursos WHERE nome LIKE '%J%';


SELECT c.id, c.nome, c.instrutor, c.preco, c.carga_horaria, cat.nome AS categoria, cat.descricao
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.categoria_id = cat.id;

SELECT c.id, c.nome, c.instrutor, c.preco, c.carga_horaria, cat.nome AS categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.categoria_id = cat.id
WHERE cat.nome = 'Programação';
