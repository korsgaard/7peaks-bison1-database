CREATE TABLE [dbo].[TblField] (
  [FieldID] [int] IDENTITY,
  [FieldName] [nvarchar](50) NULL,
  [FieldType] [nvarchar](50) NULL,
  [FieldChoices] [ntext] NULL,
  [FieldFormType] [nvarchar](50) NULL,
  [FieldTitle] [nvarchar](50) NULL,
  [FieldDescription] [nvarchar](255) NULL,
  CONSTRAINT [aaaaaTblField_PK] PRIMARY KEY NONCLUSTERED ([FieldID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [FieldID]
  ON [dbo].[TblField] ([FieldID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO