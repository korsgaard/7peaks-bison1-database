CREATE TABLE [dbo].[CstTeam] (
  [TeamID] [int] IDENTITY,
  [GroupFK] [int] NULL CONSTRAINT [DF__CstTeam__GroupFK__2704CA5F] DEFAULT (0),
  [Title] [nvarchar](100) NULL,
  [StartDate] [datetime] NULL,
  [EndDate] [datetime] NULL,
  [ExpPart] [int] NULL CONSTRAINT [DF__CstTeam__ExpPart__27F8EE98] DEFAULT (0),
  [TeamPercent] [real] NULL CONSTRAINT [DF__CstTeam__TeamPer__28ED12D1] DEFAULT (0),
  [TeamPercent1d] [real] NULL CONSTRAINT [DF__CstTeam__TeamPer__29E1370A] DEFAULT (0),
  [TeamPercent1w] [real] NULL CONSTRAINT [DF__CstTeam__TeamPer__2AD55B43] DEFAULT (0),
  [ForumFK] [int] NULL CONSTRAINT [DF__CstTeam__ForumFK__2BC97F7C] DEFAULT (0),
  [Statement] [ntext] NULL,
  [Description] [ntext] NULL,
  [CountryCode] [nvarchar](50) NULL,
  [TeamReportPercent] [real] NULL,
  [Password] [varchar](50) NULL,
  CONSTRAINT [aaaaaCstTeam_PK] PRIMARY KEY NONCLUSTERED ([TeamID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [FmwGroupCstSegment]
  ON [dbo].[CstTeam] ([GroupFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [SegmentID]
  ON [dbo].[CstTeam] ([TeamID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[CstTeam] WITH NOCHECK
  ADD CONSTRAINT [CstTeam_FK00] FOREIGN KEY ([GroupFK]) REFERENCES [dbo].[FmwGroup] ([GroupID]) ON DELETE CASCADE
GO