CREATE TABLE [dbo].[CstContest] (
  [ID] [int] IDENTITY,
  [Heading] [nvarchar](100) NULL,
  [CreateTS] [datetime] NULL CONSTRAINT [DF__CstContes__Creat__531856C7] DEFAULT (getdate()),
  [WonByUserFK] [int] NULL,
  [WonByTeamFK] [int] NULL,
  [Responsible] [nvarchar](100) NULL,
  [Location] [nvarchar](100) NULL,
  [StartDate] [datetime] NULL,
  [EndDate] [datetime] NULL,
  [SignupRequired] [bit] NOT NULL CONSTRAINT [DF__CstContes__Signu__540C7B00] DEFAULT (0),
  [SignupDeadline] [datetime] NULL,
  [ShowUsers] [bit] NOT NULL CONSTRAINT [DF__CstContes__ShowU__55009F39] DEFAULT (0),
  [Description] [ntext] NULL,
  [HitCount] [int] NULL CONSTRAINT [DF__CstContes__HitCo__55F4C372] DEFAULT (0),
  CONSTRAINT [aaaaaCstContest_PK] PRIMARY KEY NONCLUSTERED ([ID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [ActivityGroupID]
  ON [dbo].[CstContest] ([WonByUserFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [ActivityUserID]
  ON [dbo].[CstContest] ([WonByTeamFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO