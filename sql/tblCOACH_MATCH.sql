SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCOACH_MATCH](
	[CoachMatchID] [int] IDENTITY(1,1) NOT NULL,
	[CoachID] [int] NOT NULL,
	[MatchID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblCOACH_MATCH] ADD PRIMARY KEY CLUSTERED 
(
	[CoachMatchID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblCOACH_MATCH]  WITH CHECK ADD FOREIGN KEY([CoachID])
REFERENCES [dbo].[tblCOACH] ([CoachID])
GO
ALTER TABLE [dbo].[tblCOACH_MATCH]  WITH CHECK ADD FOREIGN KEY([MatchID])
REFERENCES [dbo].[tblMATCH] ([MatchID])
GO