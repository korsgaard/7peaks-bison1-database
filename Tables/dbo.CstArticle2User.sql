CREATE TABLE [dbo].[CstArticle2User] (
  [ID] [int] IDENTITY,
  [UserFK] [int] NULL,
  [ArticleFK] [int] NULL,
  CONSTRAINT [aaaaaCstArticle2User_PK] PRIMARY KEY NONCLUSTERED ([ID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CstArticleCstArticle2User]
  ON [dbo].[CstArticle2User] ([ArticleFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [FmwUserCstArticle2User]
  ON [dbo].[CstArticle2User] ([UserFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [ID]
  ON [dbo].[CstArticle2User] ([ID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[CstArticle2User] WITH NOCHECK
  ADD CONSTRAINT [CstArticle2User_FK00] FOREIGN KEY ([ArticleFK]) REFERENCES [dbo].[CstArticle] ([ID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[CstArticle2User] WITH NOCHECK
  ADD CONSTRAINT [CstArticle2User_FK01] FOREIGN KEY ([UserFK]) REFERENCES [dbo].[FmwUser] ([UserID]) ON DELETE CASCADE
GO