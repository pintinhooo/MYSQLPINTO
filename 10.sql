CREATE  DATABASE joins_pii_ex6;

use joins_pii_ex6;

CREATE TABLE modelo(
	codMod INT,
	Nome VARCHAR(10),
    Marca VARCHAR(10),
    PRIMARY KEY(codMod) 
);

CREATE TABLE veiculo(
	Matricula VARCHAR(8),
    cor VARCHAR(15),
    codMod int,
    NIF int,
    PRIMARY KEY(Matricula),
    FOREIGN KEY(codMod) REFERENCES modelo(codMod),
    FOREIGN KEY(NIF) REFERENCES cliente(NIF)
);

# Exercício D
ALTER TABLE veiculo
ADD COLUMN ano DATE;


CREATE TABLE cliente(
	NIF INT,
    Nome VARCHAR(30),
    dtNasc DATE,
    PRIMARY KEY(NIF)
);

CREATE TABLE estacionamento(
	Num INT,
    Piso INT,
    Capacidade INT,
    PRIMARY KEY(Num)
);

ALTER TABLE estacionamento 
ADD COLUMN matricula varchar(8);

ALTER TABLE estacionamento
ADD CONSTRAINT matricula
FOREIGN KEY(matricula) REFERENCES veiculo(matricula);

ALTER TABLE estacionamento 
ADD COLUMN ano DATE;

CREATE TABLE estaciona(
	cod INT,
    dataEntrada DATE,
    dataSaida DATE,
    horaEntrada TIME,
    horaSaida TIME,
    Matricula VARCHAR(9),
    Num INT,
    PRIMARY KEY(cod),
    FOREIGN KEY(Matricula) REFERENCES veiculo(Matricula),
    FOREIGN KEY(Num) REFERENCES estacionamento(Num)
);

INSERT INTO modelo VALUES
(1,"Serie A","BMW"),
(2,"Corolla","Toyota"),
(3,"208","Peugeot");


INSERT INTO cliente VALUES
(123456789,"Paulo Brificado","2000-10-28"),
(987654321,"Jalam Bipau","2000-05-15"),
(265128257,"Jacinto Pinto","2000-12-02");

INSERT INTO veiculo VALUES
("BRA-4567", "amarelo",1,123456789),
("XYZ-8293", "cinzento",2,987654321),
("QKL-3048", "cinzento",3,265128257);

INSERT INTO estacionamento VALUES
(20,1,30),
(21,1,30),
(40,2,25);

INSERT INTO estaciona VALUES
(1,"2024-11-05","2024-11-26","03:09:04","15:30:17","BRA-4567",20),
(2,"2024-11-19","2024-11-22","18:00:00","15:23:09","XYZ-8293",21),
(3,"2024-09-27","2024-10-20","05:00:56","14:50:36","QKL-3048",40);

# EX A 

SELECT Matricula, Nome
FROM veiculo
INNER JOIN cliente 
ON veiculo.NIF = cliente.NIF;

# EX B "21-FC-41" = "XYZ=8293"

SELECT cliente.Nif, cliente.Nome
FROM cliente
LEFT OUTER JOIN veiculo
ON veiculo.nif = cliente.nif
WHERE Matricula = "XYZ-8293";

# EX C 

UPDATE estacionamento 
SET matricula = "BRA-4567";

SELECT veiculo.matricula, veiculo.cor
FROM veiculo
LEFT OUTER JOIN estacionamento
ON veiculo.matricula = estacionamento.matricula
WHERE piso = 1;

# EX D

SELECT veiculo.matricula, veiculo.ano
FROM veiculo
LEFT OUTER JOIN estacionamento
ON veiculo.matricula = estacionamento.matricula
WHERE piso = 1;

# EX E

SELECT estaciona.dataEntrada, estaciona.dataSaida
FROM estaciona
LEFT OUTER JOIN veiculo
ON estaciona.matricula = veiculo.matricula
WHERE veiculo.matricula = "70-20-ZH";

# EX F

SELECT cliente.nome 
FROM cliente
LEFT OUTER JOIN veiculo
ON cliente.nif = veiculo.nif
WHERE codmod = 1;

# EX G


















SET SQL_SAFE_UPDATES = 0;
