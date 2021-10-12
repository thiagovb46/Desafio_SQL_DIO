USE [Estrela]
GO

/****** Object:  Table [dbo].[HistoricoViagens]    Script Date: 11/10/2021 22:46:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[HistoricoViagens](
	[IdNave] [int] NOT NULL,
	[IdPiloto] [int] NOT NULL,
	[DtSaida] [datetime] NOT NULL,
	[DtChegada] [datetime] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[HistoricoViagens]  WITH CHECK ADD  CONSTRAINT [FK_HistoricoViagens_PilotosNaves] FOREIGN KEY([IdPiloto], [IdNave])
REFERENCES [dbo].[PilotosNaves] ([IdPiloto], [IdNave])
GO

ALTER TABLE [dbo].[HistoricoViagens] CHECK CONSTRAINT [FK_HistoricoViagens_PilotosNaves]
GO


