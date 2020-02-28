CREATE DATABASE FilmesPromocao;

USE FilmesPromocao;

CREATE TABLE Precos(
IdPreco INT PRIMARY KEY IDENTITY,
Categoria VARCHAR(255) NOT NULL,
Valor INT NOT NULL
);

CREATE TABLE Filmes(
IdFilmes INT PRIMARY KEY IDENTITY,
NomeF VARCHAR(255) NOT NULL,
IdPreco INT FOREIGN KEY REFERENCES Precos (IdPreco)
);

INSERT INTO Filmes VALUES ('Batman', 3);
INSERT INTO Filmes VALUES ('The Battle the Dark River', 3);
INSERT INTO Filmes VALUES ('White Duck', 5);
INSERT INTO Filmes VALUES ('Breaking Barries', 4);
INSERT INTO Filmes VALUES ('The Two Hours', 2);

INSERT INTO Precos VALUES ('Releases', 3.50);
INSERT INTO Precos VALUES ('Bronze Seal', 2.00);
INSERT INTO Precos VALUES ('Silves Seal', 2.50);
INSERT INTO Precos VALUES ('Gold Seal', 3.00);
INSERT INTO Precos VALUES ('Promotion',1.50);

SELECT * FROM Precos;
SELECT * FROM Filmes;

SELECT IdPreco, Categoria FROM Precos
WHERE Valor < 2;