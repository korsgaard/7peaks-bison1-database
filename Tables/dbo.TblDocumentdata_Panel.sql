CREATE TABLE [dbo].[TblDocumentdata_Panel] (
  [DocumentID] [int] NOT NULL CONSTRAINT [DF__TblDocume__Docum__5FD33367] DEFAULT (0),
  [ProfileImageID] [int] NULL CONSTRAINT [DF__TblDocume__Profi__60C757A0] DEFAULT (0),
  [ProfileName] [nvarchar](255) NULL,
  [ProfileDescription] [ntext] NULL,
  [AskTitle] [nvarchar](255) NULL,
  [AskDescription] [ntext] NULL,
  CONSTRAINT [aaaaaTblDocumentdata_Panel_PK] PRIMARY KEY NONCLUSTERED ([DocumentID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [DocumentID]
  ON [dbo].[TblDocumentdata_Panel] ([DocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [ProfileImageID]
  ON [dbo].[TblDocumentdata_Panel] ([ProfileImageID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO