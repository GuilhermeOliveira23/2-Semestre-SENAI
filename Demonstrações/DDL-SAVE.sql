--DDL - DATA DEFINITION LANGUAGE

--Cria banco de dados
CREATE DATABASE BancoTarde;
--USA O BANCO DE DADOS
USE BancoTarde;

--cria a tabela
CREATE TABLE Funcionarios
(
IdFuncionario INT PRIMARY KEY IDENTITY,
Nome VARCHAR(10)

);

CREATE TABLE Empresas
(

IdEmpresa INT PRIMARY KEY IDENTITY,
IdFuncionario INT FOREIGN KEY REFERENCES Funcionarios(idFuncionario),
Nome VARCHAR(10)

)

-----------------------

-----ALTER TABLE ------

ALTER TABLE Funcionarios
ADD CPF VARCHAR(11)

ALTER TABLE Funcionarios
DROP COLUMN CPF

DROP TABLE Funcionarios

DROP DATABASE BancoTarde