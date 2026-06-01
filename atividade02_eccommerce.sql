USE DB_ecommerce;

DROP TABLE IF EXISTS TB_produtos;

CREATE TABLE TB_produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    categoria VARCHAR(255) NOT NULL
);

INSERT INTO TB_produtos (nome, preco, estoque, categoria) VALUES
('Smartphone Galaxy S22', 1999.99, 50, 'Eletrônicos'),
('Notebook Dell Inspiron', 3499.99, 30, 'Eletrônicos'),
('Fone JBL Tune 510BT', 299.99, 100, 'Acessórios'),
('Camiseta Nike Dry-Fit', 49.99, 200, 'Roupas'),
('Tênis Adidas Ultraboost', 149.99, 80, 'Calçados'),
('Apple Watch Series 8', 499.99, 40, 'Eletrônicos'),
('Mochila Samsonite Travel', 199.99, 60, 'Acessórios'),
('Livro Duna - Frank Herbert', 39.99, 150, 'Livros'),
('Câmera Canon EOS Rebel T7', 899.99, 25, 'Eletrônicos');

-- Consultas
SELECT * FROM TB_produtos;

SELECT * FROM TB_produtos WHERE preco > 500.00;

SELECT * FROM TB_produtos WHERE preco < 500.00;

-- Atualização de preço do primeiro produto
UPDATE TB_produtos SET preco = 1799.99 WHERE id = 1;

SELECT * FROM TB_produtos WHERE id = 1;
