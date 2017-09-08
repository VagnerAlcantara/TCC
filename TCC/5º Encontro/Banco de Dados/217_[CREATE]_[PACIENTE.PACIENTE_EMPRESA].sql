USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Paciente' 
                 AND  TABLE_NAME = 'Paciente_Empresa'))
BEGIN
    DROP TABLE [Paciente].[Paciente_Empresa]
END


CREATE TABLE [Paciente].[Paciente_Empresa](
	[IdPessoa] [int] NOT NULL FOREIGN KEY REFERENCES Pessoa.Pessoa(Id),
	[IdEmpresa] [int] NOT NULL FOREIGN KEY REFERENCES Empresa.Empresa(Cnpj)
 )