CREATE DATABASE AjaxSa;

USE AjaxSa;

CREATE TABLE Funcionarios(
IdFuncionario INT PRIMARY KEY IDENTITY,
NomeF VARCHAR(255) NOT NULL,
Rua VARCHAR(255) NOT NULL,
Cidade VARCHAR(255) NOT NULL,
Estado CHAR(2) NOT NULL
);

CREATE TABLE Produtos(
IdProdutos INT PRIMARY KEY IDENTITY,
NomeP VARCHAR(255) NOT NULL,
Quantidade INT NOT NULL,
Preco INT NOT NULL,
IdFuncionario INT FOREIGN KEY REFERENCES Funcionarios (IdFuncionario)
);

INSERT INTO Funcionarios VALUES ('Ajax SA', 'Presidente Castelo Branco', 'Porto Alegre', 'RS');
INSERT INTO Funcionarios VALUES ('Sansul SA', 'AV Brasil', 'Rio de Janeiro', 'RJ');
INSERT INTO Funcionarios VALUES ('South Chairs', 'Av Moinho', 'Santa Maria', 'RS');
INSERT INTO Funcionarios VALUES ('Elon Electro', 'Apolo', 'Sao Paulo','SP'); 
INSERT INTO Funcionarios VALUES ('Mike Electro', 'Pedro da Cunha', 'Curitiba', 'PR');

INSERT INTO Produtos VALUES ('Blue Chair', 30, 300.00, 5);
INSERT INTO Produtos VALUES ('Red Chair', 50, 2150.00, 1);
INSERT INTO Produtos VALUES ('Disney Wardrobe', 400, 829.50,4);
INSERT INTO Produtos VALUES ('Blue Toaster', 20, 9.90,3);
INSERT INTO Produtos VALUES ('Solar Panel', 30, 3000.25, 4);

SELECT * FROM Produtos;
SELECT * FROM Funcionarios;

SELECT NomeP, NomeF
FROM Produtos P INNER JOIN Funcionarios F ON P.IdFuncionario = F.IdFuncionario
WHERE NomeF = 'Ajax SA'