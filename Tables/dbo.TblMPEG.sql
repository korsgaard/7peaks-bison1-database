CREATE TABLE [dbo].[TblMPEG] (
  [MPEGID] [int] IDENTITY,
  [MPEGCategoryID] [int] NULL,
  [MPEGName] [nvarchar](100) NULL,
  [MPEGLocation] [nvarchar](255) NULL,
  [MPEGDescription] [ntext] NULL,
  [MPEGSize] [int] NULL,
  [MPEGFileName] [nvarchar](255) NULL,
  CONSTRAINT [aaaaaTblMPEG_PK] PRIMARY KEY NONCLUSTERED ([MPEGID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [TblLibraryCategoryTblMPEG]
  ON [dbo].[TblMPEG] ([MPEGCategoryID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblMPEG] WITH NOCHECK
  ADD CONSTRAINT [TblMPEG_FK00] FOREIGN KEY ([MPEGCategoryID]) REFERENCES [dbo].[TblLibraryCategory] ([LibraryCategoryID])
GO