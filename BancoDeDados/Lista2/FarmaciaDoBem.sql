CREATE  DATABASE db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria (
	id_cat INT NOT NULL auto_increment,
    tipo varchar(255),
    receita boolean ,
	primary key (id_cat)
);

INSERT INTO tb_categoria (tipo, receita)
VALUES
("antibióticos", true),
("antirretrovirais", true),
("anabolizantes", true),
("imunossupressore", true),
("analgésico", false),
("xaropes", false),
("higiene", false);

select * from tb_categoria;

use db_farmacia_do_bem;

create table tb_produtos (
id_produto INT NOT NULL auto_increment,
nome varchar(255),
preco float,
id_categoria INT NOT NULL,
PRIMARY key (id_produto),
FOREIGN key (id_categoria) references tb_categoria (id_cat)

);

INSERT INTO tb_produtos (nome, preco, id_categoria)
VALUES
("Primobola", 100.20,1),
("Amoxicilina.", 53.50, 1),
("Ampicilina", 68.30, 1),
("Azlocilina", 83.20, 1),
("Winstrol ", 120.50, 3),
("Dropropizina ",32.50, 6),
("Shampoo reconstrução",22.50, 7),
("Micofenolato de Mofetila", 62.40, 3);

select * from tb_categoria;
select * from tb_produtos;


-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
SELECT * FROM tb_produtos WHERE Preco > 55.00;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
SELECT * FROM tb_produtos WHERE preco between 3 and 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra B.
SELECT nome  FROM tb_produtos WHERE tb_produtos.nome LIKE "%b%";


-- Faça um um select com Inner join entre tabela categoria e pizza.
SELECT * FROM tb_produtos 
 INNER JOIN tb_categoria on tb_categoria.id_cat = tb_produtos.id_categoria;


-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
SELECT * FROM tb_produtos 
 INNER JOIN tb_categoria on tb_categoria.id_cat = tb_produtos.id_categoria
WHERE tb_categoria.tipo LIKE "%higiene%";