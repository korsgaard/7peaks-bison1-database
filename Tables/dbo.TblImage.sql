CREATE TABLE [dbo].[TblImage] (
  [ImageID] [int] IDENTITY,
  [ImageCategoryID] [int] NULL CONSTRAINT [DF__TblImage__ImageC__162F4418] DEFAULT (0),
  [ImageName] [nvarchar](100) NULL,
  [ImageLocation] [nvarchar](255) NULL,
  [ImageDescription] [ntext] NULL,
  [ImageSize] [int] NULL CONSTRAINT [DF__TblImage__ImageS__17236851] DEFAULT (0),
  [ImageFileName] [nvarchar](255) NULL,
  CONSTRAINT [aaaaaTblImage_PK] PRIMARY KEY NONCLUSTERED ([ImageID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [ImageCategoryID]
  ON [dbo].[TblImage] ([ImageCategoryID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [ImageID]
  ON [dbo].[TblImage] ([ImageID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblLibraryCategoryTblImage]
  ON [dbo].[TblImage] ([ImageCategoryID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblImage] WITH NOCHECK
  ADD CONSTRAINT [TblImage_FK00] FOREIGN KEY ([ImageCategoryID]) REFERENCES [dbo].[TblLibraryCategory] ([LibraryCategoryID])
GO