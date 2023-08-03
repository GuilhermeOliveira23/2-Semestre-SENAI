Create Database Exercicio_1_3_Tarde_Join


Select * FROM  Atendimentos Inner Join Veterinario on Atendimentos.IdVeterinario = Veterinario.IdVeterinario;
Select * FROM  Pet Inner Join Raca on Pet.IdRaca = Raca.IdRaca;
Select * FROM  Pet Inner Join Raca on Pet.IdRaca = Raca.IdRaca;
Select * FROM  Clinica Inner Join Atendimentos on Clinica.IdClinica = Atendimentos.IdAtendimento;



SElect* From Clinica
Select * from Dono
Select * from Pet
Select * from Raca
Select * From TipoPet
Select * From Veterinario
SElect * from Atendimentos

Insert into Veterinario Values('1','Lingus','124521')

Insert into Pet VALUES('1','2','1','Arthur', '03/07/2001')

Insert into Raca Values('Arara')
Insert into TipoPet Values('Ave')
Insert into Dono Values('Patricia')
Insert into Clinica Values('Rua Valentine,São Paulo, casa 90')
Insert into Atendimentos Values('2','1','Cachorro louco','20/09/2008')