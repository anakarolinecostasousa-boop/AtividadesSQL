CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100) NOT NULL
);

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, descricao) VALUES
('Guerreiro', 'Especialista em combate corpo a corpo'),
('Arqueiro', 'Mestre em ataques à distância'),
('Mago', 'Usuário de magias poderosas'),
('Assassino', 'Ágil e furtivo, especialista em ataques críticos'),
('Paladino', 'Defensor com habilidades de cura');

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES
('Thorgrim', 2500, 1800, 35, 1),
('Legolas', 2200, 1200, 30, 2),
('Merlin', 3000, 900, 40, 3),
('Shadow', 2700, 1100, 33, 4),
('Arthur', 2000, 2000, 28, 5),
('Cassandra', 1800, 1500, 25, 2),
('Cronos', 3200, 800, 42, 3),
('Celeste', 2100, 1700, 29, 5);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';
SELECT p.id, p.nome, p.poder_ataque, p.poder_defesa, p.nivel, c.nome AS classe, c.descricao
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id;

SELECT p.id, p.nome, p.poder_ataque, p.poder_defesa, p.nivel, c.nome AS classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id
WHERE c.nome = 'Arqueiro';
