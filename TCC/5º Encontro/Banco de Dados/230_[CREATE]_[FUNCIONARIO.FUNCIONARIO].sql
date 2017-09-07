USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Funcionario' 
                 AND  TABLE_NAME = 'Funcionario'))
BEGIN
    DROP TABLE [Funcionario].[Funcionario]
END


CREATE TABLE [Funcionario].[Funcionario](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[IdPessoa] [int] NOT NULL FOREIGN KEY REFERENCES Pessoa.Pessoa(Id),
	[DataAdmisssao] [date] NOT NULL,
	[DataDemissao] [date] NULL,
	[Salario] [decimal](10, 8) NOT NULL
 )