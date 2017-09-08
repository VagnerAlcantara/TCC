USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Paciente' 
                 AND  TABLE_NAME = 'Paciente'))
BEGIN
    DROP TABLE [Paciente].[Paciente]
END

CREATE TABLE [Paciente].[Paciente](
	[Id] [int] NOT NULL PRIMARY KEY,
	[IdPessoa] [int] NOT NULL FOREIGN KEY REFERENCES Pessoa.Pessoa(Id),
)