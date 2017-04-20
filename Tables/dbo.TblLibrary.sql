CREATE TABLE [dbo].[TblLibrary] (
  [LibraryID] [int] IDENTITY,
  [LibraryCategoryID] [int] NULL,
  [LibraryName] [nvarchar](100) NULL,
  [LibraryLocation] [nvarchar](255) NULL,
  [LibraryDescription] [ntext] NULL,
  [LibrarySize] [int] NULL,
  [LibraryFileName] [nvarchar](255) NULL,
  CONSTRAINT [aaaaaTblLibrary_PK] PRIMARY KEY NONCLUSTERED ([LibraryID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [TblLibraryCategoryTblLibrary]
  ON [dbo].[TblLibrary] ([LibraryCategoryID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblLibrary] WITH NOCHECK
  ADD CONSTRAINT [TblLibrary_FK00] FOREIGN KEY ([LibraryCategoryID]) REFERENCES [dbo].[TblLibraryCategory] ([LibraryCategoryID])
GO