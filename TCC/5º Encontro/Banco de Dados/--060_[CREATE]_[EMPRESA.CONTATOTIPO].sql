USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Empresa' 
                 AND  TABLE_NAME = 'ContatoTipo'))
BEGIN
    DROP TABLE [Empresa].[ContatoTipo]
END


CREATE TABLE [Empresa].[ContatoTipo](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[Nome] [varchar](100) NOT NULL,
 )