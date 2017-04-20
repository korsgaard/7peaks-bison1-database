CREATE TABLE [dbo].[TblDocument_User] (
  [DocumentID] [int] NOT NULL CONSTRAINT [DF__TblDocume__Docum__4F9CCB9E] DEFAULT (0),
  [UserID] [int] NOT NULL CONSTRAINT [DF__TblDocume__UserI__5090EFD7] DEFAULT (0),
  CONSTRAINT [aaaaaTblDocument_User_PK] PRIMARY KEY NONCLUSTERED ([DocumentID], [UserID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [ASPFuncID]
  ON [dbo].[TblDocument_User] ([UserID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [DocumentID]
  ON [dbo].[TblDocument_User] ([DocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblDocumentTblDocument_User]
  ON [dbo].[TblDocument_User] ([DocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblUserTblDocument_User]
  ON [dbo].[TblDocument_User] ([UserID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblDocument_User] WITH NOCHECK
  ADD CONSTRAINT [TblDocument_User_FK00] FOREIGN KEY ([DocumentID]) REFERENCES [dbo].[TblDocument] ([DocumentID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[TblDocument_User] WITH NOCHECK
  ADD CONSTRAINT [TblDocument_User_FK01] FOREIGN KEY ([UserID]) REFERENCES [dbo].[TblUser] ([UserID]) ON DELETE CASCADE
GO