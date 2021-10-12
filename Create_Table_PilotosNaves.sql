USE [Estrela]
GO

/****** Object:  Table [dbo].[PilotosNaves]    Script Date: 11/10/2021 22:50:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PilotosNaves](
	[IdPiloto] [int] NOT NULL,
	[IdNave] [int] NOT NULL,
	[FlagAutorizado] [bit] NOT NULL,
 CONSTRAINT [PK_PilotosNaves] PRIMARY KEY CLUSTERED 
(
	[IdPiloto] ASC,
	[IdNave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PilotosNaves] ADD  CONSTRAINT [DF_PilotosNaves_FlagAutorizado]  DEFAULT ((1)) FOR [FlagAutorizado]
GO

ALTER TABLE [dbo].[PilotosNaves]  WITH CHECK ADD  CONSTRAINT [FK_PilotosNaves_Naves] FOREIGN KEY([IdNave])
REFERENCES [dbo].[Naves] ([IdNave])
GO

ALTER TABLE [dbo].[PilotosNaves] CHECK CONSTRAINT [FK_PilotosNaves_Naves]
GO

ALTER TABLE [dbo].[PilotosNaves]  WITH CHECK ADD  CONSTRAINT [FK_PilotosNaves_Pilotos] FOREIGN KEY([IdPiloto])
REFERENCES [dbo].[Pilotos] ([IdPiloto])
GO

ALTER TABLE [dbo].[PilotosNaves] CHECK CONSTRAINT [FK_PilotosNaves_Pilotos]
GO


