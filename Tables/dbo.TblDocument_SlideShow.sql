CREATE TABLE [dbo].[TblDocument_SlideShow] (
  [DocumentID] [int] NOT NULL CONSTRAINT [DF__TblDocume__Docum__442B18F2] DEFAULT (0),
  [SlideShowID] [int] NOT NULL CONSTRAINT [DF__TblDocume__Slide__451F3D2B] DEFAULT (0),
  CONSTRAINT [aaaaaTblDocument_SlideShow_PK] PRIMARY KEY NONCLUSTERED ([DocumentID], [SlideShowID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [ASPFuncID]
  ON [dbo].[TblDocument_SlideShow] ([SlideShowID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [DocumentID]
  ON [dbo].[TblDocument_SlideShow] ([DocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblDocumentTblDocument_SlideShow]
  ON [dbo].[TblDocument_SlideShow] ([DocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblSlideShowTblDocument_SlideShow]
  ON [dbo].[TblDocument_SlideShow] ([SlideShowID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblDocument_SlideShow] WITH NOCHECK
  ADD CONSTRAINT [TblDocument_SlideShow_FK00] FOREIGN KEY ([DocumentID]) REFERENCES [dbo].[TblDocument] ([DocumentID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[TblDocument_SlideShow] WITH NOCHECK
  ADD CONSTRAINT [TblDocument_SlideShow_FK01] FOREIGN KEY ([SlideShowID]) REFERENCES [dbo].[TblSlideShow] ([SlideShowID]) ON DELETE CASCADE
GO