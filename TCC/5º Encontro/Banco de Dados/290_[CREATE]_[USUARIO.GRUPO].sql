USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Usuario' 
                 AND  TABLE_NAME = 'Grupo'))
BEGIN
    DROP TABLE [Usuario].[Grupo]
END


CREATE TABLE [Usuario].[Grupo](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[Nome] [varchar] (200) NOT NULL,
	[Descricao] [varchar] (250) NOT NULL,
 )