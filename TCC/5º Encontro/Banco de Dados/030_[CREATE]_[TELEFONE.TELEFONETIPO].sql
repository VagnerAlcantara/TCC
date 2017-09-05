USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Telefone' 
                 AND  TABLE_NAME = 'TelefoneTipo'))
BEGIN
    DROP TABLE [Telefone].[TelefoneTipo]
END


CREATE TABLE [Telefone].[TelefoneTipo](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[Nome] [varchar](100) NOT NULL
 )