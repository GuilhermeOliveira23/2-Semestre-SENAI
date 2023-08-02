--DQL---------------

Drop Database Exercicio_1_4_Tarde

Create Database Exercicio_1_4_Tarde
Use Exercicio_1_4_Tarde

Create table Artistas
(
IdArtista INT PRIMARY KEY IDENTITY,
Nome VARCHAR(20)

)


Create table Usuarios(
IdUsuario INT PRIMARY KEY IDENTITY,
Nome VARCHAR(20) NOT NULL,
Email VARCHAR(20) NOT NULL UNIQUE,
Senha VARCHAR(20) NOT NULL,
Permissao BINARY(30)



)

Create Table Estilos
(
IdEstilo INT PRIMARY KEY IDENTITY,
Nome VARCHAR(20) NOT NULL

)

Create Table Albuns
(
IdAlbum INT PRIMARY KEY IDENTITY,
IdArtista INT FOREIGN KEY REFERENCES Artistas(IdArtista),
Titulo VARCHAR(20) NOT NULL,
DataLancamento DATETIME NOT NULL,
Localizacao VARCHAR(40) NOT NULL,
QtdMinutos TIME NOT NULL,
Ativo BIT NOT NULL
)


Create Table AlbunsEstilos
(
IdAlbum INT FOREIGN KEY REFERENCES Albuns(IdAlbum),
IdEstilo INT FOREIGN KEY REFERENCES Estilos(IdEstilo)


)