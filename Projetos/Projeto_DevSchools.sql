
--DDL DATA DEFINITION LANGUAGE--


Create Database [Event+_Tarde]
Use [Event+_Tarde]

--Criar tabelas

Create table TiposDeUsuario
(
IdTiposDeUsuario INT PRIMARY KEY IDENTITY,
TituloTipoDeUsuario VARCHAR(50) NOT NULL UNIQUE
)



Create table TiposDeEvento
(
IdTiposDeEvento INT PRIMARY KEY IDENTITY,
TituloTipoDeEvento VARCHAR(50) NOT NULL UNIQUE
)
Alter table TiposDeEvento add unique (TiposDeEvento)

Create table Instituicao
(
IdInstituicao INT PRIMARY KEY IDENTITY,
CNPJ CHAR(14) NOT NULL UNIQUE,
NomeFantasia VARCHAR(200) NOT NULL,
Endereco VARCHAR(200) NOT NULL
)

Create Table Usuario
(
IdUsuario INT PRIMARY KEY IDENTITY,
IdTiposDeUsuario INT FOREIGN KEY REFERENCES TiposDeUsuario(IdTiposDeUsuario) NOT NULL,
Nome VARCHAR(50) NOT NULL,
Email VARCHAR(50) NOT NULL UNIQUE,
Senha VARCHAR(50) NOT NULL

)

Create Table Evento
(
IdEvento INT PRIMARY KEY IDENTITY,
IdTiposDeEvento INT FOREIGN KEY REFERENCES TiposDeEvento(IdTiposDeEvento)NOT NULL,
IdInstituicao INT FOREIGN KEY REFERENCES Instituicao(IdInstituicao) NOT NULL,
Nome VARCHAR(50) NOT NULL,
Descricao VARCHAR(50) NOT NULL,
DataEvento DATE NOT NULL,
HorarioEvento TIME NOT NULL 

)



Create Table PresencasEvento
(
IdPresencaEvento INT PRIMARY KEY IDENTITY,
IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario) NOT NULL,
IdEvento INT FOREIGN KEY REFERENCES Evento(IdEvento) NOT NULL,
Situacao BIT DEFAULT(0)

)

Create Table Comentarios
(
IdComentario INT PRIMARY KEY IDENTITY,
IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario) NOT NULL,
IdEvento INT FOREIGN KEY REFERENCES Evento(IdEvento) NOT NULL,
Descricao VARCHAR(200) NOT NULL ,
Exibe BIT DEFAULT(0)

)




---DML----

--Insert Into TiposDeUsuario Values('Administrador')
--Insert Into TiposDeUsuario Values('Comum') 

Insert into TiposDeEvento Values('SQL SERVER')

Insert into Instituicao Values ('12313','DevSchools','Rua Niteroi, 180 São Caetano do Sul')

Insert into Usuario Values('2','Felipe','felipe@gmail.com','12345')

Insert into Evento Values(
'1','1','Intensivão de SQL Server',
'Aprenda os principais conceitos de SQL Server',
'2003-09-11','15:30:00'
)

Insert into PresencasEvento Values('2','2',0)

Insert into Comentarios Values('2','2','Evento daora, aceitável','1')



Update Instituicao
Set NomeFantasia = 'DevSchool' where IdPresencasEvento



---DQL---
Select * from PresencasEvento
Select * from Instituicao
Select * from Usuario
Select * from TiposDeUsuario
Select * from TiposDeEvento
Select * from  Evento
Select * from  Comentarios






--2023-08-10 









