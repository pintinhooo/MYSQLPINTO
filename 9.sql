USE escola;

SELECT * FROM estudantes; 

INSERT INTO estudantes VALUES 
(6, "Gabrikas Gaikmasters", 131, "1893-09-28");

update estudantes 
set idade = 12, DataNacimento = "2012-02-02"
Where id_aluno = 2;

DELETE FROM estudantes WHERE idade > 35;

SET SQL_SAFE_UPDATES = 0;

CREATE TABLE SUM (
	pedidoID INT,
    EMPRESA VARCHAR(20),
    QUANTIDADE INT
);

INSERT INTO sum VALUES 
(1, "A", 20),
(2, "B", 50),
(3, "B", 50);

SELECT SUM(Quantidade) AS SUM_TOTAL FROM SUM;

SELECT Empresa, SUM(quantidade) as SUM_TOTAL
FROM SUM
GROUP BY empresa;

INSERT INTO sum VALUES 
(4, "B", null);

INSERT INTO sum VALUES 
(5, "C", null);

SELECT * FROM sum;

SELECT sum(idade) as IdadeTotal FROM estudantes;

SELECT sum(idade) as IdadeTotal_18 FROM estudantes
WHERE idade > 18;

SELECT COUNT(*) AS TotalEstudantes FROM estudantes;

SELECT COUNT(*) AS TotalEstudantes20 FROM estudantes 
WHERE idade > 20;

INSERT INTO sum VALUES 
(6, "A", 11),
(7, "C", 69);

SELECT avg(quantidade) as MediaQuantidade from sum;

SELECT Empresa, avg(quantidade) as MediaEmpresa
FROM sum
GROUP BY empresa;

CREATE TABLE MinMax (
	pedidoID INT,
    cliente VARCHAR(20),
    data_entrega DATE
);

INSERT INTO minmax VALUES 
(1, "C01", "1987-10-01" ),
(2, "C02", "1988-10-01" ),
(3, "C03", "1990-10-01" );

SELECT MIN(data_entrega) FROM minmax;

SELECT MAX(data_entrega) FROM minmax;