CREATE TABLE [dbo].[CstTestDef] (
  [TestDefID] [int] IDENTITY,
  [Name] [nvarchar](50) NULL,
  [Description] [ntext] NULL,
  [Recommendation] [ntext] NULL,
  CONSTRAINT [aaaaaCstTestDef_PK] PRIMARY KEY NONCLUSTERED ([TestDefID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [TestID]
  ON [dbo].[CstTestDef] ([TestDefID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO