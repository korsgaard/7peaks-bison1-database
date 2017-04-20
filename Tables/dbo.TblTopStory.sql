CREATE TABLE [dbo].[TblTopStory] (
  [TopStoryID] [int] IDENTITY,
  [TopstoryTitle] [nvarchar](100) NULL,
  [TopStoryTeaser] [ntext] NULL,
  [TopStoryDocumentID] [int] NULL CONSTRAINT [DF__TblTopSto__TopSt__567ED357] DEFAULT (0),
  [TopStoryExpire] [datetime] NULL,
  [TopStoryDate] [datetime] NULL,
  [TopStoryImageID] [int] NULL CONSTRAINT [DF__TblTopSto__TopSt__5772F790] DEFAULT (0),
  [TopStoryLinkID] [int] NULL CONSTRAINT [DF__TblTopSto__TopSt__58671BC9] DEFAULT (0),
  CONSTRAINT [aaaaaTblTopStory_PK] PRIMARY KEY NONCLUSTERED ([TopStoryID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [NewsID]
  ON [dbo].[TblTopStory] ([TopStoryID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TopStoryDocumentID]
  ON [dbo].[TblTopStory] ([TopStoryDocumentID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TopStoryImageID]
  ON [dbo].[TblTopStory] ([TopStoryImageID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [TopStoryLinkID]
  ON [dbo].[TblTopStory] ([TopStoryLinkID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO