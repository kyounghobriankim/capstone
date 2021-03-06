SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTEAMS](
	[TeamID] [int] IDENTITY(1,1) NOT NULL,
	[TeamName] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblTEAMS] ADD PRIMARY KEY CLUSTERED 
(
	[TeamID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
