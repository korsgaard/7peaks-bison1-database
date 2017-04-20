CREATE TABLE [dbo].[TblDocument_ASPFunc] (
  [DocumentID] [int] NOT NULL CONSTRAINT [DF__TblDocume__Docum__1C1D2798] DEFAULT (0),
  [ASPFuncID] [int] NOT NULL CONSTRAINT [DF__TblDocume__ASPFu__1D114BD1] DEFAULT (0),
  CONSTRAINT [aaaaaTblDocument_ASPFunc_PK] PRIMARY KEY NONCLUSTERED ([DocumentID], [ASPFuncID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [ASPFuncID]
  ON [dbo].[TblDocument_ASPFunc] ([ASPFuncID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [DocumentID]
  ON [dbo].[TblDocument_ASPFunc] ([DocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblASPFuncTblDocument_ASPFunc]
  ON [dbo].[TblDocument_ASPFunc] ([ASPFuncID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblDocumentTblDocument_ASPFunc]
  ON [dbo].[TblDocument_ASPFunc] ([DocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblDocument_ASPFunc] WITH NOCHECK
  ADD CONSTRAINT [TblDocument_ASPFunc_FK00] FOREIGN KEY ([ASPFuncID]) REFERENCES [dbo].[TblASPFunc] ([ASPFuncID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[TblDocument_ASPFunc] WITH NOCHECK
  ADD CONSTRAINT [TblDocument_ASPFunc_FK01] FOREIGN KEY ([DocumentID]) REFERENCES [dbo].[TblDocument] ([DocumentID]) ON DELETE CASCADE
GO