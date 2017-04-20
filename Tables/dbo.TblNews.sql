CREATE TABLE [dbo].[TblNews] (
  [NewsID] [int] IDENTITY,
  [NewsTitle] [nvarchar](100) NULL,
  [NewsDate] [datetime] NULL,
  [NewsTeaser] [ntext] NULL,
  [NewsDocumentID] [int] NULL CONSTRAINT [DF__TblNews__NewsDoc__7167D3BD] DEFAULT (0),
  [NewsExpire] [datetime] NULL,
  [NewsImageID] [int] NULL CONSTRAINT [DF__TblNews__NewsIma__725BF7F6] DEFAULT (0),
  [NewsLinkID] [int] NULL CONSTRAINT [DF__TblNews__NewsLin__73501C2F] DEFAULT (0),
  CONSTRAINT [aaaaaTblNews_PK] PRIMARY KEY NONCLUSTERED ([NewsID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [NewsDocumentID]
  ON [dbo].[TblNews] ([NewsDocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [NewsID]
  ON [dbo].[TblNews] ([NewsID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [NewsImageID]
  ON [dbo].[TblNews] ([NewsImageID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [NewsLinkID]
  ON [dbo].[TblNews] ([NewsLinkID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO