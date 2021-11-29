CREATE DATABASE db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;
CREATE TABLE tb_categoria (
id_cat INT NOT NULL AUTO_INCREMENT, 
Tipo VARCHAR (255),
Eletrico BOOLEAN,
primary key (id_cat)
);

INSERT tb_categoria (Tipo,Eletrico)
values
("Material",false),
("Decoração Jardim",false),
("Ferramentas",false),
("Ferramentas eletricas", true),
("Iluminação",true);

select * from tb_categoria;

use db_construindo_a_nossa_vida;
CREATE TABLE tb_produto (
id_produto INT NOT NULL AUTO_INCREMENT, 
Nome varchar (255),
Preco float,
Quantidade int,
id_categoria INT NOT NULL,
PRIMARY key (id_produto),
FOREIGN key (id_categoria) references tb_categoria (id_cat)
);

INSERT tb_produto (Nome, Preco, Quantidade, id_categoria)
values
("Martelo", 23.49 , 1, 3),
("Furadeira", 87.42 , 1, 4),
("Bloco Concreto", 43.00, 10, 1),
("Lampada 10w", 15.32, 1, 5),
("Palmeira artificial", 130.00, 1, 2),
("Parafuso Kit com 10", 5.25, 10, 3), 
("Serrote", 23.00, 1, 3),
("Viga de madeira", 55.32, 1, 1);

select * from tb_produto;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where preco > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where preco between 3 and 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
select Nome from tb_produto where tb_produto.Nome like "%c%";

-- Faça um um select com Inner join entre tabela categoria e produto.
select * from tb_produto
inner join tb_categoria on tb_categoria.id_cat = tb_produto.id_categoria;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria hidráulica).

select * from tb_produto
inner join tb_categoria on tb_categoria.id_cat = tb_produto.id_categoria
where tb_categoria.Tipo like "%material%";

