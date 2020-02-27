CREATE DATABASE SelectBasic;

USE SelectBasic;

CREATE TABLE CLIENTES(
IdCliente INT PRIMARY KEY IDENTITY,
Nome VARCHAR(255) NOT NULL,
Rua VARCHAR(255) NOT NULL,
Cidade VARCHAR(200) NOT NULL,
Estado CHAR(2) NOT NULL,
Credito_Limite DECIMAL(10) NOT NULL
);

INSERT INTO CLIENTES VALUES ('Pedro Augusto da Rocha', 'Rua Pedro Carlos Hoffman', 'Porto Alegre', 'RS', 700.00);
INSERT INTO CLIENTES VALUES ('Antonio Carlos Mamel', 'Av. Pinheiros', 'Belo Horizonte', 'MG', 3500.50);
INSERT INTO CLIENTES VALUES ('Luiza Augusta Mhor', 'Rua Salto Grande', 'Niteroi', 'RJ', 4000.00);
INSERT INTO CLIENTES VALUES ('Jane Ester', 'Av 7 de setembro', 'Erechim', 'RS', 800.00);
INSERT INTO CLIENTES VALUES ('Marcos Antonio dos Santos','Ac Farrapos', 'Porto Alegre', 'RS',4250.25);

SELECT Nome FROM CLIENTES
WHERE Estado = 'RS'

SELECT * FROM CLIENTES;

TRUNCATE TABLE CLIENTES;
DROP TABLE CLIENTES;