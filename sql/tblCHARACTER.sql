SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCHARACTER](
	[CharacterID] [int] IDENTITY(1,1) NOT NULL,
	[CharacterName] [varchar](200) NOT NULL,
	[Ability1] [varchar](50) NULL,
	[Ability2] [varchar](50) NULL,
	[Ability3] [varchar](50) NULL,
	[Ultimate] [varchar](50) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblCHARACTER] ADD PRIMARY KEY CLUSTERED 
(
	[CharacterID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
