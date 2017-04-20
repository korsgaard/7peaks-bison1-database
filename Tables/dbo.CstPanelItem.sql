CREATE TABLE [dbo].[CstPanelItem] (
  [ID] [int] IDENTITY,
  [Heading] [nvarchar](100) NULL,
  [CreateTS] [datetime] NULL CONSTRAINT [DF__CstPanelI__Creat__625A9A57] DEFAULT (getdate()),
  [ReplyTS] [datetime] NULL,
  [UserFK] [int] NULL,
  [Question] [ntext] NULL,
  [Reply] [ntext] NULL,
  [DocumentFK] [int] NULL CONSTRAINT [DF__CstPanelI__Docum__634EBE90] DEFAULT (0),
  [ArticleFK] [int] NULL,
  CONSTRAINT [aaaaaCstPanelItem_PK] PRIMARY KEY NONCLUSTERED ([ID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [ActivityUserID]
  ON [dbo].[CstPanelItem] ([UserFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO