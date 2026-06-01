CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100) NOT NULL
);

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    ingredientes VARCHAR(200) NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Tradicional', 'Pizzas clássicas salgadas'),
('Especial', 'Receitas exclusivas e diferenciadas'),
('Doce', 'Pizzas com recheios doces'),
('Vegana', 'Pizzas sem ingredientes de origem animal'),
('Premium', 'Pizzas gourmet com ingredientes selecionados');

INSERT INTO tb_pizzas (nome, tamanho, preco, ingredientes, categoria_id) VALUES
('Mussarela', 'Grande', 40.00, 'Queijo mussarela, molho de tomate', 1),
('Calabresa', 'Média', 45.00, 'Calabresa, cebola, queijo', 1),
('Frango Catupiry', 'Grande', 55.00, 'Frango desfiado, catupiry, milho', 2),
('Chocolate', 'Pequena', 35.00, 'Chocolate ao leite, granulado', 3),
('Banana com Canela', 'Média', 50.00, 'Banana, açúcar, canela', 3),
('Vegana Mix', 'Grande', 65.00, 'Tomate seco, rúcula, queijo vegano', 4),
('Quatro Queijos', 'Grande', 70.00, 'Mussarela, gorgonzola, parmesão, provolone', 5),
('Margherita', 'Média', 48.00, 'Mussarela, tomate, manjericão', 1);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT p.id, p.nome, p.tamanho, p.preco, p.ingredientes, c.nome AS categoria, c.descricao
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.id, p.nome, p.tamanho, p.preco, p.ingredientes, c.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Doce';