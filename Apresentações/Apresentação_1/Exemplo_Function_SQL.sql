Create Function TRIM(@ST VARCHAR(1000))
Returns VARCHAR(1000)
Begin Return(LTRIM(RTRIM(@ST)))
END


SELECT  DBO.TRIM('       WELLYNGTON MOREIRA ') as ColunaExemplo

Select ('                 WELLYNGTON MOREIRA') as ColunaExemplo