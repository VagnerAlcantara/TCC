USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'PsystemLog' 
                 AND  TABLE_NAME = 'Tabela'))
BEGIN
    DROP TABLE [PsystemLog].[Tabela]
END


CREATE TABLE [PsystemLog].[Tabela](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[Nome] [varchar] (200) NOT NULL,
 )