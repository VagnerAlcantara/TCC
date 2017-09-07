USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Funcionario' 
                 AND  TABLE_NAME = 'Historico'))
BEGIN
    DROP TABLE [Funcionario].[Historico]
END


CREATE TABLE [Funcionario].[Historico](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[IdCargo] [int] NOT NULL FOREIGN KEY REFERENCES Funcionario.Cargo(Id),
	[Data] [date] NOT NULL,
	[Salario] [decimal](10, 8) NOT NULL,
	[Descricao] [varchar](250) NULL
 )