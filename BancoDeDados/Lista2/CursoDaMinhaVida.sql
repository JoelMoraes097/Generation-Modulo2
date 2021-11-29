CREATE DATABASE db_cursoDaMinhaVida; 

use db_cursoDaMinhaVida;
CREATE TABLE tb_categoria (
id_cat INT NOT NULL AUTO_INCREMENT,
Curso varchar (255),
Horas int,
PRIMARY KEY (id_cat)
);

INSERT tb_categoria (Curso,Horas)
values 
("JAVA", 80),
("SQL", 48),
("LOGICA DE PROGRAMAÇÂO", 8);

select * from tb_categoria;

use db_cursoDaMinhaVida;
CREATE TABLE tb_produto (
id_produto INT NOT NULL AUTO_INCREMENT,
Nome varchar (255),
Nivel varchar (255),
Preco float,
Professor varchar (255),
id_categoria INT NOT NULL,
PRIMARY KEY (id_produto),
FOREIGN KEY (id_categoria) references tb_categoria(id_cat)
);

INSERT tb_produto (Nome, Nivel, Preco, Professor, id_categoria)
values
("Introdução a logica de programação", "Basico", 10.50, "Rubens", 3),
("Introdução a JAVA", "Intermediario", 25.34, "Anelton", 1),
("POO","avançado", 56.30,"Freitas", 1),
("laços Condicionais em java","Intermediario", 32.50,"Aldair", 1),
("Introdução ao SQL", "Basico", 27.80,"Robilson", 2),
("Joins SQL", "Avançado", 72.56, "Anilsa", 2),
("Instalações de Programas", "Basico", 2.50, "Robério",1),
("JAVA PRO", "Avançado", 130.24, "Jair",1);

select * from tb_produto;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where preco > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where preco between 3 and 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra J.
select Nome from tb_produto where tb_produto.Nome like  "%J%";

-- Faça um um select com Inner join entre tabela categoria e produto.
select * from tb_produto
INNER JOIN  tb_categoria on tb_categoria.id_cat = tb_produto.id_categoria;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria Java).
select * from tb_produto
inner join tb_categoria on tb_categoria.id_cat = tb_produto.id_categoria
where tb_categoria.Curso like "%SQL%";




