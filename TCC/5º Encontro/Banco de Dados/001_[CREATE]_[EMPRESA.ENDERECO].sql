USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Empresa' 
                 AND  TABLE_NAME = 'Endereco'))
BEGIN
    DROP TABLE [Empresa].[Endereco]
END


CREATE TABLE [Empresa].[Endereco](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[Cnpj] [int] NOT NULL FOREIGN KEY REFERENCES Empresa.Empresa(Cnpj),
	[Cep] [int] NOT NULL,
	[Numero] [varchar](50) NULL,
	[Complemento] [varchar](100) NULL,
 )