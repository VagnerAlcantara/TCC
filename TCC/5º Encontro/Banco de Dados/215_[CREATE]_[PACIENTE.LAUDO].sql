USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Paciente' 
                 AND  TABLE_NAME = 'Laudo'))
BEGIN
    DROP TABLE [Paciente].[Laudo]
END

CREATE TABLE [Paciente].[Laudo](
	[Id] [int] NOT NULL PRIMARY KEY,
	[IdPessoa] [int] NOT NULL FOREIGN KEY REFERENCES Pessoa.Pessoa(Id),
	[Descricao] [varchar](max) NOT NULL,
	[Apto] [bit] NOT NULL
)