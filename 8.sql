CREATE DATABASE JoinsEx5;

USE JoinsEx5;

CREATE TABLE filmes (
	id_filme INT,
	titulo_filme VARCHAR(20),
    id_categoria INT,
    PRIMARY KEY(id_filme),
    FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria)
);

CREATE TABLE categorias (
	id_categoria INT,
    id_filme INT,
	nome_categoria VARCHAR(30),
	PRIMARY KEY (id_categoria)
);

INSERT INTO categorias VALUES (11, 1, "SPORTS"), (20, 2, "DRAMA");

INSERT INTO filmes VALUES (1, "STARBOY", 11), (2, "VERA VERÃO", 20);

SELECT filmes.titulo_filme
FROM filmes
LEFT JOIN categorias
ON categorias.id_categoria = filmes.id_categoria
WHERE categorias.nome_categoria = "SPORTS"
ORDER BY filmes.titulo_filme ASC;

CREATE TABLE autores (
	id_autor INT,
	


);