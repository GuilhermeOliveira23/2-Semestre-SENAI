Create Database Exercicio_1_3_Tarde_Join

Select * FROM  Clinica Inner Join Veterinario on Clinica.IdClinica = Veterinario.IdVeterinario;


Select * From Raca Where Descricao Like 'S%'

Select * From TipoPet Where Descricao Like 'O%'

Select * FROM  Clinica Inner Join Veterinario on Clinica.IdClinica = Veterinario.IdVeterinario;

Select IdPet,Nome,NomeDono From Pet inner join Dono on Pet.IdPet = Dono.IdDono

Select *  From Veterinario inner join Pet on Veterinario.IdVeterinario = Pet.IdPet 

Select * From Dono inner join Clinica on Dono.IdDono = Clinica.IdClinica 

SElect * From Clinica
Select * from Dono
Select * from Pet
Select * from Raca
Select * From TipoPet
Select * From Veterinario
SElect * from Atendimentos

Insert into Veterinario Values('1','Alfred','12435201')

Insert into Pet VALUES('1','2','1','Arthur', '03/07/2001')

Insert into Raca Values('Saluki')
Insert into TipoPet Values('Olhudo')
Insert into Dono Values('Patricia')
Insert into Clinica Values('Rua Valentine,São Paulo, casa 90')
Insert into Atendimentos Values('3','3','Cachorro Diferenciado','20/09/2007')


SELECT Nome
 FROM Pet
  AS P



GO
EXEC sp_rename 'Pet.Nome', 'NomeDono';