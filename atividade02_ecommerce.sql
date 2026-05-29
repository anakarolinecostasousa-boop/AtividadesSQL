CREATE DATABASE db_ecommerce;
USE db_ecommerce;
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    fornecedor VARCHAR(100),
    PRIMARY KEY (id)
);
INSERT INTO tb_produtos (nome, categoria, preco, estoque, fornecedor)
VALUES
("Notebook Dell", "Informática", 3500.00, 10, "Dell"),
("Smartphone Samsung", "Celulares", 2500.00, 20, "Samsung"),
("Televisão LG", "Eletrônicos", 1800.00, 15, "LG"),
("Cadeira Gamer", "Móveis", 750.00, 30, "DXRacer"),
("Mesa Escritório", "Móveis", 450.00, 25, "Tok&Stok"),
("Fone Bluetooth", "Acessórios", 200.00, 50, "JBL"),
("Geladeira Brastemp", "Eletrodomésticos", 4200.00, 8, "Brastemp"),
("Micro-ondas Electrolux", "Eletrodomésticos", 600.00, 12, "Electrolux");

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos
SET preco = 250.00
WHERE nome = "Fone Bluetooth";
