USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'PsystemLog' 
                 AND  TABLE_NAME = 'Log'))
BEGIN
    DROP TABLE [PsystemLog].[Log]
END


CREATE TABLE [PsystemLog].[Log](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[IdUsuario] [int] NOT NULL FOREIGN KEY REFERENCES Usuario.Usuario(Id),
	[IdTabela] [int] NOT NULL FOREIGN KEY REFERENCES PsystemLog.Tabela(Id),
	[IdAcao] [int] NOT NULL FOREIGN KEY REFERENCES PsystemLog.Acao(Id),
	[Campo] [varchar](200) NOT NULL,
	[De] [varchar](200) NULL,
	[Para] [varchar](200) NULL,
 )