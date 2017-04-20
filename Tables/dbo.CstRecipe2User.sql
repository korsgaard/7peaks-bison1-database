CREATE TABLE [dbo].[CstRecipe2User] (
  [ID] [int] IDENTITY,
  [UserFK] [int] NULL,
  [RecipeFK] [int] NULL,
  CONSTRAINT [aaaaaCstRecipe2User_PK] PRIMARY KEY NONCLUSTERED ([ID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
GO

CREATE INDEX [CstRecipeCstRecipe2User]
  ON [dbo].[CstRecipe2User] ([RecipeFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [FmwUserCstRecipe2User]
  ON [dbo].[CstRecipe2User] ([UserFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

CREATE INDEX [ID]
  ON [dbo].[CstRecipe2User] ([ID])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[CstRecipe2User] WITH NOCHECK
  ADD CONSTRAINT [CstRecipe2User_FK00] FOREIGN KEY ([RecipeFK]) REFERENCES [dbo].[CstRecipe] ([ID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[CstRecipe2User] WITH NOCHECK
  ADD CONSTRAINT [CstRecipe2User_FK01] FOREIGN KEY ([UserFK]) REFERENCES [dbo].[FmwUser] ([UserID]) ON DELETE CASCADE
GO