USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Funcionario' 
                 AND  TABLE_NAME = 'Cargo'))
BEGIN
    DROP TABLE [Funcionario].[Cargo]
END


CREATE TABLE [Funcionario].[Cargo](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[Nome] [varchar](200) NOT NULL 
 )