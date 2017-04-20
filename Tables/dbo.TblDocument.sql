CREATE TABLE [dbo].[TblDocument] (
  [DocumentID] [int] IDENTITY,
  [DocumentSymbol] [nvarchar](50) NULL,
  [DocumentTitle] [nvarchar](100) NULL,
  [DocumentBody] [ntext] NULL,
  [DocumentActive] [bit] NOT NULL CONSTRAINT [DF__TblDocume__Docum__119F9925] DEFAULT (0),
  [DocumentIsSecure] [bit] NOT NULL CONSTRAINT [DF__TblDocume__Docum__1293BD5E] DEFAULT (0),
  [DocumentEdited] [datetime] NULL,
  [DocumentEditedBy] [int] NULL,
  [DocumentShowEdited] [bit] NOT NULL CONSTRAINT [DF__TblDocume__Docum__1387E197] DEFAULT (0),
  [DocumentShowPrint] [bit] NOT NULL CONSTRAINT [DF__TblDocume__Docum__147C05D0] DEFAULT (0),
  [DocumentDocTemplateID] [int] NOT NULL CONSTRAINT [DF__TblDocume__Docum__15702A09] DEFAULT (1),
  [DocumentCategoryID] [int] NOT NULL CONSTRAINT [DF__TblDocume__Docum__16644E42] DEFAULT (1),
  [DocumentUseRating] [bit] NOT NULL CONSTRAINT [DF__TblDocume__Docum__1758727B] DEFAULT (0),
  CONSTRAINT [aaaaaTblDocument_PK] PRIMARY KEY NONCLUSTERED ([DocumentID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [DocumentCategoryID]
  ON [dbo].[TblDocument] ([DocumentCategoryID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [DocumentDocTemplateID]
  ON [dbo].[TblDocument] ([DocumentDocTemplateID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [DocumentID]
  ON [dbo].[TblDocument] ([DocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblDocTemplateTblDocument]
  ON [dbo].[TblDocument] ([DocumentDocTemplateID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TblLibraryCategoryTblDocument]
  ON [dbo].[TblDocument] ([DocumentCategoryID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[TblDocument] WITH NOCHECK
  ADD CONSTRAINT [TblDocument_FK00] FOREIGN KEY ([DocumentDocTemplateID]) REFERENCES [dbo].[TblDocTemplate] ([DocTemplateID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[TblDocument] WITH NOCHECK
  ADD CONSTRAINT [TblDocument_FK01] FOREIGN KEY ([DocumentCategoryID]) REFERENCES [dbo].[TblLibraryCategory] ([LibraryCategoryID]) ON DELETE CASCADE
GO