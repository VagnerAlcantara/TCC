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
	[IdTipoLog] [int] NOT NULL FOREIGN KEY REFERENCES PsystemLog.Tipo(Id),
	[IdAcao] [int] NOT NULL FOREIGN KEY REFERENCES PsystemLog.Acao(Id),
	[Data] [date] NOT NULL,
	[Hora] [time] NOT NULL
 )