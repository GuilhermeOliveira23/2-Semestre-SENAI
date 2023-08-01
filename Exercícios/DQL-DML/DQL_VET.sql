--DQL

Create Database Exercicio_1_3_Tarde
Use Exercicio_1_3_Tarde
Create Table Clinica (

IdClinica INT PRIMARY KEY IDENTITY,
Endereco VARCHAR(50) NOT NULL


)
Create Table TipoPet(
IdTipoPet INT PRIMARY KEY IDENTITY,
Descricao VARCHAR(50) NOT NULL

)


Create Table Raca(
IdRaca INT PRIMARY KEY IDENTITY,
Descricao VARCHAR(50) NOT NULL

)
Create Table Dono
(
IdDono INT PRIMARY KEY IDENTITY,
Nome VARCHAR(20) NOT NULL

)

CREATE TABLE Veterinario
(
IdVeterinario INT PRIMARY KEY IDENTITY,
IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica),
Nome VARCHAR(20) NOT NULL,
CRMV VARCHAR(11)  NOT NULL UNIQUE


)

Create Table Pet
(
IdPet INT PRIMARY KEY IDENTITY,
IdTipoPet INT FOREIGN KEY REFERENCES TipoPet(IdTipoPet),
IdRaca INT FOREIGN KEY REFERENCES Raca(IdRaca),
IdDono INT FOREIGN KEY REFERENCES Dono(IdDono),
Nome VARCHAR(20) NOT NULL,
DataNascimento DATETIME NOT NULL



)

Create Table Atendimentos
(
IdAtendimento INT PRIMARY KEY IDENTITY,
IdVeterinario INT FOREIGN KEY REFERENCES Veterinario(IdVeterinario),
IdPet INT FOREIGN KEY REFERENCES Pet(IdPet),
Descricao VARCHAR(50) NOT NULL,
[Data] DATETIME NOT NULL
)


