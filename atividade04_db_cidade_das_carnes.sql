CREATE DATABASE db_cidade_das_carnes;


USE db_cidade_das_carnes;


CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100) NOT NULL
);


CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    preco DECIMAL(7,2) NOT NULL,
    quantidade INT NOT NULL,
    fornecedor VARCHAR(50) NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);


INSERT INTO tb_categorias (nome, descricao) VALUES
('Carnes Bovinas', 'Cortes de carne de boi'),
('Aves', 'Frangos e outras aves'),
('Suínos', 'Cortes de carne suína'),
('Frutas', 'Frutas frescas da estação'),
('Verduras e Legumes', 'Produtos hortifrutis variados');


INSERT INTO tb_produtos (nome, preco, quantidade, fornecedor, categoria_id) VALUES
('Picanha', 120.00, 20, 'Friboi', 1),
('Alcatra', 85.00, 15, 'Marfrig', 1),
('Frango Inteiro', 45.00, 30, 'Seara', 2),
('Coxa de Frango', 55.00, 25, 'Perdigão', 2),
('Linguiça Toscana', 35.00, 40, 'Aurora', 3),
('Maçã Gala', 12.00, 100, 'Fazenda Boa Vista', 4),
('Banana Nanica', 10.00, 120, 'Fazenda Tropical', 4),
('Cenoura', 8.00, 90, 'Hortifruti Verde Vida', 5);


SELECT * FROM tb_produtos WHERE preco > 50.00;


SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;


SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT p.id, p.nome, p.preco, p.quantidade, p.fornecedor, c.nome AS categoria, c.descricao
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;


SELECT p.id, p.nome, p.preco, p.quantidade, p.fornecedor, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Aves';


SELECT p.id, p.nome, p.preco, p.quantidade, p.fornecedor, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Frutas';
