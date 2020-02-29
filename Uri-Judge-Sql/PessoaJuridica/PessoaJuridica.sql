CREATE DATABASE PessoasJuridicas;

USE PessoasJuridicas;

CREATE TABLE Clientes(
IdCliente INT PRIMARY KEY IDENTITY,
NomeC VARCHAR(255) NOT NULL,
Rua VARCHAR(255) NOT NULL,
Cidade VARCHAR(255) NOT NULL,
Estado CHAR(2) NOT NULL,
CreditoLimitado INT NOT NULL
);

CREATE TABLE PessoaLegal(
CNPJ CHAR(18) NOT NULL,
Contato VARCHAR(11) NOT NULL,
IdCliente INT FOREIGN KEY REFERENCES Clientes (IdCliente)
);

INSERT INTO Clientes VALUES ('Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475);
INSERT INTO Clientes VALUES ('Cecilia Olivia Rodrigues', 'Rua Sizuka Usuy', 'Cianorte', 'PR', 3170);
INSERT INTO Clientes VALUES ('Augusto Fernando Carlos Eduardo Cardoso','Rua Baldomiro Koerich', 'Palhoça', 'SC', 1067);
INSERT INTO Clientes VALUES ('Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475);
INSERT INTO Clientes VALUES ('Sabrina Heloisa Gabriela Barros', 'Rua Engenheiro Tito Marques Fernandes', 'Porto Alegre', 'RS', 4312);
INSERT INTO Clientes VALUES ('Joaquim Diego Lorenzo Araújo', 'Rua Vitorino', 'Novo Hamburgo', 'RS', 2314);

INSERT INTO PessoaLegal VALUES ('85883842000191', '99767-0562', 4);
INSERT INTO PessoaLegal VALUES ('47773848000117', '99100-8965', 5);

SELECT NomeC FROM Clientes
WHERE Cidade = 'Porto Alegre'