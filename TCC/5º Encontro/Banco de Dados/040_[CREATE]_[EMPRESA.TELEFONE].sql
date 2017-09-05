USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Empresa' 
                 AND  TABLE_NAME = 'Telefone'))
BEGIN
    DROP TABLE [Empresa].[Telefone]
END


CREATE TABLE [Empresa].[Telefone](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[IdTipo] [int] NOT NULL FOREIGN KEY REFERENCES Telefone.TelefoneTipo(Id),
	[DDD] [int] NOT NULL,
	[Numero] [varchar](50) NULL,
 )