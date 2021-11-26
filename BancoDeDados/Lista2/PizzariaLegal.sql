CREATE DATABASE db_pizzaria_legal ;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria (

id_cat INT NOT NULL AUTO_INCREMENT,
Tamanho VARCHAR(255),
Sabor VARCHAR (255),
Pedacos int,

Primary key (id_cat)
);

USE db_pizzaria_legal;
INSERT INTO tb_categoria (Tamanho, Sabor, Pedacos)
VALUES
("Grande", "Pizza Doce", 8),
("Grande", "Pizza Salgada", 8),
("Pequena", "Pizza Doce", 4),
("Pequena", "Pizza Doce", 4),
("Esfiiha", "Esfiha Doce", 1),
("Esfiiha", "Esfiha Salgada", 1);

USE db_pizzaria_legal;

CREATE TABLE tb_pizza (

id_pizza INT NOT NULL AUTO_INCREMENT,
Nome VARCHAR(255),
Ingrediente1 VARCHAR (255),
Ingrediente2 VARCHAR (255),
Ingrediente3 VARCHAR (255),
preco Float,
categoria_id INT NOT NULL,

Primary key (id_pizza),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id_cat)
);
ALTER TABLE tb_pizza ADD  preco Float not null;

USE db_pizzaria_legal;
INSERT INTO tb_pizza (Nome, Ingrediente1, Ingrediente2, Ingrediente3, preco, categoria_id)
VALUES
("Mussarela", "Mussarela","","" ,35.90,5 ),
("Frango com catupiry", "Frango","Catupiry","", 41.00, 2),
("Baiana", "Calabresa moida","ovos","Pimenta e cebola", 37.99, 2),
("Sensação", "Chocolate ao leite","Morango","Mussarela",46.00,1),
("Beijinho", "Chocolate Branco","Coco Ralado","" ,39.00, 1),
("Dois Amores", "Chocolate ao leite","Morango","Cream cheese",48.00, 1),
("Mussarela", "Mussarela","","" ,1.90,5 ),
("Dois Amores", "Chocolate ao leite","Morango","Cream cheese" ,24.00, 4);


USE db_pizzaria_legal;
UPDATE tb_categoria
SET Sabor = "Pizza Salgada"
WHERE id_cat = 4;

select * from tb_categoria;
select * from tb_pizza;

-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
SELECT * FROM tb_pizza WHERE Preco > 45.00;

-- Faça um select trazendo os Produtos com valor entre 29 e 60 reais.
SELECT * FROM tb_pizza WHERE preco between 29 and 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
SELECT Nome  FROM tb_pizza WHERE tb_pizza.Nome LIKE "%C%";


-- Faça um um select com Inner join entre tabela categoria e pizza.
SELECT * FROM tb_pizza 
 INNER JOIN tb_categoria on tb_categoria.id_cat = tb_pizza.categoria_id;


-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).
SELECT * FROM tb_pizza 
 INNER JOIN tb_categoria on tb_categoria.id_cat = tb_pizza.categoria_id
WHERE tb_categoria.Sabor LIKE "%Doce%";