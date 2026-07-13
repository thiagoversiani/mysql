-- Criação do Banco de Dados
CREATE DATABASE db_generation_game_online;

-- Seleciona o banco de dados
USE db_generation_game_online;

-- Criação da tabela de Classes
CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(255) NOT NULL,
    especialidade VARCHAR(255) NOT NULL,
    arma_principal VARCHAR(255) NOT NULL
);

-- Criação da tabela de Personagens
CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    nivel INT NOT NULL,
    ataque INT NOT NULL,
    defesa INT NOT NULL,
    id_classe BIGINT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

-- Inserindo registros na tabela tb_classes
INSERT INTO tb_classes (nome_classe, especialidade, arma_principal)
VALUES
("Guerreiro", "Combate Corpo a Corpo", "Espada"),
("Mago", "Magia Elemental", "Cajado"),
("Arqueiro", "Ataque à Distância", "Arco"),
("Assassino", "Ataques Rápidos", "Adagas"),
("Paladino", "Defesa e Cura", "Martelo");

-- Inserindo registros na tabela tb_personagens
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, id_classe)
VALUES ("Arthur", 25, 2800, 2000, 1),
("Merlin", 30, 3500, 1200, 2),
("Legolas", 22, 2600, 1700, 3),
("Shadow", 28, 3200, 1400, 4),
("Uther", 35, 2400, 3000, 5),
("Lancelot", 27, 2900, 2100, 1),
("Morgana", 33, 3600, 1300, 2),
("Robin", 20, 2300, 1600, 3);

SELECT * FROM tb_classes;

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.nome_classe = "Arqueiro";