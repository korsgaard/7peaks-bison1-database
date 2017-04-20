CREATE TABLE [dbo].[CstTest] (
  [TestID] [int] IDENTITY (3, 1),
  [TestDefFK] [int] NULL CONSTRAINT [DF__CstTest__TestDef__308E3499] DEFAULT (0),
  [GroupFK] [int] NULL CONSTRAINT [DF__CstTest__GroupFK__318258D2] DEFAULT (0),
  [Name] [nvarchar](50) NULL,
  [Completed] [bit] NOT NULL CONSTRAINT [DF__CstTest__Complet__32767D0B] DEFAULT (0),
  CONSTRAINT [aaaaaCstTest_PK] PRIMARY KEY NONCLUSTERED ([TestID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CstTestDefCstTest]
  ON [dbo].[CstTest] ([TestDefFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [FmwGroupCstTest]
  ON [dbo].[CstTest] ([GroupFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TestID]
  ON [dbo].[CstTest] ([TestID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[CstTest] WITH NOCHECK
  ADD CONSTRAINT [CstTest_FK00] FOREIGN KEY ([TestDefFK]) REFERENCES [dbo].[CstTestDef] ([TestDefID]) ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[CstTest] WITH NOCHECK
  ADD CONSTRAINT [CstTest_FK01] FOREIGN KEY ([GroupFK]) REFERENCES [dbo].[FmwGroup] ([GroupID]) ON DELETE CASCADE
GO