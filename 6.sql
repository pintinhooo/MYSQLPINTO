CREATE DATABASE Empresa;

USE empresa;

CREATE TABLE funcionarios (
	id_funcionario INT,
	nome varchar(20),
    Morada varchar(40),
    Contacto INT,
	primary key(id_funcionario)
);

CREATE TABLE clientes (
	id_cliente INT auto_increment,
	nome varchar(20),
    Morada varchar(40),
    Contacto INT,
    id_funcionario INT,
    PRIMARY KEY(id_cliente),
    FOREIGN KEY(id_funcionario) REFERENCES funcionarios(id_funcionario)
    );
    
    SELECT * FROM clientes, funcionarios;
    
    INSERT INTO funcionarios VALUES
    (1,"Jão 1", "Figueira" , 915899988),
	(2,"Jão Santos 2", "Lisboa" , 918192718),
    (3,"Jão Anjos 3", "Gaia" , 917878170),
    (4,"Jão Souza 4", "Algarve" , 919019282);
    
	INSERT INTO clientes VALUES
    (1,"Gabriel 1", "Figueira" , 915897288, 2),
	(2,"Gabriel Serpa 2", "Lisboa" , 918817218, 2),
    (3,"Gabriel Madruga 3", "Gaia" , 917872870, 4),
    (4,"Gabriel Nengue 4", "Algarve" , 919011982, 1);
    
	SELECT funcionarios.nome, funcionarios.id_funcionario
    FROM funcionarios 
    CROSS JOIN clientes;
    
    SELECT funcionarios.nome, funcionarios.id_funcionario
    FROM funcionarios 
    INNER JOIN clientes 
    ON funcionarios.id_funcionario = clientes.id_funcionario;
    
    SELECT funcionarios.nome
    FROM funcionarios
    OUTER JOIN clientes
	ON funcionarios.id_funcionario = clientes.id_funcionario;
    
	SELECT funcionarios.nome, funcionarios.id_funcionario
	FROM funcionarios 
    LEFT OUTER JOIN clientes 
    ON funcionarios.id_funcionario = clientes.id_funcionario;
    
	SELECT funcionarios.nome, funcionarios.id_funcionario
    FROM funcionarios 
    RIGHT OUTER JOIN clientes 
    ON funcionarios.id_funcionario = clientes.id_funcionario;