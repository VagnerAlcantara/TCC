USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'PsystemLog' 
                 AND  TABLE_NAME = 'Detalhe'))
BEGIN
    DROP TABLE [PsystemLog].[Detalhe]
END


CREATE TABLE [PsystemLog].[Detalhe](
	[Id] [int] identity NOT NULL PRIMARY KEY,
	[IdLog] [int] NOT NULL FOREIGN KEY REFERENCES PsystemLog.Log(Id),
	[Campo] [varchar](200) NOT NULL,
	[De] [varchar](200)  NULL,
	[Para] [varchar](200) NULL
 )