--DQL


Create Database Exercicio_1_2_Tarde
Use Exercicio_1_2_Tarde

CREATE TABLE Cliente
(
IdCliente INT PRIMARY KEY IDENTITY,
Nome VARCHAR(20) NOT NULL,
CPF VARCHAR(11) NOT NULL UNIQUE
)
drop table CLIENTE
CREATE TABLE Empresa
(
IdEmpresa INT PRIMARY KEY IDENTITY,
Nome VARCHAR(20) NOT NULL
)
drop table EMPRESA

CREATE TABLE Modelo(
IdModelo INT PRIMARY KEY IDENTITY,
Nome VARCHAR(20) NOT NULL
)

CREATE TABLE Marca
(
IdMarca INT PRIMARY KEY IDENTITY,
Nome VARCHAR(20) NOT NULL
)

CREATE TABLE Veiculo(
IdVeiculo INT PRIMARY KEY IDENTITY,
IdEmpresa INT FOREIGN KEY REFERENCES Empresa(IdEmpresa),
IdModelo INT FOREIGN KEY REFERENCES Modelo(IdModelo),
IdMarca INT FOREIGN KEY REFERENCES Marca(IdMarca),
Placa VARCHAR(7)  NOT NULL UNIQUE
)
drop table Veiculo



CREATE TABLE Aluguel(
IdAluguel INT PRIMARY KEY IDENTITY,
IdVeiculo INT FOREIGN KEY REFERENCES Veiculo(IdVeiculo),
IdCliente INT FOREIGN KEY REFERENCES Cliente(IdCliente),
Protocolo VARCHAR(80) NOT NULL,
DataInicio DATETIME NOT NULL,
DataFim DATETIME NOT NULL
)






drop table Aluguel

Select * FROM Veiculo
SELECT * FROM Aluguel


