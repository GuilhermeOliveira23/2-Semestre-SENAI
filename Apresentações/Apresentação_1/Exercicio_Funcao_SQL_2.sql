Create DataBase TesteApresentacao_2
Use TesteApresentacao_2
drop table Clientes


Create table Clientes
(
IdCliente INT PRIMARY KEY IDENTITY,
Nome VARCHAR(20) Not Null,
Endereco VARCHAR(80)

)


--DML---
select * from Clientes

Insert into Clientes(Nome) Values('Guilherme')

Insert into Clientes Values('Arthur','Rua Aurora')


---- Função Escalar ----

Create Function dbo.ufnPegarLocalCliente(@IdCliente INT)
returns varchar(80)
as
Begin 
Declare @Endereco varchar(80)
Select @Endereco = Endereco from Clientes
Where IdCliente = @IdCliente
Return @Endereco
end



drop function dbo.ufnPegarLocalCliente



---Utilizando a função ---

Select *, dbo.ufnPegarLocalCliente(IdCliente) from Clientes


Select dbo.ufnPegarLocalCliente(10)

