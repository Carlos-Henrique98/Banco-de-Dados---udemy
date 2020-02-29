CREATE DATABASE FilmeAcao;

USE FilmeAcao;

CREATE TABLE Genero(
IdGenero INT PRIMARY KEY IDENTITY,
Descricao VARCHAR(255) NOT NULL
);

CREATE TABLE Filmes(
IdFilmes INT PRIMARY KEY IDENTITY,
NomeF VARCHAR(255) NOT NULL,
IdGenero INT FOREIGN KEY REFERENCES Genero (IdGenero)
);

INSERT INTO Filmes VALUES ('Batman', 3);
INSERT INTO Filmes VALUES ('The Battle of the Dark River', 3);
INSERT INTO Filmes VALUES ('White Duck', 1);
INSERT INTO Filmes VALUES ('Breaking Barriers', 4);
INSERT INTO Filmes VALUES ('The Two Hours', 2);

INSERT INTO Genero VALUES ('Animation');
INSERT INTO Genero VALUES ('Horror');
INSERT INTO Genero VALUES ('Action');
INSERT INTO Genero VALUES ('Drama');
INSERT INTO Genero VALUES ('Comedy');

SELECT * FROM Genero;
SELECT * FROM Filmes;

SELECT NomeF AS NomeFilme FROM Filmes
WHERE IdGenero = 3;