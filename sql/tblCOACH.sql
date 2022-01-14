SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCOACH](
	[CoachID] [int] IDENTITY(1,1) NOT NULL,
	[PlayerID] [int] NOT NULL,
	[TeamID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblCOACH] ADD PRIMARY KEY CLUSTERED 
(
	[CoachID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblCOACH]  WITH CHECK ADD FOREIGN KEY([PlayerID])
REFERENCES [dbo].[tblPLAYER] ([PlayerID])
GO
ALTER TABLE [dbo].[tblCOACH]  WITH CHECK ADD FOREIGN KEY([TeamID])
REFERENCES [dbo].[tblTEAMS] ([TeamID])
GO