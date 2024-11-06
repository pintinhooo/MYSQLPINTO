CREATE TABLE Estudantes(
id_estudantes INT PRIMARY KEY,
nome VARCHAR(30),
idade INT,
data_nascimento DATE
);

INSERT INTO Estudantes (id_estudantes, nome, idade, data_nascimento) values
(1, 'António PATA', 17, '2007-07-11'),
(2, 'Jacinto Pinto', 18, '2006-09-13'),
(3, 'Almicar Alho', 16, '2008-10-21'),
(4, 'Adolf Niggler', 19, '2005-02-19'),
(5, 'Mo Nengue', 15, '2009-01-01');

SELECT * FROM estudantes;

SELECT * FROM estudantes WHERE idade >18;

SELECT * from estudantes order by idade DESC;

SELECT * from estudantes ORDER BY idade DESC LIMIT 3;

SELECT count(id_estudantes) as TotalEstudantes FROM estudantes;

SELECT avg(idade) as MediaTotal FROM estudantes;

SELECT min(idade), max(idade) FROM estudantes;
