USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Financeiro' 
                 AND  TABLE_NAME = 'Situacao'))
BEGIN
    DROP TABLE [Financeiro].[Situacao]
END


CREATE TABLE [Financeiro].[Situacao](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[Nome] [varchar](200) NOT NULL,
	[Ativo] bit NULL,
 )