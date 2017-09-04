USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Empresa' 
                 AND  TABLE_NAME = 'TelefoneTipo'))
BEGIN
    DROP TABLE [Empresa].[TelefoneTipo]
END


CREATE TABLE [Empresa].[TelefoneTipo](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[Nome] [varchar](100) NOT NULL
 )