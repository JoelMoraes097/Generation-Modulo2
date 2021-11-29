CREATE DATABASE db_cidade_das_carnes;
use db_cidade_das_carnes;
CREATE TABLE tb_categoria (
id_cat INT NOT NULL auto_increment,
Tipo varchar (255),
Corte varchar (255),
primary key (id_cat)
);


INSERT INTO tb_categoria (Tipo,Corte)
VALUES
("Suino", "Peça"),
("Suino", "Cortado"),
("Bovino", "Peça"),
("Bovino", "Cortado"),
("Ave", "Peça"),
("Ave", "Cortado");

select * from tb_categoria;

use db_cidade_das_carnes;
Create table tb_produto (
id_produto INT NOT NULL auto_increment,
Nome varchar (255),
Preco float,
Peso varchar (255),
id_categoria INT NOT NULL, 
PRIMARY key (id_produto),
FOREIGN key (id_categoria) references tb_categoria (id_cat)
);

INSERT INTO tb_produto (Nome, Preco, Peso, id_categoria)
VALUES
("Picanha", 75.20, "1kg", 3),
("Bife de Picanha", 52.64, "700G", 1),
("Coxa sobre coxa", 15.00, "1kg", 6),
("Bisteca suina", 12.00, "1kg", 2),
("Peça contra-file", 45.00, "1kg", 3),
("Bife contra-file", 45.00, "1kg" ,3),
("LINGUIÇA TOSCANA", 18.76, "700G", 1),
("Carne moída suína", 14.93, "500G", 1),
("Frango Inteiro", 39.90, "2kg", 5),
("Linguiça de frango", 17.96, "700G", 1);

select * from tb_produto;

UPDATE tb_produto
SET id_categoria = 4
WHERE id_produto = 4;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Select * from tb_produto where Preco > 50.90; 

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
Select * from tb_produto where Preco between 3 and 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
Select Nome from tb_produto where tb_produto.Nome like "%c%";

-- Faça um um select com Inner join entre tabela categoria e produto.
select * from tb_produto 
inner join tb_categoria on tb_categoria.id_cat = tb_produto.id_categoria;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são aves ou legumes).
SELECT * FROM tb_produto 
 INNER JOIN tb_categoria on tb_categoria.id_cat = tb_produto.id_categoria
WHERE tb_categoria.tipo LIKE "%suino%";