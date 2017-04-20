CREATE TABLE [dbo].[TblDocument_Library] (
  [DocumentID] [int] NOT NULL CONSTRAINT [DF__TblDocume__Docum__38B96646] DEFAULT (0),
  [LibraryID] [int] NOT NULL CONSTRAINT [DF__TblDocume__Libra__39AD8A7F] DEFAULT (0),
  CONSTRAINT [aaaaaTblDocument_Library_PK] PRIMARY KEY NONCLUSTERED ([DocumentID], [LibraryID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [ASPFuncID]
  ON [dbo].[TblDocument_Library] ([LibraryID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [DocumentID]
  ON [dbo].[TblDocument_Library] ([DocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblDocumentTblDocument_Library]
  ON [dbo].[TblDocument_Library] ([DocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblLibraryTblDocument_Library]
  ON [dbo].[TblDocument_Library] ([LibraryID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblDocument_Library] WITH NOCHECK
  ADD CONSTRAINT [TblDocument_Library_FK00] FOREIGN KEY ([DocumentID]) REFERENCES [dbo].[TblDocument] ([DocumentID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[TblDocument_Library] WITH NOCHECK
  ADD CONSTRAINT [TblDocument_Library_FK01] FOREIGN KEY ([LibraryID]) REFERENCES [dbo].[TblLibrary] ([LibraryID]) ON DELETE CASCADE
GO