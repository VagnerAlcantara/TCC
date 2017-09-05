USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Pessoa' 
                 AND  TABLE_NAME = 'Endereco'))
BEGIN
    DROP TABLE [Pessoa].[Endereco]
END


CREATE TABLE [Pessoa].[Endereco](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[IdPessoa] [int] NOT NULL FOREIGN KEY REFERENCES Pessoa.Pessoa(Id),
	[Cep] [int] NOT NULL,
	[Numero] [varchar](50) NULL,
	[Complemento] [varchar](100) NULL,
 )