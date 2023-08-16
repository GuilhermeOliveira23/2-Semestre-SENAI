--DML
Use Projeto_HealthClinic_Tarde
Insert into Especialidade values ('Cardiologia')
Insert into Especialidade values ('Neurologia')
Insert into TipodeUsuario values ('Administrador')
Insert into TipodeUsuario values ('Medico')
Insert into TipodeUsuario values ('Paciente')
Insert into Situacao values ('Ainda para ser atendido')
Insert into Situacao values ('Já foi atendido')
Insert into Clinica values ('123451','HealthClinic','HealthClinic','Rua leão sérgio, Vila Manchieta','6:00','23:00')

Insert into Usuario values  ('3','Carlos','Carlos231@gmail.com','12345')
Insert into Usuario values  ('2','Guilherme','Guilherme@gmail.com','12345')
Insert into Usuario values  ('1','Felipe','Felipe@gmail.com','12345')
Insert into Usuario values  ('2','Lucas','LucasLira@gmail.com','12345')
Insert into Medico values ('1','1','1','1234645')
Insert into Medico values ('4','2','1','1234643')
Insert into Medico values ('5','2','1','1234243')
Insert into Paciente values ('1')
Insert into Consulta values ('1','1','1','Paciente com dores no peito','11/09/2023','15:00')
Insert into Feedback Values ('1','Gostei muito me ajudou tmj até a próxima')

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
select * from FeedBack

Select * from Consulta where idMedico = 2 -- id de escolha
Select * from Consulta Where IdPaciente = 1 -- id de escolha



Update Usuario
set Nome = 'LucasLira'
where idUsuario = 5




   Create Procedure MedicosDaEspecialidade
 @TituloEspecialidade  Varchar(80)
 as
 Set @TituloEspecialidade = '%' + @TituloEspecialidade+ '%'
  Select TituloEspecialidade, Nome
 from Especialidade e
 left join Medico m on (m.IdEspecialidade = e.IdEspecialidade)
 left join Usuario u on ( u.IdUsuario = m.IdUsuario )
 Where e.TituloEspecialidade like @TituloEspecialidade 

Exec MedicosDaEspecialidade 'Neurologia'






 
