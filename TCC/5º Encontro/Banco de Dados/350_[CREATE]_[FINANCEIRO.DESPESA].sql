USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Financeiro' 
                 AND  TABLE_NAME = 'Despesa'))
BEGIN
    DROP TABLE [Financeiro].[Despesa]
END


CREATE TABLE [Financeiro].[Despesa](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[IdSituacao] [int] NOT NULL FOREIGN KEY REFERENCES Financeiro.Situacao(Id),
	[Cnpj] [int] NOT NULL FOREIGN KEY REFERENCES Empresa.Empresa(Cnpj),
	[Titulo] [varchar](200) NOT NULL,
	[Motivo] [varchar](250) NULL,
	[Valor] [decimal](18,4) NOT NULL
 )