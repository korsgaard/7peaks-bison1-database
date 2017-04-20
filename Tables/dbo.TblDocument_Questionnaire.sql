CREATE TABLE [dbo].[TblDocument_Questionnaire] (
  [DocumentID] [int] NOT NULL CONSTRAINT [DF__TblDocume__Docum__3E723F9C] DEFAULT (0),
  [FormID] [int] NOT NULL CONSTRAINT [DF__TblDocume__FormI__3F6663D5] DEFAULT (0),
  CONSTRAINT [aaaaaTblDocument_Questionnaire_PK] PRIMARY KEY NONCLUSTERED ([DocumentID], [FormID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [DocumentID]
  ON [dbo].[TblDocument_Questionnaire] ([DocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [FormID]
  ON [dbo].[TblDocument_Questionnaire] ([FormID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO