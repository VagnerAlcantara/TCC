USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Empresa' 
                 AND  TABLE_NAME = 'Empresa'))
BEGIN
    DROP TABLE [Empresa].[Empresa]
END

CREATE TABLE [Empresa].[Empresa](
	[Cnpj] [int] NOT NULL PRIMARY KEY,
	[RazaoSocial] [varchar](200) NOT NULL,
	[NomeFantasia] [varchar](200) NULL,
	[Parceira] bit NOT NULL,
	[Convenio] bit NOT NULL
)