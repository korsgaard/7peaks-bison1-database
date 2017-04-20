CREATE TABLE [dbo].[CstRosRis] (
  [RosRisID] [int] IDENTITY,
  [Heading] [nvarchar](255) NULL,
  [Ros] [bit] NOT NULL CONSTRAINT [DF__CstRosRis__Ros__1A9EF37A] DEFAULT (0),
  [Team] [bit] NOT NULL CONSTRAINT [DF__CstRosRis__Team__1B9317B3] DEFAULT (0),
  [Message] [ntext] NULL,
  CONSTRAINT [aaaaaCstRosRis_PK] PRIMARY KEY NONCLUSTERED ([RosRisID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [RosRisID]
  ON [dbo].[CstRosRis] ([RosRisID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO