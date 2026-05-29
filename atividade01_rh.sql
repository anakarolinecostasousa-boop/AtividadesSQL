select @@version;
CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    departamento VARCHAR(100),
    data_admissao DATE,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores (nome, cargo, salario, departamento, data_admissao)
VALUES
("Ana Costa", "Analista de RH", 3500.00, "Recursos Humanos", "2022-03-15"),
("Katia Pereira", "Desenvolvedor", 4500.00, "TI", "2021-08-01"),
("Mariano Lima", "Assistente Administrativo", 1800.00, "Administrativo", "2023-01-10"),
("André Santos", "Gerente de Projetos", 7000.00, "TI", "2020-11-20"),
("William Alves", "Estagiária", 1200.00, "Marketing", "2024-05-05");

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores
SET salario = 1500.00
WHERE nome = "William Alves";


