

Select * FROM  Veiculo Inner Join Aluguel on Veiculo.IdVeiculo = Aluguel.IdAluguel

Select * FROM  Veiculo Inner Join Modelo on Veiculo.IdVeiculo = Modelo.IdModelo

Select * FROM  Veiculo Inner Join Marca on Veiculo.IdVeiculo = Marca.IdMarca


GO
EXEC sp_rename 'Aluguel.IdCliente', 'IdClienteA';

Select IdAluguel,DataInicio,DataFim,Nome  FROM Aluguel  Inner Join Cliente on Aluguel.IdAluguel = Cliente.IdCliente
Select Nome From Modelo




Select IdClienteA, IdVeiculo,DataInicio,DataFim From Aluguel Inner Join Cliente on Aluguel.IdAluguel = Cliente.IdCliente

Select * FROm Cliente
Select * From Aluguel


Insert into Modelo VALUES ('Sedan')

Insert into Marca VALUES('Fiat')

Insert into Empresa Values('Toyota')

Insert into Cliente Values('Guilherme','13322')

Insert into Veiculo Values('1','1','1','122')

Insert into Aluguel Values('1','2','Mingos','11/03/2001', '11/05/2005')

drop table Aluguel

SElect * from Veiculo
Select *from Aluguel
Select * From Modelo
Select * From Marca
SElect * from Cliente