-- Criação do Banco de Dados
CREATE DATABASE db_pizzaria_legal;

-- Seleciona o banco de dados
USE db_pizzaria_legal;

-- Criação da tabela de Categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

-- Criação da tabela de Pizzas
CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    tamanho VARCHAR(255) NOT NULL,
    preco DECIMAL(4,2) NOT NULL,
    borda_recheada BOOLEAN NOT NULL,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

-- Inserindo registros na tabela tb_categorias
INSERT INTO tb_categorias (categoria, descricao)
VALUES ("Tradicional", "Pizzas com sabores clássicos"),
("Especial", "Pizzas gourmet"),
("Doce", "Pizzas com recheios doces"),
("Vegetariana", "Pizzas sem carne"),
("Premium", "Pizzas com ingredientes nobres");

-- Inserindo registros na tabela tb_pizzas
INSERT INTO tb_pizzas (nome, tamanho, preco, borda_recheada, id_categoria)
VALUES ("Calabresa", "Grande", 49.90, TRUE, 1),
("Mussarela", "Média", 42.50, FALSE, 1),
("Frango com Catupiry", "Grande", 59.90, TRUE, 2),
("Portuguesa", "Grande", 56.90, FALSE, 2),
("Chocolate", "Média", 39.90, TRUE, 3),
("Banana com Canela", "Pequena", 34.90, FALSE, 3),
("Brócolis com Queijo", "Grande", 52.90, TRUE, 4),
("Camarão Especial", "Grande", 79.90, TRUE, 5);

SELECT * FROM tb_categorias;

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id
WHERE tb_categorias.categoria = "Doce";