CREATE TABLE [dbo].[CstRecipe] (
  [ID] [int] IDENTITY,
  [CreateTS] [datetime] NULL CONSTRAINT [DF__CstRecipe__Creat__3587F3E0] DEFAULT (getdate()),
  [UserFK] [int] NULL,
  [DocumentFK] [int] NULL CONSTRAINT [DF__CstRecipe__Docum__367C1819] DEFAULT (0),
  [Heading] [nvarchar](255) NULL,
  [Ingredients] [ntext] NULL,
  [HowTo] [ntext] NULL,
  [Energy] [ntext] NULL,
  [WeightLoss] [ntext] NULL,
  [Image] [nvarchar](255) NULL,
  [Editor] [nvarchar](255) NULL,
  [Rating] [real] NULL CONSTRAINT [DF__CstRecipe__Ratin__37703C52] DEFAULT (0),
  [Raters] [real] NULL CONSTRAINT [DF__CstRecipe__Rater__3864608B] DEFAULT (0),
  CONSTRAINT [aaaaaCstRecipe_PK] PRIMARY KEY NONCLUSTERED ([ID]) WITH (FILLFACTOR = 90)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [ActivityUserID]
  ON [dbo].[CstRecipe] ([UserFK])
  WITH (FILLFACTOR = 90)
  ON [PRIMARY]
GO