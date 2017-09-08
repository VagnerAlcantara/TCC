USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Empresa' 
                 AND  TABLE_NAME = 'Agenda'))
BEGIN
    DROP TABLE [Empresa].[Agenda]
END


CREATE TABLE [Empresa].[Agenda](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[Cnpj] [int] NOT NULL FOREIGN KEY REFERENCES Empresa.Empresa(Cnpj),
	[IdServico] [int] NOT NULL FOREIGN KEY REFERENCES Clinica.Servico(Id),
	[Data] [date] NOT NULL,
	[Hora] [date] NOT NULL,
	[Cep] [int] NOT NULL,
	[Numero] [varchar](50) NULL,
	[Complemento] [varchar](100) NULL,
	[Observacao] [varchar](200) NULL
)