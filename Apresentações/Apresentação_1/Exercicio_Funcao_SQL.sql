Create Database TesteApresentacao;

Use TesteApresentacao;

Create Table Clientes(
IdCliente INT PRIMARY KEY IDENTITY,
Nome VARCHAR(20) NOT NULL
)

Create Table Pedidos(
IdPedido INT PRIMARY KEY IDENTITY,
IdCliente INT FOREIGN KEY REFERENCES Clientes(IdCliente),
ValorCompra SMALLMONEY NOT NULL,
DataCompra DATE NOT NULL,

)




-------DML------------

Select * from Clientes
Select * from Pedidos

Insert into Pedidos Values(2,490.092,'21/06/2022');

Insert into Clientes Values('Felipe');



-------Function--------

SELECT SUM (ValorCompra)
FROM Pedidos
