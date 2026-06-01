CREATE DATABASE IF NOT EXISTS DB_colaboradores;

USE DB_colaboradores;

DROP TABLE IF EXISTS TB_colaboradores;

CREATE TABLE TB_colaboradores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    departamento VARCHAR(100) NOT NULL
);

INSERT INTO TB_colaboradores (nome, cargo, salario, departamento) VALUES
('Maria Silva', 'Analista de RH', 3500.00, 'Recursos Humanos'),
('João Souza', 'Desenvolvedor Backend', 5500.00, 'Tecnologia'),
('Ana Costa', 'Gerente de Projetos', 7200.00, 'Administração'),
('Pedro Lima', 'Assistente Financeiro', 2800.00, 'Financeiro'),
('Lucas Rocha', 'Designer Gráfico', 4000.00, 'Marketing'),
('Carla Mendes', 'Analista de Dados', 6000.00, 'Tecnologia'),
('Fernanda Leão', 'Coordenadora de Vendas', 6500.00, 'Comercial'),
('Rafael Torres', 'Estagiário', 1500.00, 'Recursos Humanos');

SELECT * FROM TB_colaboradores;
SELECT * FROM TB_colaboradores WHERE salario > 5000;
SELECT * FROM TB_colaboradores WHERE salario < 3000;
UPDATE TB_colaboradores SET salario = 3200.00 WHERE id = 4;
SELECT * FROM TB_colaboradores WHERE id = 4;
