USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Pessoa' 
                 AND  TABLE_NAME = 'Agenda'))
BEGIN
    DROP TABLE [Pessoa].[Agenda]
END


CREATE TABLE [Pessoa].[Agenda](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[IdPessoa] [int] NOT NULL FOREIGN KEY REFERENCES Pessoa.Pessoa(Id),
	[IdServico] [int] NOT NULL FOREIGN KEY REFERENCES Clinica.Servico(Id),
	[Data] [date] NOT NULL,
	[Hora] [date] NOT NULL,
	[Particular] [bit] NOT NULL,
	[Observacao] [varchar](200) NULL
)