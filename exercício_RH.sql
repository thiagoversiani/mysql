-- cria o banco de dados
CREATE DATABASE db_RH;

USE db_RH;

CREATE TABLE db_funcionarios(
id bigint AUTO_INCREMENT PRIMARY KEY,
nome varchar(255) NOT NULL,
cargo varchar (255) NOT NULL,
departamento varchar(255) NOT NULL,
salario decimal  (10,2) NOT NULL,
data_admissao DATE NOT NULL
);

INSERT INTO db_funcionarios(nome, cargo, departamento, salario, data_admissao)
	VALUES ("Thiago", "Programador", "TI", 5000.00, "2026-09-15");

    
INSERT INTO db_funcionarios(nome, cargo, departamento, salario, data_admissao)
	VALUES ("Marina", "Administradora", "Contabilidade", 5000.00, "2024-06-17"),
     ("Luciano", "Professor", "Educação", 6000.00, "2026-10-25");
     
     INSERT INTO db_funcionarios(nome, cargo, departamento, salario, data_admissao)
	VALUES ("Amanda", "Programadora", "TI", 5000.00, "2024-04-17"),
     ("Mariana", "Professora", "Educação", 1800.00, "2023-10-25");
     
     SELECT * FROM db_funcionarios; 
     
     SELECT * FROM db_funcionarios WHERE salario > 2000.00;
     
     SELECT * FROM db_funcionarios WHERE salario < 2000.00;