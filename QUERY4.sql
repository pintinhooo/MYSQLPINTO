SELECT * FROM cidades;

#Exercicio 1
ALTER TABLE cidades RENAME TO CodigoPostal;

#Exercicio 2 
SELECT * FROM codigopostal;

#Exercicio 3
ALTER TABLE codigopostal RENAME COLUMN area to areakm2;

#Exercicio 4
SELECT avg(areakm2) as MediaArea from CodigoPostal;

#Exercicio 5
SELECT Nome, Codigo_Postal
FROM codigopostal
WHERE areakm2 >80;

#Exercicio 6
SELECT nome, distrito, população, areakm2
FROM codigopostal
WHERE codigo_postal = 7830;