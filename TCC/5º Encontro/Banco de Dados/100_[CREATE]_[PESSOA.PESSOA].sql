USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Pessoa' 
                 AND  TABLE_NAME = 'Pessoa'))
BEGIN
    DROP TABLE [Pessoa].[Pessoa]
END

CREATE TABLE [Pessoa].[Pessoa](
	[Id] [int] NOT NULL PRIMARY KEY,
	[Nome] [varchar](200) NOT NULL,
	[RG] [varchar](20) NOT NULL,
	[CPF] [varchar](20) NOT NULL,
	[DataNascimento] [date] NOT NULL
)

ALTER TABLE Pessoa.Pessoa
ADD Sexo char(1);