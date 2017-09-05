USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Pessoa' 
                 AND  TABLE_NAME = 'Contato'))
BEGIN
    DROP TABLE [Pessoa].[Contato]
END


CREATE TABLE [Pessoa].[Contato](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[IdPessoa] [int] NOT NULL FOREIGN KEY REFERENCES Pessoa.Pessoa(Id),
	[Email] [varchar](100) NULL,
	[IdTelefone] [int] NOT NULL FOREIGN KEY REFERENCES Pessoa.Telefone(Id)

 )