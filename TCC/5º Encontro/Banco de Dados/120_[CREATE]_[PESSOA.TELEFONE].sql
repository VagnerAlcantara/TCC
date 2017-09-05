USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Pessoa' 
                 AND  TABLE_NAME = 'Telefone'))
BEGIN
    DROP TABLE [Pessoa].[Telefone]
END


CREATE TABLE [Pessoa].[Telefone](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[IdTipo] [int] NOT NULL FOREIGN KEY REFERENCES Telefone.TelefoneTipo(Id),
	[DDD] [int] NOT NULL,
	[Numero] [varchar](50) NULL,
 )