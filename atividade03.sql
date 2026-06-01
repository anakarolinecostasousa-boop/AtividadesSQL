
CREATE DATABASE DB_escola;

USE DB_escola;

CREATE TABLE TB_estudantes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    rg BIGINT NOT NULL UNIQUE,
    cpf BIGINT NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    idade INT NOT NULL,
    ano_escolar VARCHAR(255) NOT NULL,
    media FLOAT(2, 1) NOT NULL
);


INSERT INTO TB_estudantes(id, nome, rg, cpf, data_nascimento, idade, ano_escolar, media) VALUES
(1, 'João Silva', 12345678901, 1234567890123, '2005-03-15', 18, '3º ano do Ensino Médio', 6.5),
(2, 'Maria Oliveira', 23456789012, 2345678901234, '2006-07-22', 17, '2º ano do Ensino Médio', 9.0),
(3, 'Pedro Santos', 34567890123, 3456789012345, '2007-11-10', 16, '1º ano do Ensino Médio', 7.8),
(4, 'Ana Costa', 45678901234, 4567890123456, '2008-05-30', 15, '9º ano do Ensino Fundamental', 8.2),
(5, 'Carlos Pereira', 56789012345, 5678901234567, '2009-01-20', 14, '8º ano do Ensino Fundamental', 9.5),
(6, 'Luciana Almeida', 67890123456, 6789012345678, '2010-09-05', 13, '7º ano do Ensino Fundamental', 8.0),
(7, 'Fernanda Lima', 78901234567, 7890123456789, '2011-12-25', 12, '6º ano do Ensino Fundamental', 7.5),
(8, 'Rafael Souza', 89012345678, 8901234567890, '2012-04-18', 11, '5º ano do Ensino Fundamental', 5.2),
(9, 'Juliana Rodrigues', 90123456789, 9012345678901, '2013-08-12', 10, '4º ano do Ensino Fundamental', 6.7),
(10, 'Gustavo Fernandes', 11234567890, 1123456789012, '2014-02-28', 9, '3º ano do Ensino Fundamental', 7.9);

SELECT * FROM TB_estudantes;

SELECT * FROM TB_estudantes WHERE (media > 7.0);
SELECT * FROM TB_estudantes WHERE (media < 7.0);

UPDATE TB_estudantes SET media = 8.5 WHERE id = 4;

SELECT * FROM TB_estudantes WHERE id = 4;
