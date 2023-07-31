--DML - DATA MANIPULATION LANGUAGE
INSERT INTO Funcionarios(Nome)
VALUES('Vitoria')

UPDATE Funcionarios 
SET Nome = 'miguel' WHERE IdFuncionario = 9

DELETE FROM Funcionarios WHERE IdFuncionario = 9

INSERT INTO Empresas(IdFuncionario,Nome)
VALUES(8,'GOOGLE')