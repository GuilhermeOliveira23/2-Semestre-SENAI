Select * FROM  Veiculo Inner Join Modelo on Veiculo.IdVeiculo = Modelo.IdModelo

Select * FROM  Veiculo Inner Join Marca on Veiculo.IdVeiculo = Marca.IdMarca

Select * FROM  Veiculo Inner Join Aluguel on Veiculo.IdVeiculo = Aluguel.IdAluguel

Select * FROM  Cliente Inner Join Aluguel on Cliente.IdCliente = Aluguel.IdAluguel





Select * FROm Veiculo
Select * From Aluguel


Insert into Modelo VALUES ('Sedan')

Insert into Marca VALUES('Fiat')

Insert into Empresa Values('Toyota')

Insert into Cliente Values('Roger','133')

Insert into Veiculo Values('1','2','1','122')

Insert into Aluguel(IdCliente,Protocolo) Values('1','Diferenciado')

drop table Aluguel

SElect * from Veiculo
Select *from Aluguel
Select * From Modelo
Select * From Marca
SElect * from Cliente