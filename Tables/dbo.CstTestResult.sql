CREATE TABLE [dbo].[CstTestResult] (
  [TestResultID] [int] IDENTITY,
  [TestFK] [int] NULL CONSTRAINT [DF__CstTestRe__TestF__42ACE4D4] DEFAULT (0),
  [PropertyFK] [int] NULL CONSTRAINT [DF__CstTestRe__Prope__43A1090D] DEFAULT (0),
  [UserFK] [int] NULL CONSTRAINT [DF__CstTestRe__UserF__44952D46] DEFAULT (0),
  [Value] [real] NULL CONSTRAINT [DF__CstTestRe__Value__4589517F] DEFAULT (0),
  [Point] [int] NULL CONSTRAINT [DF__CstTestRe__Point__467D75B8] DEFAULT (0),
  CONSTRAINT [aaaaaCstTestResult_PK] PRIMARY KEY NONCLUSTERED ([TestResultID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CoursePersonTestResultCouPerID]
  ON [dbo].[CstTestResult] ([UserFK] DESC)
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [CstPropertyCstTestResult]
  ON [dbo].[CstTestResult] ([PropertyFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [CstTestCstTestResult]
  ON [dbo].[CstTestResult] ([TestFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [FmwUserCstTestResult]
  ON [dbo].[CstTestResult] ([UserFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [PerTestResultID]
  ON [dbo].[CstTestResult] ([TestResultID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [PerTestResultPerTestID]
  ON [dbo].[CstTestResult] ([TestFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [PerTestResultTestPropID]
  ON [dbo].[CstTestResult] ([PropertyFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE UNIQUE INDEX [UniqueKey]
  ON [dbo].[CstTestResult] ([TestFK], [PropertyFK], [UserFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[CstTestResult] WITH NOCHECK
  ADD CONSTRAINT [CstTestResult_FK00] FOREIGN KEY ([PropertyFK]) REFERENCES [dbo].[CstProperty] ([PropertyID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[CstTestResult] WITH NOCHECK
  ADD CONSTRAINT [CstTestResult_FK01] FOREIGN KEY ([TestFK]) REFERENCES [dbo].[CstTest] ([TestID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[CstTestResult] WITH NOCHECK
  ADD CONSTRAINT [CstTestResult_FK02] FOREIGN KEY ([UserFK]) REFERENCES [dbo].[FmwUser] ([UserID]) ON DELETE CASCADE
GO