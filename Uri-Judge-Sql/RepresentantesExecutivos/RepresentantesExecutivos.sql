CREATE DATABASE RE;

USE RE;

CREATE TABLE Fornecedores(
IdFornecedores INT PRIMARY KEY IDENTITY,
Nome VARCHAR(255) NOT NULL,
Rua VARCHAR(255) NOT NULL,
Cidade VARCHAR(255) NOT NULL,
Estado CHAR(2) NOT NULL
);

CREATE TABLE Categorias(
IdCategorias INT PRIMARY KEY IDENTITY,
NomeC VARCHAR(255) NOT NULL
);

CREATE TABLE Produtos(
IdProduto INT PRIMARY KEY IDENTITY,
NomeP VARCHAR(255) NOT NULL,
Quantidade INT NOT NULL,
Preco INT NOT NULL,
IdFornecedores INT FOREIGN KEY REFERENCES Fornecedores(IdFornecedores),
IdCategorias INT FOREIGN KEY REFERENCES Categorias(IdCategorias)
);

INSERT INTO Categorias VALUES('old stock');
INSERT INTO Categorias VALUES('new stock');
INSERT INTO Categorias VALUES('mordern');
INSERT INTO Categorias VALUES('commercial');
INSERT INTO Categorias VALUES('recyclable');
INSERT INTO Categorias VALUES('executive');
INSERT INTO Categorias VALUES('superior');
INSERT INTO Categorias VALUES('wood');
INSERT INTO Categorias VALUES('super luxury');
INSERT INTO Categorias VALUES('vintage');

INSERT INTO Fornecedores VALUES('Henrique','Av Brasil','Rio de Janeiro','RJ');
INSERT INTO Fornecedores VALUES('Marcelo Augusto','Rua Imigrantes','Belo Horizonte','MG');
INSERT INTO Fornecedores VALUES('Caroline Silva','Av Sao Paulo','Salvador','BA');
INSERT INTO Fornecedores VALUES('Guilherme Staff','Rua Central', 'Porto Alegre', 'RS');
INSERT INTO Fornecedores VALUES('Isabela Moraes', 'Av Juiz Grande','Curitiba', 'PR');
INSERT INTO Fornecedores VALUES('Francisco Accerr','Av Paulista','Sao Paulo','SP');

INSERT INTO Produtos VALUES ('Two-door wardrobe',100, 800, 6, 8);
INSERT INTO Produtos VALUES ('Dining Table', 1000, 560, 1, 9);
INSERT INTO Produtos VALUES('Towel holder',10000, 25.50, 5, 1);
INSERT INTO Produtos VALUES('Computer desk', 350, 320.50, 4, 6);
INSERT INTO Produtos VALUES('Chair', 3000, 210.64, 3, 6);
INSERT INTO Produtos VALUES('Single Bed', 750, 460, 1, 2);

SELECT Nome, NomeP 
FROM Produtos P INNER JOIN Fornecedores F ON F.IdFornecedores = P.IdFornecedores
WHERE P.Preco > 200 AND P.Preco < 330

SELECT * FROM Fornecedores;
SELECT * FROM Categorias;
SELECT * FROM Produtos;