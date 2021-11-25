CREATE DATABASE db_atividade1 ;
USE db_atividade1;

CREATE TABLE tb_funcoes (
	id_funcio INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255),
    funcao VARCHAR(255),
    salario FLOAT,
    email VARCHAR(255),
    PRIMARY KEY (id_funcio)
);

INSERT INTO tb_funcoes (nome, funcao, salario, email)
VALUES
("Joselita", "Programadora jr", 4500, "joseliao@email.com"),
("Moliver",	"Programador senior", 10300, "moliver@email.com"),
("Maycon Douglas", "Operador", 1500, "maycondouglas@email.com"),
("Mertison Olivera", "Gerente ADM", 8500, "mertizinho@email.com"),
("Rose Dlima", "Gerente Executiva",	20100, "rosedlima@email.com");

UPDATE tb_funcoes
SET funcao = "Programadora senior"
WHERE id_funcio = 1;

UPDATE tb_funcoes
SET salario = 10300
WHERE id_funcio = 1;

SELECT * FROM tb_funcoes WHERE salario > 2000;
SELECT * FROM tb_funcoes WHERE salario < 2000;

