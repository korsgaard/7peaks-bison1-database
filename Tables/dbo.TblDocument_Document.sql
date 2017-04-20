CREATE TABLE [dbo].[TblDocument_Document] (
  [DocumentID] [int] NOT NULL CONSTRAINT [DF__TblDocume__Docum__21D600EE] DEFAULT (0),
  [LinkedDocumentID] [int] NOT NULL CONSTRAINT [DF__TblDocume__Linke__22CA2527] DEFAULT (0),
  CONSTRAINT [aaaaaTblDocument_Document_PK] PRIMARY KEY NONCLUSTERED ([DocumentID], [LinkedDocumentID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [ASPFuncID]
  ON [dbo].[TblDocument_Document] ([LinkedDocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [DocumentID]
  ON [dbo].[TblDocument_Document] ([DocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblDocumentTblDocument_Document]
  ON [dbo].[TblDocument_Document] ([DocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblDocumentTblDocument_Document1]
  ON [dbo].[TblDocument_Document] ([LinkedDocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblDocument_Document] WITH NOCHECK
  ADD CONSTRAINT [TblDocument_Document_FK00] FOREIGN KEY ([DocumentID]) REFERENCES [dbo].[TblDocument] ([DocumentID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[TblDocument_Document] WITH NOCHECK
  ADD CONSTRAINT [TblDocument_Document_FK01] FOREIGN KEY ([LinkedDocumentID]) REFERENCES [dbo].[TblDocument] ([DocumentID])
GO