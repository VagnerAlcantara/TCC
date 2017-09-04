USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Empresa' 
                 AND  TABLE_NAME = 'Email'))
BEGIN
    DROP TABLE [Empresa].[Email]
END


CREATE TABLE [Empresa].[Email](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[Email] [varchar](100) NOT NULL,
 )