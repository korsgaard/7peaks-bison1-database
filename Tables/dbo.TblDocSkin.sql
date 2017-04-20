CREATE TABLE [dbo].[TblDocSkin] (
  [DocSkinID] [int] IDENTITY,
  [DocSkinName] [nvarchar](50) NULL,
  [DocSkinDescription] [ntext] NULL,
  [DocSkinDevNotes] [ntext] NULL,
  CONSTRAINT [aaaaaTblDocSkin_PK] PRIMARY KEY NONCLUSTERED ([DocSkinID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [SkinID]
  ON [dbo].[TblDocSkin] ([DocSkinID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO