USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Financeiro' 
                 AND  TABLE_NAME = 'CobrancaEmpresa'))
BEGIN
    DROP TABLE [Financeiro].[CobrancaEmpresa]
END

CREATE TABLE [Financeiro].[CobrancaEmpresa](
	[Id] [int] NOT NULL PRIMARY KEY,
	[IdAgenda] [int] NOT NULL FOREIGN KEY REFERENCES Empresa.Agenda(Id),
	[Data] [date] NOT NULL,
	[Valor] [decimal](18,4) NULL,
	[Pago] bit NOT NULL,
)