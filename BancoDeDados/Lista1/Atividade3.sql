CREATE DATABASE db_Escola;


use db_Escola;
CREATE TABLE tb_estudantes (
    id_Estudante int not null auto_increment, 
    Nome VARCHAR(255),
    Materia VARCHAR(255),
    Turma VARCHAR(255),
    Nota int,
    primary key (id_Estudante)
    );

INSERT INTO tb_estudantes (nome, materia, turma, nota) 
values
("Joelbison", "JAVA", "Turma 40", 10),
("Mecson", "LOGICA", "Turma 24", 5),
("Floetin", "SQL", "Turma 29", 8),
("Moliver", "SPRING", "Turma 50", 7),
("Dianho", "SQL", "Turma 20", 4),
("Oliver", "SQL", "Turma 53", 8),
("Vinicius", "JAVA", "Turma 40", 7),
("Felipes", "SQL", "Turma 20", 9);

SELECT * FROM tb_Estudantes WHERE nota > 7;
SELECT * FROM tb_Estudantes WHERE nota < 7;

UPDATE tb_Estudantes
SET Nota = 4
WHERE id_Estudante = 1;

