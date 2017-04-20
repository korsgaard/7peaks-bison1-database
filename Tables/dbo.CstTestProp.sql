CREATE TABLE [dbo].[CstTestProp] (
  [TestPropID] [int] IDENTITY,
  [TestDefFK] [int] NULL CONSTRAINT [DF__CstTestPr__TestD__3B0BC30C] DEFAULT (0),
  [PropFK] [int] NULL CONSTRAINT [DF__CstTestPr__PropF__3BFFE745] DEFAULT (0),
  [CreateTS] [datetime] NULL CONSTRAINT [DF__CstTestPr__Creat__3CF40B7E] DEFAULT (getdate()),
  [ModifyTS] [datetime] NULL CONSTRAINT [DF__CstTestPr__Modif__3DE82FB7] DEFAULT (getdate()),
  CONSTRAINT [aaaaaCstTestProp_PK] PRIMARY KEY NONCLUSTERED ([TestPropID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [{3DC181FC-F899-4AA0-A378-C1F865A3103E}]
  ON [dbo].[CstTestProp] ([PropFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [CstTestDefCstTestProp]
  ON [dbo].[CstTestProp] ([TestDefFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [PerPropID]
  ON [dbo].[CstTestProp] ([TestPropID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [PerPropPropID]
  ON [dbo].[CstTestProp] ([TestDefFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TestPropPropID]
  ON [dbo].[CstTestProp] ([PropFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[CstTestProp] WITH NOCHECK
  ADD CONSTRAINT [CstTestProp_FK00] FOREIGN KEY ([PropFK]) REFERENCES [dbo].[CstProperty] ([PropertyID]) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE [dbo].[CstTestProp] WITH NOCHECK
  ADD CONSTRAINT [CstTestProp_FK01] FOREIGN KEY ([TestDefFK]) REFERENCES [dbo].[CstTestDef] ([TestDefID]) ON DELETE CASCADE
GO