CREATE TABLE [dbo].[TblUserRights_DocTemplate] (
  [UserID] [int] NOT NULL CONSTRAINT [DF__TblUserRi__UserI__6C6E1476] DEFAULT (0),
  [DocTemplateID] [int] NOT NULL CONSTRAINT [DF__TblUserRi__DocTe__6D6238AF] DEFAULT (0),
  CONSTRAINT [aaaaaTblUserRights_DocTemplate_PK] PRIMARY KEY NONCLUSTERED ([UserID], [DocTemplateID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [DocTemplateID]
  ON [dbo].[TblUserRights_DocTemplate] ([DocTemplateID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblDocTemplateTblUserRights_DocTemplate]
  ON [dbo].[TblUserRights_DocTemplate] ([DocTemplateID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblUserTblUserRights_DocTemplate]
  ON [dbo].[TblUserRights_DocTemplate] ([UserID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [UserID]
  ON [dbo].[TblUserRights_DocTemplate] ([UserID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblUserRights_DocTemplate] WITH NOCHECK
  ADD CONSTRAINT [TblUserRights_DocTemplate_FK00] FOREIGN KEY ([DocTemplateID]) REFERENCES [dbo].[TblDocTemplate] ([DocTemplateID])
GO

ALTER TABLE [dbo].[TblUserRights_DocTemplate] WITH NOCHECK
  ADD CONSTRAINT [TblUserRights_DocTemplate_FK01] FOREIGN KEY ([UserID]) REFERENCES [dbo].[TblUser] ([UserID]) ON DELETE CASCADE
GO