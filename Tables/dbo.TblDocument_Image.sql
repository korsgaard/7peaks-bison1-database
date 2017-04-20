CREATE TABLE [dbo].[TblDocument_Image] (
  [DocumentID] [int] NOT NULL CONSTRAINT [DF__TblDocume__Docum__33008CF0] DEFAULT (0),
  [ImageID] [int] NOT NULL CONSTRAINT [DF__TblDocume__Image__33F4B129] DEFAULT (0),
  CONSTRAINT [aaaaaTblDocument_Image_PK] PRIMARY KEY NONCLUSTERED ([DocumentID], [ImageID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [ASPFuncID]
  ON [dbo].[TblDocument_Image] ([ImageID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [DocumentID]
  ON [dbo].[TblDocument_Image] ([DocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblDocumentTblDocument_Image]
  ON [dbo].[TblDocument_Image] ([DocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblImageTblDocument_Image]
  ON [dbo].[TblDocument_Image] ([ImageID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblDocument_Image] WITH NOCHECK
  ADD CONSTRAINT [TblDocument_Image_FK00] FOREIGN KEY ([DocumentID]) REFERENCES [dbo].[TblDocument] ([DocumentID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[TblDocument_Image] WITH NOCHECK
  ADD CONSTRAINT [TblDocument_Image_FK01] FOREIGN KEY ([ImageID]) REFERENCES [dbo].[TblImage] ([ImageID]) ON DELETE CASCADE
GO