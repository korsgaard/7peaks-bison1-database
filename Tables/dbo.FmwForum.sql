CREATE TABLE [dbo].[FmwForum] (
  [ForumID] [int] IDENTITY,
  [Lft] [int] NULL,
  [Rgt] [int] NULL,
  [Hidden] [bit] NOT NULL CONSTRAINT [DF__FmwForum__Hidden__7C1A6C5A] DEFAULT (0),
  [Date] [datetime] NULL CONSTRAINT [DF__FmwForum__Date__7D0E9093] DEFAULT (getdate()),
  [Heading] [nvarchar](200) NULL,
  [Content] [ntext] NULL,
  [UserFK] [int] NULL,
  [FileFK] [int] NULL,
  [GroupFK] [int] NULL CONSTRAINT [DF__FmwForum__GroupF__7E02B4CC] DEFAULT (0),
  CONSTRAINT [aaaaaFmwForum_PK] PRIMARY KEY NONCLUSTERED ([ForumID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [ForumFileID]
  ON [dbo].[FmwForum] ([FileFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [ForumUserID]
  ON [dbo].[FmwForum] ([UserFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO