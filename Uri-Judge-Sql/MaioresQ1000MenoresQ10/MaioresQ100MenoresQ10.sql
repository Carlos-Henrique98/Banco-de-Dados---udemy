CREATE DATABASE Produtos;

USE Produtos;

CREATE TABLE Produto(
IdProduto INT PRIMARY KEY IDENTITY,
Nome VARCHAR(255) NOT NULL,
Quantidade INT NOT NULL, 
Preco DECIMAL(5,2) NOT NULL
);

INSERT INTO Produto VALUES('Two-door wradrobe',100,80);
INSERT INTO Produto VALUES('Dining table',1000,560);
INSERT INTO Produto VALUES('Towel holder', 10000, 5.50);
INSERT INTO Produto VALUES('Computer desk', 350, 100);
INSERT INTO Produto VALUES('Chair', 3000, 210.64);
INSERT INTO Produto VALUES('Single bed', 750, 99);

SELECT Nome FROM Produto
WHERE Quantidade >= 1000 

SELECT Nome FROM Produto
WHERE Quantidade <= 10


SELECT * FROM Produto;