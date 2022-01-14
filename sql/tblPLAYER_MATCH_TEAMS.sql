SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPLAYER_MATCH_TEAMS](
	[PlayerMatchTeamsID] [int] IDENTITY(1,1) NOT NULL,
	[PlayerID] [int] NOT NULL,
	[CharacterID] [int] NOT NULL,
	[TeamID] [int] NOT NULL,
	[MatchID] [int] NOT NULL,
	[TotalScore] [int] NULL,
	[TotalKills] [int] NULL,
	[TotalDeaths] [int] NULL,
	[TotalAssists] [int] NULL,
	[EconScore] [int] NULL,
	[TotalFirstBloods] [int] NULL,
	[TotalPlants] [int] NULL,
	[TotalDefuses] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblPLAYER_MATCH_TEAMS] ADD PRIMARY KEY CLUSTERED 
(
	[PlayerMatchTeamsID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblPLAYER_MATCH_TEAMS]  WITH CHECK ADD FOREIGN KEY([CharacterID])
REFERENCES [dbo].[tblCHARACTER] ([CharacterID])
GO
ALTER TABLE [dbo].[tblPLAYER_MATCH_TEAMS]  WITH CHECK ADD FOREIGN KEY([MatchID])
REFERENCES [dbo].[tblMATCH] ([MatchID])
GO
ALTER TABLE [dbo].[tblPLAYER_MATCH_TEAMS]  WITH CHECK ADD FOREIGN KEY([PlayerID])
REFERENCES [dbo].[tblPLAYER] ([PlayerID])
GO
ALTER TABLE [dbo].[tblPLAYER_MATCH_TEAMS]  WITH CHECK ADD FOREIGN KEY([TeamID])
REFERENCES [dbo].[tblTEAMS] ([TeamID])
GO
