

--Na tabela a seguir,crie uma função onde é possível visualizar o endereço de um cliente pelo seu id
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


---- Função Escalar ----

Create Function dbo.PegarLocalCliente(@IdCliente INT)
returns varchar(80) -- tipo de retorno
as
Begin  -- Começo da lógica
Declare @Endereco varchar(80) -- Declaração de Variável
Select @Endereco = Endereco from Clientes
Where IdCliente = @IdCliente
Return @Endereco -- Retorno da função
end -- Fim da lógica

--Recebe parâmetros



drop function dbo.PegarLocalCliente



---Utilizando a função ---

Select *, dbo.PegarLocalCliente(IdCliente) from Clientes


Select dbo.PegarLocalCliente(9)






