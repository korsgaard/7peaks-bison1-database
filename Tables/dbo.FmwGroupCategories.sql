CREATE TABLE [dbo].[FmwGroupCategories] (
  [GroupID] [int] NOT NULL CONSTRAINT [DF__FmwGroupC__Group__0519C6AF] DEFAULT (0),
  [CategoryID] [int] NOT NULL CONSTRAINT [DF__FmwGroupC__Categ__060DEAE8] DEFAULT (0),
  [Default] [bit] NOT NULL CONSTRAINT [DF__FmwGroupC__Defau__07020F21] DEFAULT (0),
  [Level] [int] NULL CONSTRAINT [DF__FmwGroupC__Level__07F6335A] DEFAULT (0),
  CONSTRAINT [aaaaaFmwGroupCategories_PK] PRIMARY KEY NONCLUSTERED ([GroupID], [CategoryID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CategoryID]
  ON [dbo].[FmwGroupCategories] ([CategoryID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [FmwGroupFmwGroupCategories]
  ON [dbo].[FmwGroupCategories] ([GroupID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [GroupID]
  ON [dbo].[FmwGroupCategories] ([GroupID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblLibraryCategoryFmwGroupCategories]
  ON [dbo].[FmwGroupCategories] ([CategoryID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[FmwGroupCategories] WITH NOCHECK
  ADD CONSTRAINT [FmwGroupCategories_FK00] FOREIGN KEY ([GroupID]) REFERENCES [dbo].[FmwGroup] ([GroupID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[FmwGroupCategories] WITH NOCHECK
  ADD CONSTRAINT [FmwGroupCategories_FK01] FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[TblLibraryCategory] ([LibraryCategoryID])
GO