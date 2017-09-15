USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'PsystemLog' 
                 AND  TABLE_NAME = 'Tipo'))
BEGIN
    DROP TABLE [PsystemLog].[Tipo]
END


CREATE TABLE [PsystemLog].[Tipo](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[Nome] [varchar] (200) NOT NULL,
 )