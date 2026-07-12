CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
    id bigint AUTO_INCREMENT PRIMARY KEY,
    nome varchar(100) NOT NULL,
    idade int NOT NULL,
    turma varchar(20) NOT NULL,
    nota decimal(4,2) NOT NULL,
    data_matricula date NOT NULL
);

INSERT INTO tb_estudantes (nome, idade, turma, nota, data_matricula)
VALUES ("Ana Silva", 15, "1º Ano A", 8.7, "2025-02-03"),
("Bruno Souza", 16, "2º Ano B", 7.5, "2024-02-05"),
("Carla Oliveira", 14, "9º Ano A", 9.2, "2025-02-10"),
("Diego Santos", 17, "3º Ano A", 6.8, "2023-02-06"),
("Eduarda Lima", 15, "1º Ano B", 8.9, "2025-02-03"),
("Felipe Costa", 16, "2º Ano A", 7.0, "2024-02-05"),
("Gabriela Martins", 14, "9º Ano B", 9.5, "2025-02-10"),
("Henrique Almeida", 17, "3º Ano B", 8.1, "2023-02-06");

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;
