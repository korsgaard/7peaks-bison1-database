CREATE TABLE [dbo].[TblStats] (
  [StatsDocumentID] [int] NOT NULL CONSTRAINT [DF__TblStats__StatsD__370627FE] DEFAULT (0),
  [StatsDate] [datetime] NOT NULL,
  [StatsVisitCount] [int] NULL CONSTRAINT [DF__TblStats__StatsV__37FA4C37] DEFAULT (0),
  [StatsHitCount] [int] NULL CONSTRAINT [DF__TblStats__StatsH__38EE7070] DEFAULT (0),
  CONSTRAINT [aaaaaTblStats_PK] PRIMARY KEY NONCLUSTERED ([StatsDocumentID], [StatsDate]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [StatsDocumentID]
  ON [dbo].[TblStats] ([StatsDocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO