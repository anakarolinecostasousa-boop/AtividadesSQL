CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100) NOT NULL
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    estoque INT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Medicamentos', 'Produtos para tratamento de doenças'),
('Cosméticos', 'Produtos de beleza e cuidados pessoais'),
('Higiene', 'Produtos de higiene pessoal'),
('Vitaminas', 'Suplementos e vitaminas'),
('Infantil', 'Produtos voltados para crianças');

INSERT INTO tb_produtos (nome, marca, preco, estoque, categoria_id) VALUES
('Paracetamol 500mg', 'Medley', 12.00, 100, 1),
('Ibuprofeno 400mg', 'Neo Química', 18.00, 80, 1),
('Shampoo Anticaspa', 'Clear', 35.00, 50, 2),
('Creme Hidratante', 'Nivea', 55.00, 40, 2),
('Sabonete Infantil', 'Johnson', 8.00, 200, 5),
('Vitamina C 1g', 'Sundown', 65.00, 60, 4),
('Multivitamínico', 'Centrum', 95.00, 30, 4),
('Escova Dental', 'Colgate', 10.00, 150, 3);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';
SELECT p.id, p.nome, p.marca, p.preco, p.estoque, c.nome AS categoria, c.descricao
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.id, p.nome, p.marca, p.preco, p.estoque, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Cosméticos';
