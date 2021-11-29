CREATE DATABASE db_ecommerce;

use db_ecommerce;
CREATE TABLE tb_produtos (
id_produto INT NOT NULL auto_increment,
Nome varchar (255),
Preco float,
Tamanho varchar(1),
Exclusivo BOOLEAN,
primary key (id_produto)
);

INSERT tb_produtos(Nome,Preco,Tamanho,Exclusivo)
values
("Camisa Gucci",299.99, "G", True),
("Camisa LV",199.99, "M", True),
("Camisa Oakley",89.99, "G", False),
("Camisa Fatal Surf",49.99, "G", False),
("Camisa Blueberry",399.99, "P", True),
("Camisa Balenciaga",499.99, "G", True),
("Camisa Billabong",69.99, "M", False),
("Camisa Zara",99.99, "P", False);

SELECT * FROM tb_produtos WHERE Preco > 500;
SELECT * FROM tb_produtos WHERE Preco < 500;

UPDATE tb_produtos
SET Preco = 699.99
WHERE id_produto = 14;


