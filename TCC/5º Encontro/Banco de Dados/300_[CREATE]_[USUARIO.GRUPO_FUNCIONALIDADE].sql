USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Usuario' 
                 AND  TABLE_NAME = 'Grupo_Funcionalidade'))
BEGIN
    DROP TABLE [Usuario].[Grupo_Funcionalidade]
END


CREATE TABLE [Usuario].[Grupo_Funcionalidade](
	[IdGrupo] [int] NOT NULL FOREIGN KEY REFERENCES Usuario.Grupo(Id),
	[IdFuncionalidade] [int] NOT NULL FOREIGN KEY REFERENCES Usuario.Funcionalidade(Id),
 )