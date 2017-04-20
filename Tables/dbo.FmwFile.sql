CREATE TABLE [dbo].[FmwFile] (
  [FileID] [int] IDENTITY,
  [FileName] [nvarchar](255) NULL,
  [FileSize] [int] NULL,
  [FileContentType] [nvarchar](50) NULL,
  [FileGroupID] [int] NULL,
  [FileUserID] [int] NULL,
  [FileDate] [datetime] NULL,
  [FileHide] [bit] NOT NULL CONSTRAINT [DF__FmwFile__FileHid__0D44F85C] DEFAULT (0),
  [FileHeading] [nvarchar](100) NULL,
  [FileDescription] [ntext] NULL,
  [FileCategoryID] [int] NULL,
  CONSTRAINT [aaaaaFmwFile_PK] PRIMARY KEY NONCLUSTERED ([FileID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [FileCategoryID]
  ON [dbo].[FmwFile] ([FileCategoryID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [FileGroupID]
  ON [dbo].[FmwFile] ([FileGroupID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [FileUserID]
  ON [dbo].[FmwFile] ([FileUserID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO