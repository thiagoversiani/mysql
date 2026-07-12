CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
    id bigint AUTO_INCREMENT PRIMARY KEY,
    nome varchar(255) NOT NULL,
    categoria varchar(255) NOT NULL,
    preco decimal(10,2) NOT NULL,
    estoque int NOT NULL,
    marca varchar(255) NOT NULL
);

INSERT INTO tb_produtos(nome, categoria, preco, estoque, marca)
VALUES ("Notebook Lenovo IdeaPad", "Informática", 3499.90, 15, "Lenovo"),
("Smartphone Samsung Galaxy A56", "Celulares", 1999.90, 30, "Samsung"),
("Mouse Gamer Logitech G203", "Periféricos", 149.90, 50, "Logitech"),
("Teclado Mecânico Redragon Kumara", "Periféricos", 259.90, 25, "Redragon"),
("Monitor LG 24 Polegadas", "Monitores", 899.90, 18, "LG"),
("Headset HyperX Cloud Stinger", "Áudio", 299.90, 22, "HyperX"),
("SSD Kingston 1TB", "Armazenamento", 459.90, 40, "Kingston"),
("Webcam Logitech C920", "Acessórios", 399.90, 12, "Logitech");

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;
