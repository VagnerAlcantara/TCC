USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Funcionario' 
                 AND  TABLE_NAME = 'Funcionario_Historico'))
BEGIN
    DROP TABLE [Funcionario].[Funcionario_Historico]
END


CREATE TABLE [Funcionario].[Funcionario_Historico](
	[IdFuncionario] [int]  NOT NULL FOREIGN KEY REFERENCES Funcionario.Funcionario(Id),
	[IdHistorico] [int]  NOT NULL FOREIGN KEY REFERENCES Funcionario.Historico(Id),
	[DataInicioCargo] [date] NOT NULL,
	[DataFimCargo] [date] NULL,
 )