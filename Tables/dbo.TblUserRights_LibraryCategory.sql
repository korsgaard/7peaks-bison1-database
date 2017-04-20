CREATE TABLE [dbo].[TblUserRights_LibraryCategory] (
  [UserID] [int] NOT NULL CONSTRAINT [DF__TblUserRi__UserI__7226EDCC] DEFAULT (0),
  [LibraryCategoryID] [int] NOT NULL CONSTRAINT [DF__TblUserRi__Libra__731B1205] DEFAULT (0),
  CONSTRAINT [aaaaaTblUserRights_LibraryCategory_PK] PRIMARY KEY NONCLUSTERED ([UserID], [LibraryCategoryID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [DocTemplateID]
  ON [dbo].[TblUserRights_LibraryCategory] ([LibraryCategoryID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblLibraryCategoryTblUserRights_LibraryCategory]
  ON [dbo].[TblUserRights_LibraryCategory] ([LibraryCategoryID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblUserTblUserRights_LibraryCategory]
  ON [dbo].[TblUserRights_LibraryCategory] ([UserID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UserID]
  ON [dbo].[TblUserRights_LibraryCategory] ([UserID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblUserRights_LibraryCategory] WITH NOCHECK
  ADD CONSTRAINT [TblUserRights_LibraryCate_FK00] FOREIGN KEY ([LibraryCategoryID]) REFERENCES [dbo].[TblLibraryCategory] ([LibraryCategoryID])
GO

ALTER TABLE [dbo].[TblUserRights_LibraryCategory] WITH NOCHECK
  ADD CONSTRAINT [TblUserRights_LibraryCate_FK01] FOREIGN KEY ([UserID]) REFERENCES [dbo].[TblUser] ([UserID]) ON DELETE CASCADE
GO