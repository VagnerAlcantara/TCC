USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Clinica' 
                 AND  TABLE_NAME = 'Servico'))
BEGIN
    DROP TABLE [Clinica].[Servico]
END


CREATE TABLE [Clinica].[Servico](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[Nome] [varchar](200) NULL,
 )