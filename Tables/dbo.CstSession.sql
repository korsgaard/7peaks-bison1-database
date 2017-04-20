CREATE TABLE [dbo].[CstSession] (
  [SessionID] [int] IDENTITY (12, 1),
  [TestFK] [int] NULL CONSTRAINT [DF__CstSessio__TestF__2057CCD0] DEFAULT (0),
  [Dato] [datetime] NULL,
  [StartTime] [datetime] NULL,
  [EndTime] [datetime] NULL,
  [Interval] [int] NULL CONSTRAINT [DF__CstSessio__Inter__214BF109] DEFAULT (0),
  [NumTesters] [int] NULL CONSTRAINT [DF__CstSessio__NumTe__22401542] DEFAULT (0),
  [Location] [nvarchar](255) NULL,
  CONSTRAINT [aaaaaCstSession_PK] PRIMARY KEY NONCLUSTERED ([SessionID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CstTestCstSession]
  ON [dbo].[CstSession] ([TestFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TimeslotID]
  ON [dbo].[CstSession] ([SessionID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[CstSession]
  ADD CONSTRAINT [FK_CstSession_CstTest] FOREIGN KEY ([TestFK]) REFERENCES [dbo].[CstTest] ([TestID]) ON DELETE CASCADE
GO