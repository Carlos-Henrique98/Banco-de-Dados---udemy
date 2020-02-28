CREATE DATABASE Categorias;

USE Categorias;

CREATE TABLE Categorias(
IdCategorias INT PRIMARY KEY IDENTITY,
NomeC VARCHAR(255) NOT NULL
);

CREATE TABLE Produtos(
IdProdutos INT PRIMARY KEY IDENTITY,
NomeP VARCHAR(255) NOT NULL,
Quantidade INT NOT NULL,
Preco DECIMAL NOT NULL,
IdCategorias INT FOREIGN KEY REFERENCES Categorias (IdCategorias)
);

INSERT INTO Categorias VALUES('Old Stock');
INSERT INTO Categorias VALUES('New Stock');
INSERT INTO Categorias VALUES('Modern');
INSERT INTO Categorias VALUES('Commercial');
INSERT INTO Categorias VALUES('Recyclable');
INSERT INTO Categorias VALUES('Executive');
INSERT INTO Categorias VALUES('Superior');
INSERT INTO Categorias VALUES('Wood');
INSERT INTO Categorias VALUES('Super Luxury');
INSERT INTO Categorias VALUES('Vintage');

INSERT INTO Produtos VALUES ('Lampshade', 100, 800, 4);
INSERT INTO Produtos VALUES ('Table for painting', 1000, 560, 9);
INSERT INTO Produtos VALUES ('Notebook desk', 10000, 25.50, 9);
INSERT INTO Produtos VALUES ('Computer desk', 350, 320.50, 6);
INSERT INTO Produtos VALUES ('Chair', 3000, 210.64, 9);
INSERT INTO Produtos VALUES ('Home alarm', 750, 460, 4);

DROP TABLE Categorias;
DROP TABLE Produtos;

SELECT * FROM Categorias;
SELECT * FROM Produtos;

SELECT IdProdutos, NomeP FROM Produtos
WHERE Quantidade >= 1000