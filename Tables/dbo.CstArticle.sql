CREATE TABLE [dbo].[CstArticle] (
  [ID] [int] IDENTITY,
  [CreateTS] [datetime] NULL CONSTRAINT [DF__CstArticl__Creat__40F9A68C] DEFAULT (getdate()),
  [UserFK] [int] NULL,
  [DocumentFK] [int] NULL CONSTRAINT [DF__CstArticl__Docum__41EDCAC5] DEFAULT (0),
  [Heading] [nvarchar](255) NULL,
  [Manchet] [ntext] NULL,
  [Content] [ntext] NULL,
  [Editor] [nvarchar](255) NULL,
  CONSTRAINT [aaaaaCstArticle_PK] PRIMARY KEY NONCLUSTERED ([ID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [ActivityUserID]
  ON [dbo].[CstArticle] ([UserFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO