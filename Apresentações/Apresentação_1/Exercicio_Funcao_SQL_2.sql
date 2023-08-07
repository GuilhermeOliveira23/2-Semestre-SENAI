

--Na tabela a seguir,crie uma fun��o onde � poss�vel visualizar o endere�o de um cliente pelo seu id
Select * from Clientes

Create DataBase ExercicioApresentacao_2



Use ExercicioApresentacao_2
--drop table Clientes


Create table Clientes
(
IdCliente INT PRIMARY KEY IDENTITY,
Nome VARCHAR(20) Not Null,
Endereco VARCHAR(80)

)


--DML---
select * from Clientes

Insert into Clientes(Nome) Values('Guilherme')

Insert into Clientes Values('Arthur','Rua Lago Verde')


---- Fun��o Escalar ----

Create Function dbo.PegarLocalCliente(@IdCliente INT)
returns varchar(80) -- tipo de retorno
as
Begin  -- Come�o da l�gica
Declare @Endereco varchar(80) -- Declara��o de Vari�vel
Select @Endereco = Endereco from Clientes
Where IdCliente = @IdCliente
Return @Endereco -- Retorno da fun��o
end -- Fim da l�gica

--Recebe par�metros



drop function dbo.PegarLocalCliente



---Utilizando a fun��o ---

Select *, dbo.PegarLocalCliente(IdCliente) from Clientes


Select dbo.PegarLocalCliente(9)






