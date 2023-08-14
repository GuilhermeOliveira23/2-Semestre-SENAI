Create DataBase Projeto_HealthClinic_Tarde
Use Projeto_HealthClinic_Tarde
drop database Projeto_HealthClinic_Tarde



Create Table TipoDeUsuario 
(
IdTipoDeUsuario INT PRIMARY KEY IDENTITY,
TituloDeUsuario VARCHAR(50) UNIQUE NOT NULL

)


Create Table Clinica 
(
IdClinica INT PRIMARY KEY IDENTITY,
CNPJ CHAR(13) NOT NULL UNIQUE,
NomeFantasia VARCHAR(80) NOT NULL,
RazaoSocial VARCHAR(120) NOT NULL,
Endereco VARCHAR(80) NOT NULL,
HoraAbertura Time NOT NULL,
HoraFechamento Time NOT NULL


)

Create table Usuario 
(
IdUsuario INT PRIMARY KEY IDENTITY ,
IdTipoDeUsuario INT FOREIGN KEY REFERENCES TipoDeUsuario(IdTipoDeUsuario) NOT NULL,
NomeUsuario VARCHAR(80) NOT NULL,
Email VARCHAR(80) NOT NULL UNIQUE, 
Senha VARCHAR(80) NOT NULL


)
Create Table Especialidade 
(
IdEspecialidade INT PRIMARY KEY IDENTITY,
TituloEspecialidade VARCHAR(80) NOT NULL UNIQUE

)


Create Table Medico 
(
IdMedico INT PRIMARY KEY IDENTITY, 
IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario) NOT NULL,
IdEspecialidade INT FOREIGN KEY REFERENCES Especialidade(IdEspecialidade) NOT NULL,
IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica) NOT NULL,
NomeMedico VARCHAR(80) NOT NULL,
CRM VARCHAR(13) NOT NULL UNIQUE


)
drop table Medico

Create Table Situacao 
(
IdSituacao INT PRIMARY KEY IDENTITY, 
TituloSituacao VARCHAR(100) NOT NULL


)

Create Table Paciente 
(
IdPaciente INT PRIMARY KEY IDENTITY ,
IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario) NOT NULL,
Situacao INT FOREIGN KEY REFERENCES  Situacao(IdSituacao) NOT NULL,
NomePaciente VARCHAR(100) NOT NULL

)
drop table Paciente
Create Table FeedBack 
(
IdFeedBack INT PRIMARY KEY IDENTITY ,
IdPaciente INT FOREIGN KEY REFERENCES Paciente(IdPaciente) NOT NULL,
Comentario VARCHAR(200) NOT NULL 

)

Create Table Consulta 
(
IdConsulta INT PRIMARY KEY IDENTITY , 
IdPaciente INT FOREIGN KEY REFERENCES Paciente(IdPaciente),
IdMedico INT FOREIGN KEY REFERENCES Medico(IdMedico),
Descricao VARCHAR(100),
DataAgendamento DATE,
HorarioAgendamento TIME




)