USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Usuario' 
                 AND  TABLE_NAME = 'Usuario_Grupo'))
BEGIN
    DROP TABLE [Usuario].[Usuario_Grupo]
END


CREATE TABLE [Usuario].[Usuario_Grupo](
	[IdUsuario] [int] NOT NULL FOREIGN KEY REFERENCES Usuario.Usuario(Id),
	[IdGrupo] [int] NOT NULL FOREIGN KEY REFERENCES Usuario.Grupo(Id),
 )