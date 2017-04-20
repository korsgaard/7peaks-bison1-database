CREATE TABLE [dbo].[CstRecipeRating2User] (
  [ID] [int] IDENTITY,
  [UserFK] [int] NOT NULL,
  [RecipeFK] [int] NOT NULL,
  [Rating] [real] NOT NULL,
  CONSTRAINT [PK_CstRecipeRating2User] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CstRecipeRating2User]
  ADD CONSTRAINT [FK_CstRecipeRating2User_CstRecipe] FOREIGN KEY ([RecipeFK]) REFERENCES [dbo].[CstRecipe] ([ID]) ON DELETE CASCADE
GO

ALTER TABLE [dbo].[CstRecipeRating2User]
  ADD CONSTRAINT [FK_CstRecipeRating2User_FmwUser] FOREIGN KEY ([UserFK]) REFERENCES [dbo].[FmwUser] ([UserID]) ON DELETE CASCADE
GO