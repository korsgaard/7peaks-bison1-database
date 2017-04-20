CREATE TABLE [dbo].[hcReport] (
  [ReportID] [int] IDENTITY,
  [ReportPersonID] [int] NULL CONSTRAINT [DF__hcReport__Report__7C4F7684] DEFAULT (0),
  [ReportDate] [datetime] NULL,
  [ReportNote] [ntext] NULL,
  [ReportCreateTS] [datetime] NULL CONSTRAINT [DF__hcReport__Report__7D439ABD] DEFAULT (getdate()),
  [ReportMissed] [bit] NOT NULL CONSTRAINT [DF_hcReport_ReportMissed] DEFAULT (0),
  [ReportIndexGoal] [int] NULL,
  [ReportPercent] [int] NULL,
  [ReportUserPercent] [float] NULL,
  [ReportOldLevelFK] [int] NULL,
  [ReportNewLevelFK] [int] NULL,
  CONSTRAINT [aaaaahcReport_PK] PRIMARY KEY NONCLUSTERED ([ReportID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [FmwUserhcReport]
  ON [dbo].[hcReport] ([ReportPersonID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [ReportDate]
  ON [dbo].[hcReport] ([ReportDate])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [ReportID]
  ON [dbo].[hcReport] ([ReportID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [ReportPersonID]
  ON [dbo].[hcReport] ([ReportPersonID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[hcReport]
  ADD CONSTRAINT [FK_hcReport_NxtXPLevel_NewLevel] FOREIGN KEY ([ReportNewLevelFK]) REFERENCES [dbo].[NxtXPLevel] ([ID])
GO

ALTER TABLE [dbo].[hcReport]
  ADD CONSTRAINT [FK_hcReport_NxtXPLevel_OldLevel] FOREIGN KEY ([ReportOldLevelFK]) REFERENCES [dbo].[NxtXPLevel] ([ID])
GO

ALTER TABLE [dbo].[hcReport] WITH NOCHECK
  ADD CONSTRAINT [hcReport_FK00] FOREIGN KEY ([ReportPersonID]) REFERENCES [dbo].[FmwUser] ([UserID]) ON DELETE CASCADE
GO