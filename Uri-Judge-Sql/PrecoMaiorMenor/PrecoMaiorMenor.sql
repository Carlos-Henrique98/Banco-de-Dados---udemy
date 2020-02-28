CREATE DATABASE PrecoMaiorMenor;

USE PrecoMaiorMenor;

CREATE TABLE Produtos(
IdProdutos INT PRIMARY KEY IDENTITY,
NomeP VARCHAR(255) NOT NULL,
Quantidade INT NOT NULL,
Preco DECIMAL(5,2) NOT NULL
);

INSERT INTO Produtos VALUES ('Two-doors wardrobe', 100, 800);
INSERT INTO Produtos VALUES ('Dining table', 1000, 560);
INSERT INTO Produtos VALUES ('Towel holder', 10000, 25.50);
INSERT INTO Produtos VALUES ('Computer desk', 350, 320.50);
INSERT INTO Produtos VALUES ('Chair', 3000, 210.64);
INSERT INTO Produtos VALUES ('Single bed', 750, 460);

SELECT * FROM Produtos;

--Maior PRECO
SELECT Max(Preco) AS Preco FROM Produtos 

--Menor PRECO
SELECT Min(Preco) AS Preco FROM Produtos


DROP TABLE Produtos;