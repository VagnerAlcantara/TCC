USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'PsystemLog' 
                 AND  TABLE_NAME = 'Acao'))
BEGIN
    DROP TABLE [PsystemLog].[Acao]
END


CREATE TABLE [PsystemLog].[Acao](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[Nome] [varchar] (200) NOT NULL,
 )