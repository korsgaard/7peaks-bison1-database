CREATE TABLE [dbo].[TblDocument_Form] (
  [DocumentID] [int] NOT NULL CONSTRAINT [DF__TblDocume__Docum__2D47B39A] DEFAULT (0),
  [FormID] [int] NOT NULL CONSTRAINT [DF__TblDocume__FormI__2E3BD7D3] DEFAULT (0),
  CONSTRAINT [aaaaaTblDocument_Form_PK] PRIMARY KEY NONCLUSTERED ([DocumentID], [FormID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [DocumentID]
  ON [dbo].[TblDocument_Form] ([DocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [FormID]
  ON [dbo].[TblDocument_Form] ([FormID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblDocumentTblDocument_Form]
  ON [dbo].[TblDocument_Form] ([DocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblFormTblDocument_Form]
  ON [dbo].[TblDocument_Form] ([FormID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblDocument_Form] WITH NOCHECK
  ADD CONSTRAINT [TblDocument_Form_FK00] FOREIGN KEY ([DocumentID]) REFERENCES [dbo].[TblDocument] ([DocumentID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[TblDocument_Form] WITH NOCHECK
  ADD CONSTRAINT [TblDocument_Form_FK01] FOREIGN KEY ([FormID]) REFERENCES [dbo].[TblForm] ([FormID]) ON DELETE CASCADE
GO