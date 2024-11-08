CREATE DATABASE EmpresaInformatica;

USE empresainformatica;

CREATE TABLE clientes (
    id_cliente INT,
    nome_cliente VARCHAR(20),
    PRIMARY KEY (id_cliente)
);

CREATE TABLE pedidos (
	id_pedido INT,
    id_cliente INT,
    data_pedido DATE,
    PRIMARY KEY (id_pedido),
    FOREIGN KEY (id_cliente) REFERENCES CLIENTES (id_cliente)
);

INSERT INTO clientes VALUES
(1,"Gabriel 1"),
(2,"Gabriel Serpa 2"),
(3,"Gabriel Madruga 3"),
(4,"Gabriel Nengue 4");

INSERT INTO pedidos VALUES
(2, 1, "2007-07-11"),
(1, 2, "2007-07-11"),
(3, 3, "2007-07-11"),
(4, 3, "2007-07-11");

SELECT * FROM clientes, pedidos;

SELECT pedidos.id_pedido, pedidos.id_cliente, pedidos.data_pedido
FROM pedidos
INNER JOIN clientes 
ON pedidos.id_cliente = clientes.id_cliente;