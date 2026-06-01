CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;


CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100) NOT NULL
);


CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    preco DECIMAL(7,2) NOT NULL,
    estoque INT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);


INSERT INTO tb_categorias (nome, descricao) VALUES
('Ferramentas', 'Ferramentas manuais e elétricas'),
('Hidráulica', 'Produtos para encanamento e água'),
('Elétrica', 'Materiais elétricos e iluminação'),
('Construção', 'Cimentos, tijolos e materiais básicos'),
('Pintura', 'Tintas e acessórios para pintura');


INSERT INTO tb_produtos (nome, marca, preco, estoque, categoria_id) VALUES
('Martelo', 'Tramontina', 75.00, 50, 1),
('Furadeira', 'Bosch', 350.00, 20, 1),
('Tubo PVC 100mm', 'Tigre', 120.00, 40, 2),
('Registro de Pressão', 'Deca', 95.00, 30, 2),
('Fio Elétrico 2,5mm', 'Pirelli', 80.00, 100, 3),
('Lâmpada LED', 'Philips', 35.00, 200, 3),
('Saco de Cimento 50kg', 'Votorantim', 55.00, 150, 4),
('Tinta Acrílica 18L', 'Suvinil', 140.00, 25, 5);

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT p.id, p.nome, p.marca, p.preco, p.estoque, c.nome AS categoria, c.descricao
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.id, p.nome, p.marca, p.preco, p.estoque, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Hidráulica';
