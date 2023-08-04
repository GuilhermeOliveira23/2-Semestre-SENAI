Create Database Exercicio_1_3_Tarde_Join
--Clinica e Veterinarios
Select IdClinica, Nome,CRMV FROM  Clinica Inner Join Veterinario on Clinica.IdClinica = Veterinario.IdClinicaVet;
--Dono e Pets
Select IdPet,NomePet,NomeDono From Pet inner join Dono on Pet.IdPet= Dono.idDono

GO
EXEC sp_rename 'Veterinario.Nome', 'NomeVeterinario';

Select IdAtendimento,NomeVeterinario,Nome,DescricaoRaca,DescricaoTipoPet,DescricaoAtendimento,NomeDono From Atendimentos inner join Veterinario 
on Atendimentos.IdAtendimento = Veterinario.IdVeterinario
inner join Pet on Atendimentos.IdAtendimento = Pet.IdPet 
inner join Raca on Atendimentos.IdAtendimento = Raca.IdRaca	
inner join TipoPet on Atendimentos.IdAtendimento = TipoPet.IdTipoPet
inner join Dono on Atendimentos.IdAtendimento = Dono.IdDono
inner join Clinica on Atendimentos.IdAtendimento = Clinica.IdClinica


--Começam com letra S e O
Select * From Raca Where DescricaoRaca Like 'S%'
Select * From TipoPet Where DescricaoTipoPet Like 'O%'


SElect * From Clinica
Select * from Dono
Select * from Pet
Select * from Raca
Select * From TipoPet
Select * From Veterinario
SElect * from Atendimentos

Insert into Veterinario Values('1','Alfred','1243e5201')

Insert into Pet VALUES('1','2','1','Bob', '03/07/2001')

Insert into Raca Values('Saluki')
Insert into TipoPet Values('Olhudo')
Insert into Dono Values('Patricia')
Insert into Clinica Values('Rua Valentine,São Paulo, casa 90','Life')
Insert into Atendimentos Values('2','3','Cachorro Diferenciado','20/09/2007')

SELECT Nome
 FROM Pet
  AS P

GO
EXEC sp_rename 'Pet.Nome', 'NomePet';