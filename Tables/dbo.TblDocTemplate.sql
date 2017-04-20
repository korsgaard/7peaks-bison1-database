CREATE TABLE [dbo].[TblDocTemplate] (
  [DocTemplateID] [int] IDENTITY,
  [DocTemplateName] [nvarchar](50) NULL,
  [DocTemplateSkinID] [int] NOT NULL CONSTRAINT [DF__TblDocTem__DocTe__0BE6BFCF] DEFAULT (1),
  [DecTemplateDescription] [ntext] NULL,
  [DocTemplateDevNotes] [ntext] NULL,
  [DocTemplatePrivilegeNeeded] [int] NULL CONSTRAINT [DF__TblDocTem__DocTe__0CDAE408] DEFAULT (0),
  CONSTRAINT [aaaaaTblDocTemplate_PK] PRIMARY KEY NONCLUSTERED ([DocTemplateID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [DocTemplateID]
  ON [dbo].[TblDocTemplate] ([DocTemplateID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [DocTemplateSkinID]
  ON [dbo].[TblDocTemplate] ([DocTemplateSkinID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblSkinTblDocTemplate]
  ON [dbo].[TblDocTemplate] ([DocTemplateSkinID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblDocTemplate] WITH NOCHECK
  ADD CONSTRAINT [TblDocTemplate_FK00] FOREIGN KEY ([DocTemplateSkinID]) REFERENCES [dbo].[TblDocSkin] ([DocSkinID])
GO