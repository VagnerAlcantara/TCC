USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Financeiro' 
                 AND  TABLE_NAME = 'CobrancaPaciente'))
BEGIN
    DROP TABLE [Financeiro].[CobrancaPaciente]
END

CREATE TABLE [Financeiro].[CobrancaPaciente](
	[Id] [int] NOT NULL PRIMARY KEY,
	[IdAgenda] [int] NOT NULL FOREIGN KEY REFERENCES Pessoa.Agenda(Id),
	[Data] [date] NOT NULL,
	[Valor] [decimal](18,4) NULL,
	[Pago] bit NOT NULL,
)