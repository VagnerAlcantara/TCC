USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Usuario' 
                 AND  TABLE_NAME = 'Funcionalidade'))
BEGIN
    DROP TABLE [Usuario].[Funcionalidade]
END


CREATE TABLE [Usuario].[Funcionalidade](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[Nome] [varchar] (200) NOT NULL,
	[Descricao] [varchar] (250) NOT NULL,
 )