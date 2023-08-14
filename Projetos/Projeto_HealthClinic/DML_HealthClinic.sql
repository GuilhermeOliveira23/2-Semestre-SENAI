--DML
Use Projeto_HealthClinic_Tarde
Insert into Especialidade values ('Cardiologia')
Insert into TipodeUsuario values ('Administrador')
Insert into Situacao values ('Dores fortes no peito, ainda para ser atendido')
Insert into Clinica values ('123451','HealthClinic','','Rua leão sérgio, Vila Manchieta','6:00','23:00')
Insert into Medico values ('2','1','1','Guilherme','1234645')
Insert into Paciente values ('1','1','Carlos')
Insert into Usuario values  ('3','Felipe','Felipe@gmail.com','12345')
Insert into Consulta values ('1','1','Descobrir a razão das dores no peito do paciente','11/09/2023','15:00')

 GO
 Exec sp_rename  'Paciente.Situacao', 'IdSituacao'


Select * from Especialidade 
Select * from TipodeUsuario 
select *  from Situacao 
select * from Clinica 
select *  from Medico 
select * from Paciente 
select *  from Usuario 
select * from Consulta


-- É possível adicionar triggers para toda vez que adicionarem um usuário do tipo médico ou paciente  na tabela usuário