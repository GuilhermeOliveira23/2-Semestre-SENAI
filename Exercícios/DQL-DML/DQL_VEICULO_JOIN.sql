


GO
EXEC sp_rename 'Aluguel.IdCliente', 'IdClienteAluguel';

Select IdAluguel,DataInicio,DataFim,Nome  FROM Aluguel  Inner Join Cliente on Aluguel.IdAluguel = Cliente.IdCliente
Select Nome From Modelo


Select IdAluguel,Nome,DataInicio,DataFim,NomeCliente FROM Aluguel Inner join Cliente 
on Aluguel.IdAluguel = Aluguel.IdClienteAluguel inner Join Modelo 
on Aluguel.IdAluguel = Modelo.IdModelo


Select IdCliente,DataInicio,DataFim,NomeCliente,Nome
From Cliente Inner Join Aluguel on 
Cliente.IdCliente = Aluguel.IdClienteAluguel inner join Modelo on Cliente.IdCliente = Modelo.IdModelo



