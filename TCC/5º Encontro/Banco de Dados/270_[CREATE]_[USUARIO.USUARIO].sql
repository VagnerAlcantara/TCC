USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Usuario' 
                 AND  TABLE_NAME = 'Usuario'))
BEGIN
    DROP TABLE [Usuario].[Usuario]
END


CREATE TABLE [Usuario].[Usuario](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[IdFuncionario] [int] NOT NULL FOREIGN KEY REFERENCES Funcionario.Funcionario(Id),
	[Login] [varchar] (150) NOT NULL,
	[Senha] [varchar] (150) NOT NULL,
	[Status] [bit] NOT NULL
 )