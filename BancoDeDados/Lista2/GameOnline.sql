CREATE DATABASE db_generation_game_online ;
USE db_generation_game_online;
CREATE TABLE tb_classe (

id_classes INT NOT NULL AUTO_INCREMENT,
Nome varchar(255),
Poder varchar(255),
Arma varchar(255),
primary key (id_classes)
);
USE db_generation_game_online;
CREATE TABLE tb_personagem (
id_personagem INT NOT NULL AUTO_INCREMENT,
Nome varchar(255),
Sexo varchar(255),
Raça varchar (255),
Ataque bigint(5),
Defesa bigint(5),
cl_personagem INT NOT NULL,
primary key (id_personagem),
FOREIGN KEY (cl_personagem) REFERENCES tb_classe (id_classes)
);

INSERT INTO tb_classe (Nome, Poder, Arma)
VALUES
("Arqueiro", "Chuva de flechas", "Arco e flechas"),
("Mago", "Bola de fogo", "Cajado Magico"),
("Guerreiro", "Adrenalina", "Espada"),
("Vampiro", "Imortalidade", "Unhas Afiadas"),
("Lobisomem", "Transformação", "Garras");

SELECT * FROM tb_classe ;

INSERT INTO tb_personagem (Nome, Sexo, Raça, Ataque, Defesa, cl_personagem)
VALUES
("Jason", "Masculino", "Elfo", 5000 , 2000,2),
("Astrid", "Feminino", "Humano", 5000 ,5000,3),
("Geralt de Rivia", "Masculino", "Bruxo", 10000 , 5000,3),
("Ciri", "Feminino", "Bruxo", 7000 , 8000,1),
("Lydia", "Feminino", "Humano", 10000 , 9000,3),
("Dovahkiin", "Indefinido", "Indefinido", 20000 , 10000,5),
("Vesemir", "Masculino", "Indefinido", 0000 , 0000,4),
("Mercia", "Indefinido", "Indefinido", 50000 , 50000,1);

UPDATE tb_personagem
SET Ataque = 1300
WHERE id_personagem = 6;
SELECT * FROM tb_personagem ;

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
SELECT * FROM tb_personagem WHERE Ataque > 2000;

-- Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.
SELECT * FROM tb_personagem WHERE Defesa between 1000 AND 2000;

-- Faça um select utilizando LIKE buscando os personagens com a letra C.
SELECT Nome  FROM tb_personagem WHERE tb_personagem.Nome LIKE "%C%";

-- Faça um um select com Inner join entre tabela classe e personagem.
SELECT * FROM tb_personagem 
 INNER JOIN tb_classe on tb_classe.id_classes = tb_personagem.cl_personagem;

-- Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).
SELECT * FROM tb_personagem 
 INNER JOIN tb_classe on tb_classe.id_classes = tb_personagem.cl_personagem
WHERE tb_classe.Nome LIKE "Arqueiro";

